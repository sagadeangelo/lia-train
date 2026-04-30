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

  ExamTimerNotifier(this.ref) : super(TimerState(remainingSeconds: 40 * 60));

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
    state = TimerState(remainingSeconds: 40 * 60);
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
