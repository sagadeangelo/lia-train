import 'question.dart';

enum QuizStatus { initial, loading, inProgress, completed, error }

class QuizState {
  final List<Question> questions;
  final int currentIndex;
  final Map<int, int> selectedAnswers; // questionIndex -> selectedOptionIndex
  final QuizStatus status;
  final String? errorMessage;
  final int timeRemaining; // in seconds

  const QuizState({
    this.questions = const [],
    this.currentIndex = 0,
    this.selectedAnswers = const {},
    this.status = QuizStatus.initial,
    this.errorMessage,
    this.timeRemaining = 0,
  });

  bool get isLastQuestion => currentIndex == questions.length - 1;
  int get score => selectedAnswers.entries
      .where((entry) => questions[entry.key].correctIndex == entry.value)
      .length;

  QuizState copyWith({
    List<Question>? questions,
    int? currentIndex,
    Map<int, int>? selectedAnswers,
    QuizStatus? status,
    String? errorMessage,
    int? timeRemaining,
  }) {
    return QuizState(
      questions: questions ?? this.questions,
      currentIndex: currentIndex ?? this.currentIndex,
      selectedAnswers: selectedAnswers ?? this.selectedAnswers,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      timeRemaining: timeRemaining ?? this.timeRemaining,
    );
  }
}
