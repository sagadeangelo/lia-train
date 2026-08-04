// ============================================================
// LicenseModel — Modelo de datos de una licencia LIA
// Mapeado 1:1 con la respuesta del Worker lia-api
// ============================================================

class LicenseModel {
  final String licenseId;
  final String productId;
  final String? career;
  final String status;
  final List<String> permissions;
  final String? purchaseDate;
  final String? expirationDate;

  const LicenseModel({
    required this.licenseId,
    required this.productId,
    this.career,
    required this.status,
    required this.permissions,
    this.purchaseDate,
    this.expirationDate,
  });

  // ── Parseo desde JSON del Worker ──────────────────────────
  factory LicenseModel.fromJson(Map<String, dynamic> json) {
    return LicenseModel(
      licenseId: json['licenseId'] as String? ?? '',
      productId: json['productId'] as String? ?? '',
      career: json['career'] as String?,
      status: json['status'] as String? ?? '',
      permissions: List<String>.from(json['permissions'] as List? ?? []),
      purchaseDate: json['purchaseDate'] as String?,
      expirationDate: json['expirationDate'] as String?,
    );
  }

  // ── Helpers ───────────────────────────────────────────────

  /// La licencia está activa y no expirada.
  bool get isActive => status == 'approved' && !_isExpired;

  bool get _isExpired {
    if (expirationDate == null) return false; // vitalicia
    return DateTime.now().isAfter(DateTime.parse(expirationDate!));
  }

  /// Verifica si esta licencia otorga el permiso solicitado.
  bool hasPermission(String permission) => permissions.contains(permission);

  /// Verifica si esta licencia aplica a la carrera solicitada.
  /// Una licencia sin carrera (null) aplica a todas.
  bool appliesToCareer(String? targetCareer) {
    if (career == null) return true;
    if (targetCareer == null) return true;
    return career!.toLowerCase() == targetCareer.toLowerCase();
  }

  @override
  String toString() =>
      'LicenseModel(productId: $productId, career: $career, status: $status, permissions: $permissions)';
}
