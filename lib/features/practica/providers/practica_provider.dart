import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/question.dart';
import '../../../data/questions.dart';

class PracticaState {
  final List<Question> filteredQuestions;
  final int currentIndex;
  final Map<int, int> selectedAnswers; // Index in filtered list -> answer
  final String? selectedCategory;
  final bool showFeedback;

  PracticaState({
    this.filteredQuestions = const [],
    this.currentIndex = 0,
    this.selectedAnswers = const {},
    this.selectedCategory,
    this.showFeedback = false,
  });

  Question get currentQuestion => filteredQuestions[currentIndex];
  int? get selectedAnswer => selectedAnswers[currentIndex];
  bool get isAnswered => selectedAnswers.containsKey(currentIndex);
  bool get isCorrect => isAnswered && currentQuestion.correctIndex == selectedAnswer;

  PracticaState copyWith({
    List<Question>? filteredQuestions,
    int? currentIndex,
    Map<int, int>? selectedAnswers,
    String? selectedCategory,
    bool? showFeedback,
  }) {
    return PracticaState(
      filteredQuestions: filteredQuestions ?? this.filteredQuestions,
      currentIndex: currentIndex ?? this.currentIndex,
      selectedAnswers: selectedAnswers ?? this.selectedAnswers,
      selectedCategory: selectedCategory ?? this.selectedCategory,
      showFeedback: showFeedback ?? this.showFeedback,
    );
  }
}

class PracticaNotifier extends StateNotifier<PracticaState> {
  PracticaNotifier() : super(PracticaState());

  void initCategory(String? category) {
    final filtered = category == null 
        ? List<Question>.from(allQuestions)
        : allQuestions.where((q) => q.category == category).toList();
    
    state = PracticaState(
      filteredQuestions: filtered,
      selectedCategory: category,
    );
  }

  void selectAnswer(int answerIndex) {
    final newAnswers = Map<int, int>.from(state.selectedAnswers);
    newAnswers[state.currentIndex] = answerIndex;
    state = state.copyWith(
      selectedAnswers: newAnswers,
      showFeedback: true,
    );
  }

  void nextQuestion() {
    if (state.currentIndex < state.filteredQuestions.length - 1) {
      state = state.copyWith(
        currentIndex: state.currentIndex + 1,
        showFeedback: false,
      );
    }
  }

  void retryQuestion() {
    final newAnswers = Map<int, int>.from(state.selectedAnswers);
    newAnswers.remove(state.currentIndex);
    state = state.copyWith(
      selectedAnswers: newAnswers,
      showFeedback: false,
    );
  }

  void reset() {
    state = PracticaState();
  }
}

final practicaProvider = StateNotifierProvider<PracticaNotifier, PracticaState>((ref) {
  return PracticaNotifier();
});
