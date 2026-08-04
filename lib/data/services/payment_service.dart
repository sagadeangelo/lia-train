import 'dart:convert';
import 'package:http/http.dart' as http;

// ============================================================
// PaymentService — integración con Worker de Mercado Pago
//
// Worker endpoint:
//   POST https://lia-payments.sagadeangelo.workers.dev/create-preference
//
// IMPORTANTE: Ninguna credencial de Mercado Pago vive aquí.
// Todo el procesamiento sensible ocurre en el Worker de Cloudflare.
// ============================================================

class PaymentService {
  static const String _workerUrl =
      'https://lia-payments.sagadeangelo.workers.dev/create-preference';

  /// Llama al Worker y devuelve la URL de Checkout Pro.
  ///
  /// [productId] → ID del producto en D1 (ej. "simulador_basico")
  /// [title]     → Nombre legible del producto
  /// [price]     → Precio en MXN
  /// [email]     → Email del comprador (identificador principal)
  /// [career]    → Carrera (opcional, ej. "sistemas")
  ///
  /// Lanza [PaymentException] si el Worker responde con error
  /// o si la red falla.
  static Future<String> createPreference({
    required String productId,
    required String title,
    required double price,
    required String email,
    String? career,
  }) async {
    final body = jsonEncode({
      'productId': productId,
      'title': title,
      'price': price,
      'email': email,
      if (career != null) 'career': career,
    });

    late http.Response response;

    try {
      response = await http
          .post(
            Uri.parse(_workerUrl),
            headers: {'Content-Type': 'application/json'},
            body: body,
          )
          .timeout(const Duration(seconds: 15));
    } catch (e) {
      throw PaymentException(
        'No se pudo conectar con el servidor de pagos. Verifica tu conexión.',
      );
    }

    if (response.statusCode != 200) {
      throw PaymentException(
        'El servidor de pagos respondió con error (${response.statusCode}). '
        'Intenta nuevamente.',
      );
    }

    late Map<String, dynamic> json;
    try {
      json = jsonDecode(response.body) as Map<String, dynamic>;
    } catch (_) {
      throw PaymentException('Respuesta inesperada del servidor de pagos.');
    }

    final success = json['success'] as bool? ?? false;
    if (!success) {
      final msg = json['error']?.toString() ??
          json['message']?.toString() ??
          'Error desconocido del servidor de pagos.';
      throw PaymentException(msg);
    }

    final checkoutUrl = json['checkoutUrl'] as String?;
    if (checkoutUrl == null || checkoutUrl.isEmpty) {
      throw PaymentException('No se recibió la URL de pago. Intenta de nuevo.');
    }

    return checkoutUrl;
  }
}

// ── Excepción tipada ─────────────────────────────────────────
class PaymentException implements Exception {
  final String message;
  const PaymentException(this.message);

  @override
  String toString() => 'PaymentException: $message';
}
