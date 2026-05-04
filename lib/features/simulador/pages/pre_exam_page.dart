import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/exam_provider.dart';
import '../providers/focus_provider.dart';
import '../pages/simulador_page.dart';
import '../../../core/constants/app_colors.dart';

class PreExamPage extends ConsumerStatefulWidget {
  const PreExamPage({super.key});

  @override
  ConsumerState<PreExamPage> createState() => _PreExamPageState();
}

class _PreExamPageState extends ConsumerState<PreExamPage> {
  bool _isFocusEnabled = false;
  FocusTrack? _selectedTrack;
  int _countdown = -1; // -1 means no countdown active
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _selectedTrack = focusTracks.first;
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startCountdown() {
    setState(() {
      _countdown = 3;
    });

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_countdown > 1) {
          _countdown--;
        } else {
          _timer?.cancel();
          _launchSimulator();
        }
      });
    });
  }

  void _launchSimulator() {
    // Activar audio si está habilitado
    if (_isFocusEnabled && _selectedTrack != null) {
      ref.read(focusProvider.notifier).setTrack(_selectedTrack!);
      ref.read(focusProvider.notifier).start();
    } else {
      ref.read(focusProvider.notifier).stop();
    }

    // Navegar al simulador
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const SimuladorPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_countdown > 0) {
      return _buildCountdownOverlay();
    }

    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Entrenador Inteligente tipo EGEL',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                _buildInfoCard(),
                const SizedBox(height: 24),
                const Text(
                  'Concéntrate. Respira. Este simulador replica el examen real.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    color: Color(0xFF94A3B8),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Tu objetivo: identificar tus áreas débiles y mejorar tu resultado.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.accent,
                  ),
                ),
                const SizedBox(height: 24),
                _buildFocusSection(),
                const SizedBox(height: 32),
                _buildButtons(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard() {
    final exam = ref.watch(examProvider);
    final isFull = exam.isFullSimulation;

    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.1)),
      ),
      child: Column(
        children: [
          _buildInfoRow(
            isFull ? Icons.psychology : Icons.edit_note,
            isFull ? 'Modo: Simulador Completo EGEL' : 'Modo: Entrenamiento de Práctica',
            color: isFull ? AppColors.accent : Colors.white70,
          ),
          const Divider(height: 24, color: Colors.white10),
          _buildInfoRow(Icons.help_outline, '${exam.questions.length} reactivos'),
          const Divider(height: 24, color: Colors.white10),
          _buildInfoRow(Icons.timer_outlined, isFull ? '120 minutos (Tiempo Oficial)' : '${exam.questions.length} minutos'),
          const Divider(height: 24, color: Colors.white10),
          _buildInfoRow(Icons.trending_up, 'Dificultad Progresiva Adaptativa', color: AppColors.success),
          const Divider(height: 24, color: Colors.white10),
          _buildInfoRow(Icons.bolt, 'Bloque Final de Alto Desafío', color: AppColors.warning),
          const Divider(height: 24, color: Colors.white10),
          _buildInfoRow(Icons.visibility_off_outlined, 'Sin respuestas inmediatas (Modo Real)'),
        ],
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String text, {bool isWarning = false, Color? color}) {
    return Row(
      children: [
        Icon(icon, color: color ?? (isWarning ? AppColors.error : AppColors.accent), size: 24),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ],
    );
  }

  Widget _buildFocusSection() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.accent.withOpacity(0.05),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.accent.withOpacity(0.1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Modo Enfoque (opcional)',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Activa música ambiental para concentrarte.',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ],
              ),
              Switch(
                value: _isFocusEnabled,
                activeColor: AppColors.accent,
                onChanged: (val) => setState(() => _isFocusEnabled = val),
              ),
            ],
          ),
          if (_isFocusEnabled) ...[
            const SizedBox(height: 20),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: focusTracks.map((track) {
                final isSelected = _selectedTrack == track;
                return ChoiceChip(
                  label: Text(track.name),
                  selected: isSelected,
                  onSelected: (selected) {
                    if (selected) setState(() => _selectedTrack = track);
                  },
                  backgroundColor: Colors.white10,
                  selectedColor: AppColors.accent.withOpacity(0.2),
                  labelStyle: TextStyle(
                    color: isSelected ? AppColors.accent : Colors.white70,
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: isSelected ? AppColors.accent : Colors.transparent),
                  ),
                );
              }).toList(),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildButtons() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: double.infinity,
          height: 54,
          child: ElevatedButton(
            onPressed: _startCountdown,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.accent,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              elevation: 4,
            ),
            child: const Text(
              'Iniciar simulación',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 8),
        TextButton(
          onPressed: () => Navigator.pop(context),
          style: TextButton.styleFrom(visualDensity: VisualDensity.compact),
          child: const Text('Cancelar', style: TextStyle(color: Colors.grey, fontSize: 14)),
        ),
      ],
    );
  }

  Widget _buildCountdownOverlay() {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Preparando entorno...',
              style: TextStyle(color: Colors.white70, fontSize: 20),
            ),
            const SizedBox(height: 40),
            Text(
              '$_countdown',
              style: const TextStyle(
                fontSize: 120,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
