import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/question.dart';
import '../../../data/questions.dart';

class CategoryStats {
  final int total;
  final int correct;
  final double percentage;

  CategoryStats({required this.total, required this.correct, required this.percentage});
}

class QuizState {
  final int currentIndex;
  final Map<int, int> selectedAnswers;
  final bool isCompleted;

  QuizState({
    this.currentIndex = 0,
    this.selectedAnswers = const {},
    this.isCompleted = false,
  });

  Question get currentQuestion => allQuestions[currentIndex];
  int? get selectedAnswer => selectedAnswers[currentIndex];
  bool get isAnswered => selectedAnswers.containsKey(currentIndex);
  
  int get score {
    int count = 0;
    selectedAnswers.forEach((index, selected) {
      if (allQuestions[index].correctIndex == selected) {
        count++;
      }
    });
    return count;
  }

  // --- ANALYTICS LOGIC (PHASE 2.5) ---

  Map<String, CategoryStats> get categoryBreakdown {
    final Map<String, int> totalPerCategory = {};
    final Map<String, int> correctPerCategory = {};

    for (int i = 0; i < allQuestions.length; i++) {
      final category = allQuestions[i].category;
      totalPerCategory[category] = (totalPerCategory[category] ?? 0) + 1;

      if (selectedAnswers.containsKey(i) && selectedAnswers[i] == allQuestions[i].correctIndex) {
        correctPerCategory[category] = (correctPerCategory[category] ?? 0) + 1;
      }
    }

    return totalPerCategory.map((category, total) {
      final correct = correctPerCategory[category] ?? 0;
      return MapEntry(
        category,
        CategoryStats(
          total: total,
          correct: correct,
          percentage: (correct / total) * 100,
        ),
      );
    });
  }

  String get strongestCategory {
    if (categoryBreakdown.isEmpty) return 'N/A';
    return categoryBreakdown.entries
        .reduce((a, b) => a.value.percentage >= b.value.percentage ? a : b)
        .key;
  }

  String get weakestCategory {
    if (categoryBreakdown.isEmpty) return 'N/A';
    return categoryBreakdown.entries
        .reduce((a, b) => a.value.percentage <= b.value.percentage ? a : b)
        .key;
  }

  String get recommendationMessage {
    if (categoryBreakdown.isEmpty) return '';
    
    final weakest = weakestCategory;
    final stats = categoryBreakdown[weakest]!;
    
    if (stats.percentage < 60) {
      return "Enfócate en $weakest, es tu área más débil y requiere refuerzo inmediato.";
    } else if (score / allQuestions.length < 0.8) {
      return "Buen desempeño general, pero refuerza $weakest para mejorar tu puntaje global.";
    } else {
      return "¡Excelente nivel! Sigue repasando $weakest para mantener la perfección.";
    }
  }

  // -----------------------------------

  QuizState copyWith({
    int? currentIndex,
    Map<int, int>? selectedAnswers,
    bool? isCompleted,
  }) {
    return QuizState(
      currentIndex: currentIndex ?? this.currentIndex,
      selectedAnswers: selectedAnswers ?? this.selectedAnswers,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}

class QuizNotifier extends StateNotifier<QuizState> {
  QuizNotifier() : super(QuizState());

  void selectAnswer(int answerIndex) {
    if (state.isAnswered) return;

    final newAnswers = Map<int, int>.from(state.selectedAnswers);
    newAnswers[state.currentIndex] = answerIndex;
    state = state.copyWith(selectedAnswers: newAnswers);
  }

  void nextQuestion() {
    if (state.currentIndex < allQuestions.length - 1) {
      state = state.copyWith(currentIndex: state.currentIndex + 1);
    } else {
      state = state.copyWith(isCompleted: true);
    }
  }

  void resetQuiz() {
    state = QuizState();
  }
}

final quizProvider = StateNotifierProvider<QuizNotifier, QuizState>((ref) {
  return QuizNotifier();
});
