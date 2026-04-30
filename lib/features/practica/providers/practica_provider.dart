import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/question.dart';
import '../../../data/questions.dart';

class PracticaState {
  final List<Question> filteredQuestions;
  final int currentIndex;
  final Map<int, int> selectedAnswers; // Index in filtered list -> answer
  final String? selectedCategory;
  final bool showFeedback;
  final bool isFallbackCategory;

  PracticaState({
    this.filteredQuestions = const [],
    this.currentIndex = 0,
    this.selectedAnswers = const {},
    this.selectedCategory,
    this.showFeedback = false,
    this.isFallbackCategory = false,
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
    bool? isFallbackCategory,
  }) {
    return PracticaState(
      filteredQuestions: filteredQuestions ?? this.filteredQuestions,
      currentIndex: currentIndex ?? this.currentIndex,
      selectedAnswers: selectedAnswers ?? this.selectedAnswers,
      selectedCategory: selectedCategory ?? this.selectedCategory,
      showFeedback: showFeedback ?? this.showFeedback,
      isFallbackCategory: isFallbackCategory ?? this.isFallbackCategory,
    );
  }
}

class PracticaNotifier extends StateNotifier<PracticaState> {
  PracticaNotifier() : super(PracticaState());

  String _normalize(String value) {
    return value.toLowerCase().replaceAll(' ', '').trim();
  }

  static const Map<String, String> categoryMap = {
    'redes': 'Redes y Seguridad',
    'seguridad': 'Redes y Seguridad',
    'ing.desoftware': 'Software',
    'basesdedatos': 'Bases de Datos',
    'programación': 'Programación',
    // Nombres exactos como llaves normalizadas
    'redesyseguridad': 'Redes y Seguridad',
    'software': 'Software',
  };

  void initCategory(String? category) {
    if (category == null) {
      state = PracticaState(
        filteredQuestions: List<Question>.from(allQuestions),
        selectedCategory: null,
      );
      return;
    }

    final normalizedCategory = _normalize(category);
    final mappedCategory = categoryMap[normalizedCategory] ?? category;

    print('Categoría seleccionada: $category');
    print('Categoría mapeada: $mappedCategory');

    var filtered = allQuestions.where((q) {
      return _normalize(q.category) == _normalize(mappedCategory);
    }).toList();

    var isFallback = false;
    if (filtered.isEmpty) {
      print('⚠️ No questions found for category: $mappedCategory');
      filtered = allQuestions.take(10).toList();
      isFallback = true;
    }

    print('Preguntas encontradas: ${filtered.length}');
    
    state = PracticaState(
      filteredQuestions: filtered,
      selectedCategory: category,
      isFallbackCategory: isFallback,
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
