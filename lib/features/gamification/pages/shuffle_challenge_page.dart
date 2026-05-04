import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:math';
import 'package:just_audio/just_audio.dart';
import '../../../core/constants/app_colors.dart';
import '../../practica/providers/practica_provider.dart';
import '../../practica/pages/practica_page.dart';
import '../../../data/questions.dart';

class ShuffleChallengePage extends StatefulWidget {
  const ShuffleChallengePage({super.key});

  @override
  State<ShuffleChallengePage> createState() => _ShuffleChallengePageState();
}

class _ShuffleChallengePageState extends State<ShuffleChallengePage> with TickerProviderStateMixin {
  late AnimationController _shuffleController;
  late AnimationController _idleController;
  late AnimationController _impactController;
  late AnimationController _shakeController;
  
  late Animation<double> _idleScale;
  late Animation<double> _idleGlow;
  late Animation<double> _flashOpacity;
  late Animation<double> _shakeOffset;

  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isShuffling = false;
  bool _isHovered = false;
  String? _selectedArea;
  final Random _random = Random();

  late final List<String> _areas = allQuestions.map((q) => q.category).toSet().toList();

  @override
  void initState() {
    super.initState();
    
    // Barajado
    _shuffleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    // Idle
    _idleController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);

    _idleScale = Tween<double>(begin: 1.0, end: 1.03).animate(
      CurvedAnimation(parent: _idleController, curve: Curves.easeInOut),
    );

    _idleGlow = Tween<double>(begin: 0.3, end: 0.6).animate(
      CurvedAnimation(parent: _idleController, curve: Curves.easeInOut),
    );

    // Impact Moment (Flash)
    _impactController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _flashOpacity = TweenSequence([
      TweenSequenceItem(tween: Tween(begin: 0.0, end: 0.8), weight: 30),
      TweenSequenceItem(tween: Tween(begin: 0.8, end: 0.0), weight: 70),
    ]).animate(_impactController);

