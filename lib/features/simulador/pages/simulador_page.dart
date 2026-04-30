import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/exam_provider.dart';
import '../providers/exam_timer_provider.dart';
import '../providers/focus_provider.dart';
import '../widgets/exam_header.dart';
import '../widgets/question_card.dart';
import '../widgets/answer_option.dart';
import '../../resultados/resultados_page.dart';
import '../../home/home_page.dart';
import '../../../../core/constants/app_colors.dart';

class SimuladorPage extends ConsumerStatefulWidget {
  const SimuladorPage({super.key});

  @override
  ConsumerState<SimuladorPage> createState() => _SimuladorPageState();
}

class _SimuladorPageState extends ConsumerState<SimuladorPage> {
  bool _isNavigating = false;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(examTimerProvider.notifier).start();
    });
  }

  String _formatTime(int seconds) {
    final m = (seconds ~/ 60).toString().padLeft(2, '0');
    final s = (seconds % 60).toString().padLeft(2, '0');
    return "$m:$s";
  }

  @override
  Widget build(BuildContext context) {
    // Escuchar el estado de finalización para navegar de forma segura
    ref.listen(examProvider.select((s) => s.isFinished), (previous, next) {
      if (next && !_isNavigating) {
        _isNavigating = true;
        _finishExamAndNavigate();
      }
    });

    final exam = ref.watch(examProvider);
    final timer = ref.watch(examTimerProvider);
    final isDesktop = MediaQuery.of(context).size.width > 900;

    if (exam.questions.isEmpty) return const Scaffold(body: Center(child: CircularProgressIndicator()));

    final question = exam.currentQuestion;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: ExamHeader(
        timerText: _formatTime(timer.remainingSeconds),
        progressText: "Puntaje: --",
        onBack: () => _confirmExit(context),
      ),
      drawer: isDesktop ? null : Drawer(child: _buildNavigationPanel(exam, ref)),      body: Column(
        children: [
          LinearProgressIndicator(
            value: (exam.currentIndex + 1) / exam.questions.length,
            backgroundColor: AppColors.primary.withOpacity(0.1),
            valueColor: AlwaysStoppedAnimation<Color>(
              timer.remainingSeconds < 300 ? AppColors.error : AppColors.accent,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                // Área de Pregunta Principal
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0),
                          child: Center(
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 800),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Pregunta ${exam.currentIndex + 1} de ${exam.questions.length}',
                                        style: const TextStyle(color: AppColors.textSecondary, fontWeight: FontWeight.bold),
                                      ),
                                      _buildMarkButton(exam, ref),
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  QuestionCard(
                                    text: question.text,
                                    category: question.category,
                                  ),
                                  const SizedBox(height: 24),
                                  ...List.generate(question.options.length, (index) {
                                    return AnswerOption(
                                      text: question.options[index],
                                      index: index,
                                      isSelected: exam.answers[exam.currentIndex] == index,
                                      isAnswered: false,
                                      isCorrect: false,
                                      onTap: () {
                                        ref.read(examProvider.notifier).selectAnswer(index);
                                      },
                                    );
                                  }),
                                  const SizedBox(height: 20),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Barra de navegación persistente de la pregunta
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                        decoration: BoxDecoration(
                          color: AppColors.background,
                          border: Border(top: BorderSide(color: Colors.white.withOpacity(0.05))),
                        ),
                        child: Center(
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 800),
                            child: _buildNavigationButtons(exam, ref),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Panel de Navegación Lateral (Solo Desktop)
                if (isDesktop)
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: AppColors.secondary,
                      border: Border(left: BorderSide(color: Colors.white.withOpacity(0.05))),
                    ),
                    child: _buildNavigationPanel(exam, ref),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  void _finishExamAndNavigate() {
    ref.read(examTimerProvider.notifier).stop();
    ref.read(focusProvider.notifier).stop();
    
    // Navegación limpia
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => const ResultadosPage()),
      (route) => false, // Limpiar el stack para evitar rebuilds de SimuladorPage
    );
  }

  Widget _buildMarkButton(ExamState exam, WidgetRef ref) {
    final isMarked = exam.markedQuestions.contains(exam.currentIndex);
    return TextButton.icon(
      onPressed: () => ref.read(examProvider.notifier).toggleMarkQuestion(),
      icon: Icon(
        isMarked ? Icons.star : Icons.star_border,
        color: isMarked ? AppColors.warning : AppColors.textSecondary,
      ),
      label: Text(
        'Marcar para revisar',
        style: TextStyle(
          color: isMarked ? AppColors.warning : AppColors.textSecondary,
          fontWeight: isMarked ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }

  Widget _buildNavigationPanel(ExamState exam, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Navegación del Examen',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              ),
              itemCount: exam.questions.length,
              itemBuilder: (context, index) {
                final isCurrent = exam.currentIndex == index;
                final isAnswered = exam.answers.containsKey(index);
                final isMarked = exam.markedQuestions.contains(index);
                
                Color bgColor = Colors.white.withOpacity(0.05);
                Color borderColor = Colors.white.withOpacity(0.1);

                if (isCurrent) {
                  bgColor = AppColors.accent;
                  borderColor = AppColors.accent;
                } else if (isMarked) {
                  bgColor = AppColors.warning.withOpacity(0.2);
                  borderColor = AppColors.warning;
                } else if (isAnswered) {
                  bgColor = AppColors.success.withOpacity(0.2);
                  borderColor = AppColors.success;
                }

                return InkWell(
                  onTap: () => ref.read(examProvider.notifier).goToQuestion(index),
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: bgColor,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: borderColor, width: isCurrent ? 2 : 1),
                    ),
                    child: Center(
                      child: Text(
                        '${index + 1}',
                        style: TextStyle(
                          color: isCurrent || isAnswered || isMarked ? Colors.white : Colors.white70,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 24),
          _buildLegend(),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () => _confirmFinish(context, ref),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.error.withOpacity(0.1),
                side: const BorderSide(color: AppColors.error),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              child: const Text('Finalizar Examen', style: TextStyle(color: AppColors.error, fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLegend() {
    return Column(
      children: [
        _legendItem(AppColors.accent, 'Actual'),
        const SizedBox(height: 8),
        _legendItem(AppColors.success, 'Respondida'),
        const SizedBox(height: 8),
        _legendItem(AppColors.warning, 'Marcada'),
        const SizedBox(height: 8),
        _legendItem(Colors.white10, 'Pendiente'),
      ],
    );
  }

  Widget _legendItem(Color color, String label) {
    return Row(
      children: [
        Container(width: 12, height: 12, decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(3))),
        const SizedBox(width: 8),
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 12)),
      ],
    );
  }

  Widget _buildNavigationButtons(ExamState exam, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OutlinedButton.icon(
          onPressed: exam.currentIndex > 0 
            ? () => ref.read(examProvider.notifier).previousQuestion() 
            : null,
          icon: const Icon(Icons.arrow_back),
          label: const Text('Anterior'),
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
        ElevatedButton(
          onPressed: () => ref.read(examProvider.notifier).nextQuestion(),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          child: Row(
            children: [
              Text(exam.currentIndex < exam.questions.length - 1 ? 'Siguiente' : 'Finalizar'),
              const SizedBox(width: 8),
              const Icon(Icons.arrow_forward, size: 18),
            ],
          ),
        ),
      ],
    );
  }

  void _confirmExit(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('¿Salir del examen?'),
        content: const Text('Perderás tu progreso actual. Esta acción no se puede deshacer.'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancelar')),
          TextButton(
            onPressed: () {
              ref.read(examTimerProvider.notifier).stop();
              ref.read(focusProvider.notifier).stop();
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (_) => const HomePage()),
                (route) => false,
              );
            },
            child: const Text('Salir', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }

  void _confirmFinish(BuildContext context, WidgetRef ref) {
    final unanswered = ref.read(examProvider).questions.length - ref.read(examProvider).answers.length;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('¿Estás seguro?'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (unanswered > 0)
              Text(
                'Tienes $unanswered preguntas sin responder.',
                style: const TextStyle(color: AppColors.error, fontWeight: FontWeight.bold),
              ),
            const SizedBox(height: 8),
            const Text('Una vez finalizado el examen, no podrás cambiar tus respuestas.'),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Volver')),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ref.read(examProvider.notifier).finishExam();
            },
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary),
            child: const Text('Finalizar y entregar', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}