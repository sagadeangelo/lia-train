import 'package:flutter/material.dart';

class AppColors {
  // Brand Colors
  static const Color primary = Color(0xFF020617); // Deepest Slate 950
  static const Color secondary = Color(0xFF0F172A); // Slate 900
  static const Color accent = Color(0xFF3B82F6); // Blue 500
  static const Color accentPurple = Color(0xFF8B5CF6); // Purple 500
  
  // Feedback Colors
  static const Color success = Color(0xFF10B981); // Emerald 500
  static const Color error = Color(0xFFEF4444); // Red 500
  static const Color warning = Color(0xFFF59E0B); // Amber 500

  // Backgrounds
  static const Color background = Color(0xFF020617);
  static const Color surface = Color(0xFF0F172A);
  static const Color surfaceDark = Color(0xFF1E293B);

  // Text
  static const Color textPrimary = Colors.white; // For dark backgrounds
  static const Color textSecondary = Color(0xFF94A3B8); // Slate 400
  static const Color textDark = Color(0xFF1E293B); // For light backgrounds (cards)
  static const Color textOnPrimary = Colors.white;

  // Gradients
  static const Gradient heroGradient = LinearGradient(
    colors: [Color(0xFF3B82F6), Color(0xFF8B5CF6)],
  );
}
