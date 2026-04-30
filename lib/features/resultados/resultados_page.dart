import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../simulador/providers/exam_provider.dart';
import '../practica/providers/practica_provider.dart';
import '../simulador/pages/pre_exam_page.dart';
import '../simulador/pages/simulador_page.dart';
import '../practica/pages/practica_page.dart';
import '../home/home_page.dart';
import '../../../data/services/persistence_service.dart';
import '../../../core/constants/app_colors.dart';

class ResultadosPage extends ConsumerStatefulWidget {
  const ResultadosPage({super.key});

  @override
  ConsumerState<ResultadosPage> createState() => _ResultadosPageState();
}

class _ResultadosPageState extends ConsumerState<ResultadosPage> {
  final ScrollController _scrollController = ScrollController();
  bool _hasSaved = false;

  @override
  void initState() {
    super.initState();
    // Iniciar el guardado una sola vez al entrar
    Future.microtask(() {
      if (mounted && !_hasSaved) {
        _saveResults();
        _hasSaved = true;
      }
    });
    
    // Forzar scroll al inicio
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.jumpTo(0);
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _saveResults() async {
    try {
      final exam = ref.read(examProvider);
      if (exam.questions.isEmpty) return;

      final performance = exam.performanceByArea;
      String strongestArea = '';
      double maxScore = -1.0;
      String weakestArea = '';
      double minScore = 101.0;

      performance.forEach((area, score) {
        if (score > maxScore) {
          maxScore = score;
          strongestArea = area;
        }
        if (score < minScore) {
          minScore = score;
          weakestArea = area;
        }
      });

      await PersistenceService().saveResult(
        score: exam.score,
        total: exam.questions.length,
        strongest: strongestArea,
        weakest: weakestArea,
      );
      
      // Solo invalidamos el progreso si estamos montados para evitar fugas de memoria
      if (mounted) {
        ref.invalidate(progressProvider);
      }
    } catch (e) {
      debugPrint("Error al guardar resultados: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    // Usamos watch para que se mantenga actualizado, pero sin lógica de efectos secundarios aquí
    final exam = ref.watch(examProvider);
    
    if (exam.questions.isEmpty) {
      return const Scaffold(
        backgroundColor: AppColors.background,
        body: Center(child: CircularProgressIndicator()),
      );
    }

    final score = exam.score;
    final totalQuestions = exam.questions.length;
    final performance = exam.performanceByArea;
    final totalPercentage = (score / totalQuestions) * 100;

    String strongestArea = '';
    double maxScore = -1.0;
    String weakestArea = '';
    double minScore = 101.0;

    performance.forEach((area, score) {
      if (score > maxScore) {
        maxScore = score;
        strongestArea = area;
      }
      if (score < minScore) {
        minScore = score;
        weakestArea = area;
      }
    });

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          padding: const EdgeInsets.symmetric(vertical: 0),
          child: Column(
            children: [
              _buildHeader(totalPercentage, score, totalQuestions),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildInsightCard(
                      strongest: strongestArea,
                      weakest: weakestArea,
                      recommendation: _getRecommendation(totalPercentage, weakestArea),
                    ),
                    const SizedBox(height: 32),
                    const Text(
                      'Análisis por Categoría',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.textPrimary),
                    ),
                    const SizedBox(height: 16),
                    // Generar la lista de tiles
                    ...performance.entries.map((entry) => _buildAreaTile(entry.key, entry.value)),
                    const SizedBox(height: 40),
                    _buildMainCTAs(context, ref, totalPercentage, weakestArea),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(double percentage, int score, int total) {
    Color statusColor = percentage >= 80 ? AppColors.success : (percentage >= 60 ? AppColors.accent : AppColors.error);
    String statusLevel = percentage >= 80 ? "Dominado" : (percentage >= 60 ? "Intermedio" : "Crítico");
    IconData statusIcon = percentage >= 80 ? Icons.workspace_premium : (percentage >= 60 ? Icons.trending_up : Icons.warning_amber_rounded);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 48),
      color: AppColors.primary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.05),
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white.withOpacity(0.1), width: 2),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${percentage.toStringAsFixed(0)}%',
                  style: const TextStyle(fontSize: 64, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text(
                  '$score / $total aciertos',
                  style: TextStyle(fontSize: 18, color: Colors.white.withOpacity(0.7)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
            decoration: BoxDecoration(
              color: statusColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(statusIcon, color: Colors.white, size: 24),
                const SizedBox(width: 12),
                Text(
                  'Nivel: $statusLevel',
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInsightCard({required String strongest, required String weakest, required String recommendation}) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildInsightItem(Icons.flash_on, 'Fortaleza:', strongest, AppColors.success),
          const Padding(padding: EdgeInsets.symmetric(vertical: 16), child: Divider()),
          _buildInsightItem(Icons.psychology, 'Debilidad:', weakest, AppColors.error),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Icon(Icons.auto_awesome, size: 18, color: AppColors.primary),
                    SizedBox(width: 8),
                    Text('Recomendación LIA', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.primary)),
                  ],
                ),
                const SizedBox(height: 8),
                Text(recommendation, style: const TextStyle(fontSize: 15, height: 1.4, color: AppColors.textDark)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInsightItem(IconData icon, String label, String value, Color color) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(color: color.withOpacity(0.1), shape: BoxShape.circle),
          child: Icon(icon, color: color, size: 24),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: const TextStyle(fontSize: 14, color: Colors.grey)),
            Text(value, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.textDark)),
          ],
        ),
      ],
    );
  }

  Widget _buildAreaTile(String title, double percentage) {
    Color color = percentage >= 80 ? AppColors.success : (percentage >= 60 ? AppColors.accent : AppColors.error);
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.textDark)),
              Text('${percentage.toStringAsFixed(0)}%', style: TextStyle(color: color, fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: percentage / 100,
              backgroundColor: AppColors.background,
              valueColor: AlwaysStoppedAnimation<Color>(color),
              minHeight: 8,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainCTAs(BuildContext context, WidgetRef ref, double percentage, String weakestArea) {
    String primaryLabel = '';
    VoidCallback onPrimary;
    IconData primaryIcon;

    if (percentage >= 80) {
      primaryLabel = 'Nuevo simulador';
      primaryIcon = Icons.add_task;
      onPrimary = () {
        ref.read(examProvider.notifier).resetExam();
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const PreExamPage()));
      };
    } else if (percentage >= 60) {
      primaryLabel = 'Intentar de nuevo';
      primaryIcon = Icons.refresh;
      onPrimary = () {
        ref.read(examProvider.notifier).resetExam();
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const PreExamPage()));
      };
    } else {
      primaryLabel = 'Practicar área débil';
      primaryIcon = Icons.school;
      onPrimary = () {
        ref.read(practicaProvider.notifier).initCategory(weakestArea);
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const PracticaPage()));
      };
    }

    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 60,
          child: ElevatedButton.icon(
            onPressed: onPrimary,
            icon: Icon(primaryIcon, color: Colors.white),
            label: Text(primaryLabel, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              elevation: 0,
            ),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          height: 60,
          child: OutlinedButton.icon(
            onPressed: () {
              // Navegación segura que limpia la pila
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (_) => const HomePage()),
                (route) => false,
              );
            },
            icon: const Icon(Icons.home_outlined, color: AppColors.primary),
            label: const Text('Volver al inicio', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.primary)),
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: AppColors.primary, width: 2),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            ),
          ),
        ),
      ],
    );
  }

  String _getRecommendation(double percentage, String weakest) {
    if (percentage >= 80) {
      return "¡Nivel sobresaliente! Estás en la zona de aprobación segura. Refuerza ligeramente $weakest para alcanzar la perfección.";
    } else if (percentage >= 60) {
      return "Tienes una base sólida pero el área de $weakest está afectando tu promedio. Si mejoras este tema, tu probabilidad de éxito aumentará drásticamente.";
    } else {
      return "Resultado crítico. Necesitas un plan de estudio intensivo enfocado en $weakest. No te desanimes, usa el modo práctica para dominar los conceptos base.";
    }
  }
}