import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/question.dart';
import '../../../data/questions.dart';
import '../../../data/questions_admin_new.dart';
import 'dart:math';
import 'exam_timer_provider.dart';

class ExamState {
  final List<Question> questions;
  final int currentIndex;
  final Map<int, int> answers; // {questionIndex: selectedOptionIndex}
  final Set<int> markedQuestions; // Indices of questions marked for review
  final bool isFinished;
  final bool isFullSimulation;

  ExamState({
    required this.questions,
    this.currentIndex = 0,
    this.answers = const {},
    this.markedQuestions = const {},
    this.isFinished = false,
    this.isFullSimulation = false,
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
    bool? isFullSimulation,
  }) {
    return ExamState(
      questions: questions ?? this.questions,
      currentIndex: currentIndex ?? this.currentIndex,
      answers: answers ?? this.answers,
      markedQuestions: markedQuestions ?? this.markedQuestions,
      isFinished: isFinished ?? this.isFinished,
      isFullSimulation: isFullSimulation ?? this.isFullSimulation,
    );
  }
}

class ExamNotifier extends StateNotifier<ExamState> {
  final Ref ref;
  ExamNotifier(this.ref) : super(ExamState(questions: []));

  void generateExam({String career = 'Sistemas / TI'}) {
    final random = Random.secure();
    
    // 1. Obtener todas las preguntas disponibles para la carrera (Combinando bancos)
    final combinedBank = [...allQuestions, ...adminQuestions];
    
    List<Question> available;
    if (career == 'Sistemas / TI') {
      final categories = ['Bases de Datos', 'Programación', 'Redes y Seguridad', 'Software'];
      available = combinedBank.where((q) => categories.contains(q.category)).toList();
    } else {
      available = combinedBank.where((q) => q.category == career).toList();
    }
    
    print('DEBUG: Career: $career, Available: ${available.length}');

    // 2. Determinar capacidad y modo
    final total = 120; // SIEMPRE forzar a 120 para mantener la estructura EGEL
    final isFullSimulation = true;

    // 3. Separar por pools de dificultad
    final pEasy = available.where((q) => q.difficulty == 'easy').toList();
    final pMedium = available.where((q) => q.difficulty == 'medium').toList();
    final pHard = available.where((q) => q.difficulty == 'hard').toList();
    final pHigh = available.where((q) => q.difficulty == 'high').toList();

    // Función auxiliar para rellenar un pool hasta cierto tamaño (reciclando si es necesario)
    List<Question> _padPool(List<Question> pool, int targetSize) {
      if (pool.isEmpty) return [];
      final padded = List<Question>.from(pool)..shuffle(random);
      int i = 0;
      while (padded.length < targetSize) {
        padded.add(pool[i % pool.length]);
        i++;
      }
      return padded;
    }

    // 4. Distribuir reactivos equilibradamente (Estándar EGEL: 30, 40, 30, 20)
    final easyTarget = 30;
    final mediumTarget = 40;
    final hardTarget = 30;
    final highTarget = 20;

    // Expandimos los pools asegurando que tengan la cantidad requerida. 
    // Si un nivel está vacío, usamos todo el banco disponible como fallback.
    final expandedEasy = _padPool(pEasy.isNotEmpty ? pEasy : available, easyTarget);
    final expandedMedium = _padPool(pMedium.isNotEmpty ? pMedium : available, mediumTarget);
    final expandedHard = _padPool(pHard.isNotEmpty ? pHard : available, hardTarget);
    final expandedHigh = _padPool(pHigh.isNotEmpty ? pHigh : available, highTarget);

    // 5. Generar Segmentos de Dificultad Progresiva
    final s1Questions = expandedEasy.take(easyTarget).toList()..shuffle(random);
    final s2Questions = expandedMedium.take(mediumTarget).toList()..shuffle(random);
    final s3Questions = expandedHard.take(hardTarget).toList()..shuffle(random);
    final s4Questions = expandedHigh.take(highTarget).toList()..shuffle(random);

    // 6. Consolidar (Sin deduplicar para permitir reciclaje y garantizar los 120 reactivos)
    final finalQuestions = [...s1Questions, ...s2Questions, ...s3Questions, ...s4Questions];

    state = ExamState(
      questions: finalQuestions,
      currentIndex: 0,
      answers: {},
      markedQuestions: {},
      isFinished: false,
      isFullSimulation: isFullSimulation,
    );

    // Reiniciar el temporizador según el nuevo set de preguntas
    ref.read(examTimerProvider.notifier).reset();
  }

  // Se mantiene por compatibilidad aunque no se use en esta versión de generateExam
  List<Question> _safePick(List<Question> pool, int count, List<List<Question>> fallbacks, Random random) {
    final picked = <Question>[];
    final shuffledPool = List<Question>.from(pool)..shuffle(random);
    
    picked.addAll(shuffledPool.take(min(shuffledPool.length, count)));
    
    int i = 0;
    while (picked.length < count && i < fallbacks.length) {
      final fallback = List<Question>.from(fallbacks[i])..shuffle(random);
      final remaining = count - picked.length;
      final filtered = fallback.where((q) => !picked.any((p) => p.id == q.id)).toList();
      picked.addAll(filtered.take(min(filtered.length, remaining)));
      i++;
    }
    return picked;
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
  return ExamNotifier(ref);
});