    // Shake
    _shakeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 120),
    );
    _shakeOffset = TweenSequence([
      TweenSequenceItem(tween: Tween(begin: 0.0, end: -3.0), weight: 25),
      TweenSequenceItem(tween: Tween(begin: -3.0, end: 3.0), weight: 50),
      TweenSequenceItem(tween: Tween(begin: 3.0, end: 0.0), weight: 25),
    ]).animate(CurvedAnimation(parent: _shakeController, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _shuffleController.dispose();
    _idleController.dispose();
    _impactController.dispose();
    _shakeController.dispose();
    _audioPlayer.dispose();
    super.dispose();
  }

  Future<void> _playSound(String asset) async {
    try {
      // Nota: Requiere que los assets existan en assets/audio/
      // await _audioPlayer.setAudioSource(AudioSource.asset('assets/audio/$asset'));
      // await _audioPlayer.play();
    } catch (e) {
      debugPrint("Audio not found: $asset");
    }
  }

  void _startShuffle() async {
    setState(() {
      _isShuffling = true;
      _selectedArea = null;
    });

    _playSound('shuffle.mp3');
    
    await _shuffleController.forward(from: 0);
    await _shuffleController.reverse();
    await _shuffleController.forward(from: 0);

    setState(() {
      _selectedArea = _areas[_random.nextInt(_areas.length)];
      _isShuffling = false;
    });

    // Reveal Impact
    _playSound('reveal.mp3');
    _impactController.forward(from: 0);
    _shakeController.forward(from: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Barajea tu reto de hoy',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Descubre en qué área estás realmente',
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.textSecondary, fontSize: 18),
              ),
              const SizedBox(height: 40),
              
              // El contenedor interactivo de la carta
              MouseRegion(
                onEnter: (_) => setState(() => _isHovered = true),
                onExit: (_) => setState(() => _isHovered = false),
                child: AnimatedScale(
                  scale: _isHovered ? 1.05 : 1.0,
                  duration: const Duration(milliseconds: 200),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    transform: Matrix4.identity()..translate(0.0, _isHovered ? -10.0 : 0.0),
                    height: 220,
                    width: 170,
                    child: AnimatedBuilder(
                      animation: _shakeOffset,
                      builder: (context, child) {
                        return Transform.translate(
                          offset: Offset(_shakeOffset.value, 0),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              if (!_isShuffling && _selectedArea == null) 
                                _buildInitialDeck(),
                              if (_isShuffling)
                                _buildShuffleAnimation(),
                              if (_selectedArea != null)
                                _buildRevealedCard(_selectedArea!),
                              
                              // Flash de impacto
                              IgnorePointer(
                                child: AnimatedBuilder(
                                  animation: _flashOpacity,
                                  builder: (context, _) => Opacity(
                                    opacity: _flashOpacity.value,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                    ),
                  ),
                ),
              ),
              
              const SizedBox(height: 40),
              
              if (_selectedArea == null && !_isShuffling) ...[
                _buildOptionButton(
                  '🎲 Reto aleatorio',
                  AppColors.accent,
                  _startShuffle,
                  true,
                ),
                const SizedBox(height: 16),
                _buildOptionButton(
                  '🎯 Elegir área',
                  Colors.white.withOpacity(0.1),
                  () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const PracticaPage()));
                  },
                  false,
                ),
              ],
              
              if (_selectedArea != null)
                Consumer(builder: (context, ref, child) {
                  return ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          ref.read(practicaProvider.notifier).initCategory(_selectedArea);
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const PracticaPage()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.success,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                          elevation: 10,
                          shadowColor: AppColors.success.withOpacity(0.5),
                        ),
                        child: const Text(
                          'Iniciar reto (10 preguntas)',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                  );
                }),
              
              if (_selectedArea != null)
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: TextButton.icon(
                    onPressed: _startShuffle,
                    icon: const Icon(Icons.refresh, color: Colors.grey, size: 18),
                    label: const Text('Volver a barajear', style: TextStyle(color: Colors.grey)),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInitialDeck() {
    return AnimatedBuilder(
      animation: _idleScale,
      builder: (context, child) {
        return Transform.scale(
          scale: _idleScale.value,
          child: Stack(
            children: [
              Transform.rotate(angle: -0.05, child: _cardBack(false)),
              Transform.rotate(angle: 0.05, child: _cardBack(false)),
              _cardBack(true),
            ],
          ),
        );
      },
    );
  }

  Widget _buildShuffleAnimation() {
    return AnimatedBuilder(
      animation: _shuffleController,
      builder: (context, child) {
        final double offset = _shuffleController.value * 50;
        return Stack(
          alignment: Alignment.center,
          children: [
            Transform.translate(offset: Offset(-offset, 0), child: _cardBack(false)),
            Transform.translate(offset: Offset(offset, 0), child: _cardBack(false)),
            _cardBack(true),
          ],
        );
      },
    );
  }

  Widget _buildRevealedCard(String area) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeOutBack,
      builder: (context, value, child) {
        final scale = 0.8 + (value * 0.2);
        return Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..scale(scale)
            ..rotateY((1 - value) * pi),
          alignment: Alignment.center,
          child: value < 0.5 
            ? _cardBack(true) 
            : Container(
                width: 150,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.success.withOpacity(0.4 * value),
                      blurRadius: 30 * value,
                      spreadRadius: 5 * value,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TweenAnimationBuilder<double>(
                      tween: Tween(begin: 0, end: 1),
                      duration: const Duration(seconds: 1),
                      builder: (context, val, _) {
                        return Transform.rotate(
                          angle: val * 0.1,
                          child: Icon(Icons.bolt, color: AppColors.success, size: 40 + (val * 5)),
                        );
                      }
                    ),
                    const SizedBox(height: 12),
                    Text(
                      area,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: AppColors.textDark, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Tu reto de hoy',
                      style: TextStyle(color: Colors.grey, fontSize: 11),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: AppColors.success.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text(
                        'Dificultad: Intermedia',
                        style: TextStyle(color: AppColors.success, fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
        );
      },
    );
  }

  Widget _cardBack(bool withGlow) {
    return AnimatedBuilder(
      animation: _idleGlow,
      builder: (context, child) {
        return Container(
          width: 150,
          height: 200,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [AppColors.primary, AppColors.secondary],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white.withOpacity(0.15)),
            boxShadow: [
              if (withGlow)
                BoxShadow(
                  color: AppColors.accent.withOpacity(_idleGlow.value),
                  blurRadius: 20,
                  spreadRadius: 2,
                ),
              BoxShadow(color: Colors.black.withOpacity(0.5), blurRadius: 15),
            ],
          ),
          child: Center(
            child: Opacity(
              opacity: 0.1,
              child: Image.asset('assets/images/lia_train_logo.png', height: 60),
            ),
          ),
        );
      },
    );
  }

  Widget _buildOptionButton(String label, Color color, VoidCallback onTap, bool primary) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.white.withOpacity(0.1)),
              boxShadow: [
                if (primary)
                  BoxShadow(color: AppColors.accent.withOpacity(0.2), blurRadius: 15, offset: const Offset(0, 4)),
              ],
            ),
            child: Center(
              child: Text(
                label,
                style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
