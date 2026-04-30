import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class PersistenceService {
  static const String _keyLastScore = 'last_score';
  static const String _keyLastTotal = 'last_total';
  static const String _keyStrongest = 'strongest_category';
  static const String _keyWeakest = 'weakest_category';
  static const String _keyLastSession = 'last_session';

  Future<void> saveResult({
    required int score,
    required int total,
    required String strongest,
    required String weakest,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_keyLastScore, score);
    await prefs.setInt(_keyLastTotal, total);
    await prefs.setString(_keyStrongest, strongest);
    await prefs.setString(_keyWeakest, weakest);
    await prefs.setString(_keyLastSession, DateTime.now().toIso8601String());
  }

  Future<Map<String, dynamic>> loadProgress() async {
    final prefs = await SharedPreferences.getInstance();
    return {
      'score': prefs.getInt(_keyLastScore),
      'total': prefs.getInt(_keyLastTotal),
      'strongest': prefs.getString(_keyStrongest),
      'weakest': prefs.getString(_keyWeakest),
      'lastSession': prefs.getString(_keyLastSession),
    };
  }
}
