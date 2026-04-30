import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../providers/demo_provider.dart';
import '../../simulador/widgets/answer_option.dart';
import '../../simulador/widgets/question_card.dart';
import '../../../core/constants/app_colors.dart';
import '../../home/home_page.dart';
import '../../simulador/pages/pre_exam_page.dart';
import '../../practica/pages/practica_page.dart';

class DemoExamPage extends ConsumerWidget {
  const DemoExamPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(demoProvider);

    if (state.isFinished) {
      return const DemoResultPage();
    }

    if (state.questions.isEmpty) {
      return Scaffold(
        backgroundColor: AppColors.background,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.bolt, color: AppColors.accent, size: 80),
              const SizedBox(height: 24),
              const Text(
                'Simulación Rápida',
                style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Descubre tu nivel en menos de 1 minuto',
                style: TextStyle(color: AppColors.textSecondary, fontSize: 16),
              ),
              const SizedBox(height: 48),
              SizedBox(
                width: 200,
                height: 56,
                child: ElevatedButton(
                  onPressed: () => ref.read(demoProvider.notifier).startDemo(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.accent,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                  child: const Text('Comenzar', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Tal vez luego', style: TextStyle(color: Colors.grey)),
              ),
            ],
          ),
        ),
      );
    }

    final question = state.currentQuestion;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: LinearProgressIndicator(
          value: (state.currentIndex + 1) / state.questions.length,
          backgroundColor: Colors.white10,
          valueColor: const AlwaysStoppedAnimation<Color>(AppColors.accent),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            QuestionCard(text: question.text, category: question.category),
            const SizedBox(height: 32),
            Expanded(
              child: ListView.builder(
                itemCount: question.options.length,
                itemBuilder: (context, index) {
                  return AnswerOption(
                    text: question.options[index],
                    index: index,
                    isSelected: state.answers[state.currentIndex] == index,
                    isAnswered: false,
                    isCorrect: false,
                    onTap: () => ref.read(demoProvider.notifier).selectAnswer(index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DemoResultPage extends ConsumerWidget {
  const DemoResultPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(demoProvider);
    final percentage = state.percentage;

    String message = "";
    Color color = AppColors.error;
    IconData icon = Icons.sentiment_dissatisfied;

    if (percentage >= 80) {
      message = "¡Excelente! Tienes muy buen nivel.";
      color = AppColors.success;
      icon = Icons.emoji_events;
    } else if (percentage >= 60) {
      message = "Estás cerca de aprobar. ¡Sigue así!";
      color = AppColors.accent;
      icon = Icons.trending_up;
    } else {
      message = "Hoy no pasarías el examen real.";
      color = AppColors.error;
      icon = Icons.warning_amber_rounded;
    }

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: color, size: 100),
              const SizedBox(height: 24),
              Text(
                '${percentage.toStringAsFixed(0)}%',
                style: TextStyle(color: color, fontSize: 72, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text(
                message,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 48),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    ref.read(demoProvider.notifier).reset();
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const PreExamPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  ),
                  child: const Text('Simulador Completo', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: OutlinedButton(
                  onPressed: () {
                    ref.read(demoProvider.notifier).reset();
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const PracticaPage()));
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.white24),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  ),
                  child: const Text('Practicar áreas débiles', style: TextStyle(fontSize: 18, color: Colors.white70)),
                ),
              ),
              const SizedBox(height: 32),
              TextButton(
                onPressed: () {
                  ref.read(demoProvider.notifier).reset();
                  context.go('/');
                },
                child: const Text('Volver al inicio', style: TextStyle(color: Colors.grey)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
