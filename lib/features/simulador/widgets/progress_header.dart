import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';

class ProgressHeader extends StatelessWidget {
  final int current;
  final int total;
  final int timeRemaining;

  const ProgressHeader({
    super.key,
    required this.current,
    required this.total,
    required this.timeRemaining,
  });

  String _formatTime(int seconds) {
    final minutes = seconds ~/ 60;
    final remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    final progress = (current + 1) / total;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pregunta ${current + 1} de $total',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Simulador EGEL - LIA Train',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: timeRemaining < 60 ? AppColors.error.withOpacity(0.1) : AppColors.surfaceDark,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.timer_outlined,
                    size: 18,
                    color: timeRemaining < 60 ? AppColors.error : AppColors.textSecondary,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    _formatTime(timeRemaining),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'monospace',
                      color: timeRemaining < 60 ? AppColors.error : AppColors.textPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: LinearProgressIndicator(
            value: progress,
            minHeight: 8,
            backgroundColor: AppColors.surfaceDark,
            valueColor: const AlwaysStoppedAnimation<Color>(AppColors.accent),
          ),
        ),
      ],
    );
  }
}
