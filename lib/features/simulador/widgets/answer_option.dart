import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';

class AnswerOption extends StatelessWidget {
  final String text;
  final int index;
  final bool isSelected;
  final bool isAnswered;
  final bool isCorrect;
  final VoidCallback onTap;

  const AnswerOption({
    super.key,
    required this.text,
    required this.index,
    required this.isSelected,
    required this.isAnswered,
    required this.isCorrect,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Color borderColor = Colors.grey.shade300;
    Color bgColor = Colors.white;
    Color textColor = AppColors.textDark;
    Widget? icon;

    if (isAnswered) {
      if (isCorrect) {
        borderColor = AppColors.success;
        bgColor = AppColors.success.withOpacity(0.05);
        icon = const Icon(Icons.check_circle, color: AppColors.success, size: 20);
      } else if (isSelected) {
        borderColor = AppColors.error;
        bgColor = AppColors.error.withOpacity(0.05);
        icon = const Icon(Icons.cancel, color: AppColors.error, size: 20);
      }
    } else if (isSelected) {
      borderColor = AppColors.accent;
      bgColor = AppColors.accent.withOpacity(0.05);
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: Material(
          color: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: borderColor, width: isSelected || (isAnswered && isCorrect) ? 2 : 1),
          ),
          child: InkWell(
            onTap: isAnswered ? null : onTap,
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: isSelected ? AppColors.accent : Colors.grey.shade100,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        String.fromCharCode(65 + index),
                        style: TextStyle(
                          color: isSelected ? Colors.white : AppColors.textSecondary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      text,
                      style: TextStyle(
                        color: textColor,
                        fontSize: 16,
                        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                  ),
                  if (icon != null) icon,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
