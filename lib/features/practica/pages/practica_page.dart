import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/practica_provider.dart';
import '../../../data/questions.dart';
import '../../../core/constants/app_colors.dart';
import '../../simulador/widgets/question_card.dart';
import '../../simulador/widgets/answer_option.dart';
import '../../home/home_page.dart';

class PracticaPage extends ConsumerStatefulWidget {
  const PracticaPage({super.key});

  @override
  ConsumerState<PracticaPage> createState() => _PracticaPageState();
}

class _PracticaPageState extends ConsumerState<PracticaPage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(practicaProvider);

    if (state.filteredQuestions.isEmpty) {
      if (state.selectedCategory == null) {
        return _buildCategorySelection();
      } else {
        return Scaffold(
          backgroundColor: AppColors.background,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircularProgressIndicator(color: AppColors.accent),
                const SizedBox(height: 16),
                const Text(
                  "Estamos preparando tu simulación...",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    ref.read(practicaProvider.notifier).reset();
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (_) => const HomePage()),
                      (route) => false,
                    );
                  },
                  child: const Text('Volver al inicio', style: TextStyle(color: Colors.grey)),
                )
              ],
            ),
          ),
        );
      }
    }

    return _buildQuestionView(state);
  }

  Widget _buildCategorySelection() {
    final categories = allQuestions.map((q) => q.category).toSet().toList();

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Entrenamiento por Área', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: AppColors.primary,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (_) => const HomePage()),
            (route) => false,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const Text(
            'Elige un área para fortalecer:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 8),
          const Text(
            'En este modo verás la respuesta correcta al instante.',
            style: TextStyle(fontSize: 14, color: AppColors.textSecondary),
          ),
          const SizedBox(height: 32),
          ...categories.map((cat) => _buildCategoryCard(cat, false)),
          const SizedBox(height: 8),
          _buildCategoryCard('Todas las áreas', true),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(String title, bool isAll) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: isAll ? AppColors.accent.withOpacity(0.1) : Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isAll ? AppColors.accent : Colors.white.withOpacity(0.1),
          width: 1,
        ),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: isAll ? FontWeight.bold : FontWeight.normal,
            fontSize: 18,
          ),
        ),
        trailing: Icon(
          isAll ? Icons.auto_awesome : Icons.chevron_right,
          color: isAll ? AppColors.accent : Colors.white54,
        ),
        onTap: () {
          ref.read(practicaProvider.notifier).initCategory(isAll ? null : title);
        },
      ),
    );
  }

  Widget _buildQuestionView(PracticaState state) {
    final question = state.currentQuestion;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text('Práctica: ${state.selectedCategory ?? "Mix"}', style: const TextStyle(color: Colors.white, fontSize: 18)),
        backgroundColor: AppColors.primary,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.white),
          onPressed: () {
            ref.read(practicaProvider.notifier).reset();
          },
        ),
      ),
      body: Column(
        children: [
          LinearProgressIndicator(
            value: (state.currentIndex + 1) / state.filteredQuestions.length,
            backgroundColor: Colors.white.withOpacity(0.1),
            valueColor: const AlwaysStoppedAnimation<Color>(AppColors.accent),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 800),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (state.isFallbackCategory)
                        Container(
                          width: double.infinity,
                          margin: const EdgeInsets.only(bottom: 24),
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: AppColors.accent.withOpacity(0.5)),
                            boxShadow: [
                              BoxShadow(color: AppColors.accent.withOpacity(0.1), blurRadius: 10, spreadRadius: 2),
                            ],
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.info_outline, color: AppColors.accent, size: 20),
                                  SizedBox(width: 8),
                                  Text('Modo de compatibilidad', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                                ],
                              ),
                              SizedBox(height: 8),
                              Text(
                                'No encontramos suficientes preguntas específicas para esta área. Hemos cargado un set general para que puedas entrenar.',
                                style: TextStyle(color: AppColors.textSecondary, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      Text(
                        'Pregunta ${state.currentIndex + 1} de ${state.filteredQuestions.length}',
                        style: const TextStyle(color: AppColors.textSecondary, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      QuestionCard(
                        text: question.text,
                        category: question.category,
                      ),
                      const SizedBox(height: 32),
                      ...List.generate(question.options.length, (index) {
                        final isSelected = state.selectedAnswer == index;
                        final isCorrect = question.correctIndex == index;

                        return AnswerOption(
                          text: question.options[index],
                          index: index,
                          isSelected: isSelected,
                          isAnswered: state.showFeedback,
                          isCorrect: isCorrect,
                          onTap: () {
                            ref.read(practicaProvider.notifier).selectAnswer(index);
                          },
                        );
                      }),
                      const SizedBox(height: 40),
                      if (state.showFeedback) _buildFeedbackActions(state),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeedbackActions(PracticaState state) {
    return Row(
      children: [
        if (!state.isCorrect)
          Expanded(
            child: SizedBox(
              height: 56,
              child: OutlinedButton.icon(
                onPressed: () => ref.read(practicaProvider.notifier).retryQuestion(),
                icon: const Icon(Icons.refresh),
                label: const Text('Reintentar'),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: const BorderSide(color: Colors.white24),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
              ),
            ),
          ),
        if (!state.isCorrect) const SizedBox(width: 16),
        Expanded(
          child: SizedBox(
            height: 56,
            child: ElevatedButton.icon(
              onPressed: () {
                if (state.currentIndex < state.filteredQuestions.length - 1) {
                  ref.read(practicaProvider.notifier).nextQuestion();
                } else {
                  ref.read(practicaProvider.notifier).reset();
                }
              },
              icon: Icon(state.currentIndex < state.filteredQuestions.length - 1 ? Icons.arrow_forward : Icons.check_circle),
              label: Text(state.currentIndex < state.filteredQuestions.length - 1 
                  ? 'Siguiente' 
                  : 'Terminar Práctica'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
