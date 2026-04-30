import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/services/persistence_service.dart';
import '../simulador/pages/pre_exam_page.dart';
import '../simulador/pages/simulador_page.dart';
import '../demo/pages/demo_exam_page.dart';
import '../gamification/pages/shuffle_challenge_page.dart';
import '../../core/constants/app_colors.dart';

final progressProvider = FutureProvider<Map<String, dynamic>>((ref) {
  return PersistenceService().loadProgress();
});

class CareerInfo {
  final String name;
  final String description;
  final String imagePath;
  final Color color;

  const CareerInfo({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.color,
  });
}

const List<CareerInfo> careers = [
  CareerInfo(
    name: 'Sistemas / TI',
    description: 'Simulador EGEL con programación, redes, bases de datos y más.',
    imagePath: 'assets/images/book_systems.png',
    color: Color(0xFF3B82F6),
  ),
  CareerInfo(
    name: 'Administración',
    description: 'Simulador EGEL en gestión empresarial, finanzas, marketing y más.',
    imagePath: 'assets/images/book_admin.png',
    color: Color(0xFF10B981),
  ),
  CareerInfo(
    name: 'Derecho',
    description: 'Simulador EGEL en leyes, procesos jurídicos y ética profesional.',
    imagePath: 'assets/images/book_law.png',
    color: Color(0xFFF59E0B),
  ),
  CareerInfo(
    name: 'Contaduría',
    description: 'Simulador EGEL en auditoría, impuestos, contabilidad y costos.',
    imagePath: 'assets/images/book_accounting.png',
    color: Color(0xFF8B5CF6),
  ),
  CareerInfo(
    name: 'Ing. Industrial',
    description: 'Simulador EGEL en procesos, calidad, logística y mejora continua.',
    imagePath: 'assets/images/book_industrial.png',
    color: Color(0xFF06B6D4),
  ),
  CareerInfo(
    name: 'Psicología',
    description: 'Simulador EGEL en clínica, social, organizacional y educativa.',
    imagePath: 'assets/images/book_industrial.png', // Placeholder
    color: Color(0xFFEC4899),
  ),
  CareerInfo(
    name: 'Enfermería',
    description: 'Simulador EGEL en cuidados críticos, salud pública y gestión.',
    imagePath: 'assets/images/book_law.png', // Placeholder
    color: Color(0xFFEF4444),
  ),
];

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const LiaNavBar(),
            const LiaHeroSection(),
            const LiaTrainPromoSection(),
            const SizedBox(height: 60),
            const LiaCareerSelectionHeader(),
            const SizedBox(height: 40),
            const LiaCareerGrid(),
            const SizedBox(height: 60),
            const LiaBottomCTA(),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}

class LiaNavBar extends StatelessWidget {
  const LiaNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
      child: Row(
        children: [
          Row(
            children: [
              Image.asset('assets/images/lia_train_logo.png', height: 64),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'LIA-TRAIN',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      letterSpacing: 1.8,
                    ),
                  ),
                  Text(
                    'Simulador EGEL',
                    style: TextStyle(fontSize: 12, color: AppColors.textSecondary),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          _buildNavBadge(Icons.bolt, 'Modo Examen Real'),
          const SizedBox(width: 24),
          _buildNavBadge(null, '40 Preguntas'),
          const SizedBox(width: 24),
          _buildNavBadge(Icons.access_time, '40 Minutos'),
          const SizedBox(width: 48),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.person_outline, color: Colors.white),
            label: const Text('Iniciar sesión', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  Widget _buildNavBadge(IconData? icon, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white.withOpacity(0.1)),
      ),
      child: Row(
        children: [
          if (icon != null) ...[
            Icon(icon, size: 14, color: Colors.white70),
            const SizedBox(width: 8),
          ],
          Text(label, style: const TextStyle(color: Colors.white70, fontSize: 13)),
        ],
      ),
    );
  }
}

