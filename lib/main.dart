import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'app.dart';

void main() {
  // Configuración para usar URLs limpias sin el hash (#)
  usePathUrlStrategy();

  // Guardias de inicialización para capturar errores silenciosos
  runZonedGuarded(() {
    WidgetsFlutterBinding.ensureInitialized();

    // Log explícito de errores de Flutter en consola
    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.presentError(details);
      debugPrint('🚨 FLUTTER ERROR: ${details.exceptionAsString()}');
    };

    runApp(
      const ProviderScope(
        child: LiaTrainApp(),
      ),
    );
  }, (error, stackTrace) {
    debugPrint('🚨 ASYNC UNHANDLED ERROR: $error');
    debugPrint(stackTrace.toString());
  });
}