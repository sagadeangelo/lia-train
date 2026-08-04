import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../models/license_model.dart';

// ============================================================
// LicenseService — consulta de licencias a lia-api
//
// Worker endpoint:
//   GET https://lia-api.sagadeangelo.workers.dev/licenses?email=
//
// PRINCIPIO: Flutter nunca decide permisos.
// Solo consulta este servicio y obedece la respuesta.
// Toda autorización ocurre en el Worker.
// ============================================================

class LicenseService {
  static const String _apiUrl = 'https://lia-api.sagadeangelo.workers.dev';
  static const String _emailKey = 'lia_user_email';

  // ── Email persistente (SharedPreferences) ─────────────────
  // El email se guarda la primera vez que el usuario inicia una compra.
  // Se usa para consultar licencias en cada apertura de la app.

  static Future<String?> getSavedEmail() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_emailKey);
  }

  static Future<void> saveEmail(String email) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_emailKey, email.trim().toLowerCase());
  }

  static Future<void> clearEmail() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_emailKey);
  }

  // ── Consulta de licencias ─────────────────────────────────

  /// Devuelve las licencias activas del email.
  /// Lanza [LicenseException] si hay error de red o respuesta inválida.
  static Future<List<LicenseModel>> getLicenses(String email) async {
    final normalized = email.trim().toLowerCase();

    if (normalized.isEmpty || !normalized.contains('@')) {
      throw LicenseException('Email inválido: $email');
    }

    late http.Response response;

    try {
      response = await http
          .get(Uri.parse('$_apiUrl/licenses?email=${Uri.encodeComponent(normalized)}'))
          .timeout(const Duration(seconds: 10));
    } catch (e) {
      throw LicenseException('No se pudo conectar con el servidor de licencias.');
    }

    if (response.statusCode != 200) {
      throw LicenseException(
        'Error del servidor de licencias (${response.statusCode}).',
      );
    }

    late Map<String, dynamic> json;
    try {
      json = jsonDecode(response.body) as Map<String, dynamic>;
    } catch (_) {
      throw LicenseException('Respuesta inesperada del servidor de licencias.');
    }

    final rawList = json['licenses'] as List? ?? [];
    return rawList
        .map((item) => LicenseModel.fromJson(item as Map<String, dynamic>))
        .where((l) => l.isActive)
        .toList();
  }

  // ── Helper: verificar permiso ─────────────────────────────

  /// Retorna true si alguna licencia de la lista otorga el permiso
  /// para el productId y carrera dados.
  ///
  /// [licenses]   → lista devuelta por getLicenses()
  /// [permission] → "simulador", "pdf", "ia", "premium", etc.
  /// [career]     → carrera a verificar | null = no filtrar por carrera
  static bool hasPermission(
    List<LicenseModel> licenses,
    String permission, {
    String? career,
  }) {
    return licenses.any(
      (l) => l.isActive && l.hasPermission(permission) && l.appliesToCareer(career),
    );
  }
}

// ── Excepción tipada ─────────────────────────────────────────
class LicenseException implements Exception {
  final String message;
  const LicenseException(this.message);

  @override
  String toString() => 'LicenseException: $message';
}