class LiaHeroSection extends StatelessWidget {
  const LiaHeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildModeBadge(),
                const SizedBox(height: 24),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 56,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      height: 1.1,
                    ),
                    children: [
                      const TextSpan(text: 'Entrena como si fuera\ntu '),
                      TextSpan(
                        text: 'examen real',
                        style: TextStyle(
                          foreground: Paint()
                            ..shader = const LinearGradient(
                              colors: [Color(0xFF3B82F6), Color(0xFFC084FC)],
                            ).createShader(const Rect.fromLTWH(0.0, 0.0, 400.0, 70.0)),
                        ),
                      ),
                      const TextSpan(text: 'antes de presentarlo'),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Entrena con simulaciones tipo EGEL / 286, detecta tus\náreas débiles y asegura tu resultado con precisión IA.',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF94A3B8),
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 48),
                Row(
                  children: [
                    _buildFeatureItem(Icons.shield_outlined, 'Formato oficial', 'EGEL / 286'),
                    const SizedBox(width: 40),
                    _buildFeatureItem(Icons.psychology_outlined, 'Análisis IA', 'Resultados precisos'),
                    const SizedBox(width: 40),
                    _buildFeatureItem(Icons.trending_up, 'Mejora continua', 'Sigue tu progreso'),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Center(
              child: Image.asset(
                'assets/images/hero_books.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildModeBadge() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFF334155)),
      ),
      child: const Text(
        'MODO REAL  •  40 PREGUNTAS  •  40 MINUTOS',
        style: TextStyle(
          color: Color(0xFF3B82F6),
          fontSize: 11,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.1,
        ),
      ),
    );
  }

  Widget _buildFeatureItem(IconData icon, String title, String subtitle) {
    return Row(
      children: [
        Icon(icon, color: AppColors.accent, size: 28),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
            Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 12)),
          ],
        ),
      ],
    );
  }
}

class LiaCareerSelectionHeader extends StatelessWidget {
  const LiaCareerSelectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(width: 60, height: 1, color: Colors.white24),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'Elige tu carrera y comienza a entrenar',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        Container(width: 60, height: 1, color: Colors.white24),
      ],
    );
  }
}

class LiaCareerGrid extends StatefulWidget {
  const LiaCareerGrid({super.key});

  @override
  State<LiaCareerGrid> createState() => _LiaCareerGridState();
}

class _LiaCareerGridState extends State<LiaCareerGrid> {
  final ScrollController _scrollController = ScrollController();

  void _scroll(double offset) {
    _scrollController.animateTo(
      _scrollController.offset + offset,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: SingleChildScrollView(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: careers.map((c) => CareerItem(info: c)).toList(),
              ),
            ),
          ),
          Positioned(
            left: 0,
            child: _buildScrollButton(Icons.chevron_left, () => _scroll(-400)),
          ),
          Positioned(
            right: 0,
            child: _buildScrollButton(Icons.chevron_right, () => _scroll(400)),
          ),
        ],
      ),
    );
  }

  Widget _buildScrollButton(IconData icon, VoidCallback onPressed) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondary.withOpacity(0.8),
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white.withOpacity(0.1)),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.3), blurRadius: 10),
        ],
      ),
      child: IconButton(
        icon: Icon(icon, color: Colors.white),
        onPressed: onPressed,
      ),
    );
  }
}

class CareerItem extends StatefulWidget {
  final CareerInfo info;
  const CareerItem({super.key, required this.info});

  @override
  State<CareerItem> createState() => _CareerItemState();
}

