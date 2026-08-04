import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/license_model.dart';
import '../services/license_service.dart';

// ============================================================
// LIA License Providers
//
// Uso en widgets:
//   final licenses = ref.watch(licensesProvider);
//   licenses.when(
//     data: (list) => ...,
//     loading: () => CircularProgressIndicator(),
//     error: (e, _) => Text('Sin licencias'),
//   );
// ============================================================

// ── Email del usuario (persistido en SharedPreferences) ──────
// Se inicializa al arrancar la app y cuando el usuario paga.

final userEmailProvider = StateProvider<String?>((ref) => null);

// ── Licencias activas del usuario ────────────────────────────
// Se recalcula automáticamente cuando cambia el email.
// Devuelve [] si no hay email guardado.

final licensesProvider = FutureProvider<List<LicenseModel>>((ref) async {
  final email = ref.watch(userEmailProvider);

  if (email == null || email.isEmpty) {
    // Intentar recuperar email guardado en SharedPreferences
    final saved = await LicenseService.getSavedEmail();
    if (saved == null || saved.isEmpty) return [];

    // Actualizar el provider con el email guardado (sin causar rebuild circular)
    Future.microtask(() {
      ref.read(userEmailProvider.notifier).state = saved;
    });

    return LicenseService.getLicenses(saved);
  }

  return LicenseService.getLicenses(email);
});

// ── Helper para verificar permisos desde widgets ─────────────
// Uso: ref.read(licensePermissionProvider('simulador', career: 'sistemas'))

class LicensePermissionArgs {
  final String permission;
  final String? career;
  const LicensePermissionArgs(this.permission, {this.career});
}

final licensePermissionProvider = Provider.family<bool, LicensePermissionArgs>(
  (ref, args) {
    final licensesAsync = ref.watch(licensesProvider);
    return licensesAsync.whenOrNull(
          data: (licenses) => LicenseService.hasPermission(
            licenses,
            args.permission,
            career: args.career,
          ),
        ) ??
        false;
  },
);
