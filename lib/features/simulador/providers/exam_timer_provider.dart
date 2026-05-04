import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'exam_provider.dart';

class TimerState {
  final int remainingSeconds;
  final bool isRunning;

  TimerState({required this.remainingSeconds, this.isRunning = false});
}

class ExamTimerNotifier extends StateNotifier<TimerState> {
  Timer? _timer;
  final Ref ref;

  ExamTimerNotifier(this.ref) : super(TimerState(remainingSeconds: 120 * 60));

  void start() {
    if (state.isRunning) return;
    state = TimerState(remainingSeconds: state.remainingSeconds, isRunning: true);
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (state.remainingSeconds > 0) {
        state = TimerState(remainingSeconds: state.remainingSeconds - 1, isRunning: true);
      } else {
        stop();
        ref.read(examProvider.notifier).finishExam();
      }
    });
  }

  void stop() {
    _timer?.cancel();
    state = TimerState(remainingSeconds: state.remainingSeconds, isRunning: false);
  }

  void reset() {
    stop();
    final questions = ref.read(examProvider).questions;
    final isFull = questions.length >= 100;
    // Estándar EGEL: 120 min para simulador completo, 1 min por pregunta para práctica
    final seconds = isFull ? 120 * 60 : questions.length * 60;
    state = TimerState(remainingSeconds: seconds);
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}

final examTimerProvider = StateNotifierProvider<ExamTimerNotifier, TimerState>((ref) {
  return ExamTimerNotifier(ref);
});
