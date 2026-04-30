import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../../features/home/home_page.dart';
import '../../features/gamification/pages/shuffle_challenge_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true, // Enables routing logs
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/train/challenge',
      builder: (context, state) {
        debugPrint('Navigating to ChallengePage via GoRouter');
        return const ShuffleChallengePage();
      },
    ),
  ],
  errorBuilder: (context, state) {
    debugPrint('🚨 ROUTER ERROR: No route found for ${state.uri.toString()}');
    return const Scaffold(
      body: Center(
        child: Text('Error: Ruta no encontrada', style: TextStyle(color: Colors.red)),
      ),
    );
  },
);