class _CareerItemState extends State<CareerItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: () {
          if (widget.info.name == 'Sistemas / TI') {
            Navigator.push(context, MaterialPageRoute(builder: (_) => const PreExamPage()));
          }
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: 180,
          margin: const EdgeInsets.only(right: 16),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: _isHovered ? widget.info.color : Colors.white.withOpacity(0.1),
              width: 2,
            ),
            boxShadow: [
              if (_isHovered)
                BoxShadow(color: widget.info.color.withOpacity(0.3), blurRadius: 20, spreadRadius: 2),
            ],
          ),
          child: Column(
            children: [
              Image.asset(widget.info.imagePath, height: 100),
              const SizedBox(height: 16),
              Text(
                widget.info.name,
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 8),
              Text(
                widget.info.description,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.grey, fontSize: 11, height: 1.4),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: widget.info.color.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.play_arrow_rounded, size: 12, color: widget.info.color),
                    const SizedBox(width: 4),
                    Text(
                      'SIMULAR EGEL',
                      style: TextStyle(color: widget.info.color, fontWeight: FontWeight.bold, fontSize: 10),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LiaTrainPromoSection extends StatefulWidget {
  const LiaTrainPromoSection({super.key});

  @override
  State<LiaTrainPromoSection> createState() => _LiaTrainPromoSectionState();
}

class _LiaTrainPromoSectionState extends State<LiaTrainPromoSection> with SingleTickerProviderStateMixin {
  late AnimationController _cardController;
  late Animation<double> _cardScale;

  @override
  void initState() {
    super.initState();
    _cardController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);

    _cardScale = Tween<double>(begin: 1.0, end: 1.05).animate(
      CurvedAnimation(parent: _cardController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _cardController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
      padding: const EdgeInsets.all(60),
      decoration: BoxDecoration(
        color: const Color(0xFF0F172A),
        borderRadius: BorderRadius.circular(32),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
        boxShadow: [
          BoxShadow(
            color: AppColors.accent.withOpacity(0.05),
            blurRadius: 100,
            spreadRadius: 10,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: AppColors.accent.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.new_releases, color: AppColors.accent, size: 16),
                      SizedBox(width: 8),
                      Text(
                        'NUEVO ECOSISTEMA LIA',
                        style: TextStyle(
                          color: AppColors.accent,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  '¿Pasarías tu examen\nprofesional hoy?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.w900,
                    height: 1.1,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Descúbrelo en menos de 1 minuto con nuestro\nsimulador inteligente tipo EGEL / 286.',
                  style: TextStyle(
                    color: Color(0xFF94A3B8),
                    fontSize: 20,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const ShuffleChallengePage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.accent,
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      elevation: 20,
                      shadowColor: AppColors.accent.withOpacity(0.4),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '🎯 Iniciar reto rápido',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        SizedBox(width: 12),
                        Icon(Icons.arrow_forward, color: Colors.white),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: ScaleTransition(
                scale: _cardScale,
                child: Container(
                  width: 220,
                  height: 300,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [AppColors.primary, AppColors.secondary],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.accent.withOpacity(0.3),
                        blurRadius: 40,
                        spreadRadius: 2,
                      ),
                    ],
                    border: Border.all(color: Colors.white.withOpacity(0.1)),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.bolt, color: Colors.white, size: 60),
                        const SizedBox(height: 20),
                        Container(
                          width: 80,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          width: 50,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LiaBottomCTA extends StatelessWidget {
  const LiaBottomCTA({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 48),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.03),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
      ),
      child: Row(
        children: [
          _buildAvatars(),
          const SizedBox(width: 24),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Únete a miles de estudiantes que ya están entrenando para aprobar',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text(
                'Prepárate con el simulador más preciso y asegura tu futuro profesional.',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
          const Spacer(),
          const Column(
            children: [
              Row(
                children: [
                  Icon(Icons.star, color: Colors.orange, size: 16),
                  Icon(Icons.star, color: Colors.orange, size: 16),
                  Icon(Icons.star, color: Colors.orange, size: 16),
                  Icon(Icons.star, color: Colors.orange, size: 16),
                  Icon(Icons.star, color: Colors.orange, size: 16),
                  SizedBox(width: 8),
                  Text('4.9', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ],
              ),
              Text('+10,000 estudiantes', style: TextStyle(color: Colors.grey, fontSize: 11)),
            ],
          ),
          const SizedBox(width: 40),
          ElevatedButton.icon(
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (_) => const ShuffleChallengePage()));
            },
            icon: const Text('Descubre si pasarías hoy', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            label: const Icon(Icons.arrow_forward, color: Colors.white),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.accent,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAvatars() {
    return SizedBox(
      width: 100,
      height: 40,
      child: Stack(
        children: [
          _avatar(0, Colors.blue),
          _avatar(20, Colors.purple),
          _avatar(40, Colors.teal),
          _avatar(60, Colors.orange),
        ],
      ),
    );
  }

  Widget _avatar(double left, Color color) {
    return Positioned(
      left: left,
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.primary, width: 2),
        ),
        child: const Icon(Icons.person, color: Colors.white, size: 20),
      ),
    );
  }
}