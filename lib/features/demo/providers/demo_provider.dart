import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/question.dart';
import '../../../data/questions.dart';
import 'dart:math';

class DemoState {
  final List<Question> questions;
  final int currentIndex;
  final Map<int, int> answers;
  final bool isFinished;

  DemoState({
    required this.questions,
    this.currentIndex = 0,
    this.answers = const {},
    this.isFinished = false,
  });

  Question get currentQuestion => questions[currentIndex];

  double get percentage {
    if (questions.isEmpty) return 0;
    int correct = 0;
    answers.forEach((index, selected) {
      if (questions[index].correctIndex == selected) correct++;
    });
    return (correct / questions.length) * 100;
  }

  DemoState copyWith({
    List<Question>? questions,
    int? currentIndex,
    Map<int, int>? answers,
    bool? isFinished,
  }) {
    return DemoState(
      questions: questions ?? this.questions,
      currentIndex: currentIndex ?? this.currentIndex,
      answers: answers ?? this.answers,
      isFinished: isFinished ?? this.isFinished,
    );
  }
}

class DemoNotifier extends StateNotifier<DemoState> {
  DemoNotifier() : super(DemoState(questions: []));

  void startDemo() {
    final random = Random();
    final demoQuestions = List<Question>.from(allQuestions);
    demoQuestions.shuffle(random);
    
    // Tomar 5 preguntas variadas para que sea rápido
    state = DemoState(questions: demoQuestions.take(5).toList());
  }

  void selectAnswer(int optionIndex) {
    final newAnswers = Map<int, int>.from(state.answers);
    newAnswers[state.currentIndex] = optionIndex;
    state = state.copyWith(answers: newAnswers);
    
    // Auto-avanzar para máxima velocidad en la demo
    if (state.currentIndex < state.questions.length - 1) {
      Future.delayed(const Duration(milliseconds: 300), () {
        state = state.copyWith(currentIndex: state.currentIndex + 1);
      });
    } else {
      Future.delayed(const Duration(milliseconds: 300), () {
        state = state.copyWith(isFinished: true);
      });
    }
  }

  void reset() {
    state = DemoState(questions: []);
  }
}

final demoProvider = StateNotifierProvider<DemoNotifier, DemoState>((ref) {
  return DemoNotifier();
});
