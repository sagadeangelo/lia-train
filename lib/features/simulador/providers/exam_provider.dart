import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/question.dart';
import '../../../data/questions.dart';
import 'dart:math';

class ExamState {
  final List<Question> questions;
  final int currentIndex;
  final Map<int, int> answers; // {questionIndex: selectedOptionIndex}
  final Set<int> markedQuestions; // Indices of questions marked for review
  final bool isFinished;

  ExamState({
    required this.questions,
    this.currentIndex = 0,
    this.answers = const {},
    this.markedQuestions = const {},
    this.isFinished = false,
  });

  Question get currentQuestion => questions[currentIndex];

  int get score {
    int total = 0;
    answers.forEach((index, selected) {
      if (questions[index].correctIndex == selected) {
        total++;
      }
    });
    return total;
  }

  Map<String, double> get performanceByArea {
    final Map<String, int> correctByArea = {};
    final Map<String, int> totalByArea = {};

    for (int i = 0; i < questions.length; i++) {
      final q = questions[i];
      totalByArea[q.category] = (totalByArea[q.category] ?? 0) + 1;
      if (answers[i] == q.correctIndex) {
        correctByArea[q.category] = (correctByArea[q.category] ?? 0) + 1;
      }
    }

    return totalByArea.map((category, total) {
      final correct = correctByArea[category] ?? 0;
      return MapEntry(category, (correct / total) * 100);
    });
  }

  ExamState copyWith({
    List<Question>? questions,
    int? currentIndex,
    Map<int, int>? answers,
    Set<int>? markedQuestions,
    bool? isFinished,
  }) {
    return ExamState(
      questions: questions ?? this.questions,
      currentIndex: currentIndex ?? this.currentIndex,
      answers: answers ?? this.answers,
      markedQuestions: markedQuestions ?? this.markedQuestions,
      isFinished: isFinished ?? this.isFinished,
    );
  }
}

class ExamNotifier extends StateNotifier<ExamState> {
  ExamNotifier() : super(ExamState(questions: [])) {
    // La generación inicial por defecto es Sistemas
    generateExam();
  }

  void generateExam({String career = 'Sistemas / TI'}) {
    final random = Random();
    List<Question> selectedQuestions = [];

    if (career == 'Administración') {
      final adminQuestions = allQuestions.where((q) => q.category == 'Administración').toList();
      adminQuestions.shuffle(random);
      // Tomamos 40 preguntas de Administración para igualar a Sistemas
      selectedQuestions = adminQuestions.take(40).toList();
    } else if (career == 'Derecho') {
      final lawQuestions = allQuestions.where((q) => q.category == 'Derecho').toList();
      lawQuestions.shuffle(random);
      // Tomamos 40 preguntas de Derecho para el simulador EGEL
      selectedQuestions = lawQuestions.take(40).toList();
    } else if (career == 'Contaduría') {
      final accQuestions = allQuestions.where((q) => q.category == 'Contaduría').toList();
      accQuestions.shuffle(random);
      // Tomamos 40 preguntas de Contaduría para el simulador EGEL
      selectedQuestions = accQuestions.take(40).toList();
    } else if (career == 'Ingeniería Industrial') {
      final indQuestions = allQuestions.where((q) => q.category == 'Ingeniería Industrial').toList();
      indQuestions.shuffle(random);
      // Tomamos 40 preguntas de Ing. Industrial para el simulador EGEL
      selectedQuestions = indQuestions.take(40).toList();
    } else if (career == 'Psicología') {
      final psiQuestions = allQuestions.where((q) => q.category == 'Psicología').toList();
      psiQuestions.shuffle(random);
      // Tomamos 40 preguntas de Psicología para el simulador EGEL
      selectedQuestions = psiQuestions.take(40).toList();
    } else if (career == 'Enfermería') {
      final enfQuestions = allQuestions.where((q) => q.category == 'Enfermería').toList();
      enfQuestions.shuffle(random);
      // Tomamos 40 preguntas de Enfermería para el simulador EGEL
      selectedQuestions = enfQuestions.take(40).toList();
    } else {
      // Categorías objetivo para Sistemas / TI
      final categories = ['Bases de Datos', 'Programación', 'Redes y Seguridad', 'Software'];
      for (var cat in categories) {
        final catQuestions = allQuestions.where((q) => q.category == cat).toList();
        catQuestions.shuffle(random);
        // Tomar exactamente 10 de cada una para un total de 40
        selectedQuestions.addAll(catQuestions.take(10));
      }
    }

    selectedQuestions.shuffle(random);
    state = ExamState(
      questions: selectedQuestions,
      currentIndex: 0,
      answers: {},
      markedQuestions: {},
      isFinished: false,
    );
  }

  void selectAnswer(int optionIndex) {
    final newAnswers = Map<int, int>.from(state.answers);
    newAnswers[state.currentIndex] = optionIndex;
    state = state.copyWith(answers: newAnswers);
  }

  void nextQuestion() {
    if (state.currentIndex < state.questions.length - 1) {
      state = state.copyWith(currentIndex: state.currentIndex + 1);
    } else {
      finishExam();
    }
  }

  void previousQuestion() {
    if (state.currentIndex > 0) {
      state = state.copyWith(currentIndex: state.currentIndex - 1);
    }
  }

  void goToQuestion(int index) {
    if (index >= 0 && index < state.questions.length) {
      state = state.copyWith(currentIndex: index);
    }
  }

  void toggleMarkQuestion() {
    final newMarked = Set<int>.from(state.markedQuestions);
    if (newMarked.contains(state.currentIndex)) {
      newMarked.remove(state.currentIndex);
    } else {
      newMarked.add(state.currentIndex);
    }
    state = state.copyWith(markedQuestions: newMarked);
  }

  void finishExam() {
    state = state.copyWith(isFinished: true);
  }

  void resetExam() {
    // Por ahora el reset usa la última configuración, pero por defecto Sistemas
    generateExam();
  }
}

final examProvider = StateNotifierProvider<ExamNotifier, ExamState>((ref) {
  return ExamNotifier();
});
