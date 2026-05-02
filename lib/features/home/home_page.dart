import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../data/services/persistence_service.dart';
import '../simulador/pages/pre_exam_page.dart';
import '../simulador/pages/simulador_page.dart';
import '../demo/pages/demo_exam_page.dart';
import '../gamification/pages/shuffle_challenge_page.dart';
import '../simulador/providers/exam_provider.dart';
import '../../core/constants/app_colors.dart';

final progressProvider = FutureProvider<Map<String, dynamic>>((ref) {
  return PersistenceService().loadProgress();
});

class CareerInfo {
  final String name;
  final String description;
  final String imagePath;
  final String pdfImagePath;
  final String? pdfUrl;
  final Color color;

  const CareerInfo({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.pdfImagePath,
    this.pdfUrl,
    required this.color,
  });
}

const List<CareerInfo> careers = [
  CareerInfo(
    name: 'Sistemas / TI',
    description: 'Simulador EGEL con programación, redes, bases de datos y más.',
    imagePath: 'assets/images/book_systems.png',
    pdfImagePath: 'assets/images/book_systems_pdf.png',
    pdfUrl: 'guias/pdf/guia_egel_sistemas_final.pdf',
    color: Color(0xFF3B82F6),
  ),
  CareerInfo(
    name: 'Administración',
    description: 'Simulador EGEL en gestión empresarial, finanzas, marketing y más.',
    imagePath: 'assets/images/book_admin.png',
    pdfImagePath: 'assets/images/book_admin_pdf.png',
    color: Color(0xFF10B981),
  ),
  CareerInfo(
    name: 'Derecho',
    description: 'Simulador EGEL en leyes, procesos jurídicos y ética profesional.',
    imagePath: 'assets/images/book_law.png',
    pdfImagePath: 'assets/images/book_law_pdf.png',
    color: Color(0xFFF59E0B),
  ),
  CareerInfo(
    name: 'Contaduría',
    description: 'Simulador EGEL en auditoría, impuestos, contabilidad y costos.',
    imagePath: 'assets/images/book_accounting.png',
    pdfImagePath: 'assets/images/book_accounting_pdf.png',
    color: Color(0xFF8B5CF6),
  ),
  CareerInfo(
    name: 'Ing. Industrial',
    description: 'Simulador EGEL en procesos, calidad, logística y mejora continua.',
    imagePath: 'assets/images/book_industrial.png',
    pdfImagePath: 'assets/images/book_industrial_pdf.png',
    color: Color(0xFF06B6D4),
  ),
  CareerInfo(
    name: 'Psicología',
    description: 'Simulador EGEL en clínica, social, organizacional y educativa.',
    imagePath: 'assets/images/book_psichology.png',
    pdfImagePath: 'assets/images/book_psichology_pdf.png',
    color: Color(0xFFEC4899),
  ),
  CareerInfo(
    name: 'Enfermería',
    description: 'Simulador EGEL en cuidados críticos, salud pública y gestión.',
    imagePath: 'assets/images/book_nursing.png',
    pdfImagePath: 'assets/images/book_nursing_pdf.png',
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
    final isMobile = MediaQuery.of(context).size.width < 768;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 48, vertical: 24),
      child: Row(
        children: [
          Row(
            children: [
              Image.asset('assets/images/lia_train_logo.png', height: isMobile ? 48 : 64),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'LIA-TRAIN',
                    style: TextStyle(
                      fontSize: isMobile ? 18 : 24,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      letterSpacing: 1.8,
                    ),
                  ),
                  Text(
                    'Simulador EGEL',
                    style: TextStyle(fontSize: 10, color: AppColors.textSecondary),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          if (!isMobile) ...[
            _buildNavBadge(Icons.bolt, 'Modo Examen Real'),
            const SizedBox(width: 24),
            _buildNavBadge(null, '40 Preguntas'),
            const SizedBox(width: 24),
            _buildNavBadge(Icons.access_time, '40 Minutos'),
            const SizedBox(width: 48),
          ],
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.person_outline, color: Colors.white, size: 20),
            label: Text(
              isMobile ? '' : 'Iniciar sesión',
              style: const TextStyle(color: Colors.white),
            ),
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
    final isMobile = MediaQuery.of(context).size.width < 768;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 24 : 80),
      child: Flex(
        direction: isMobile ? Axis.vertical : Axis.horizontal,
        crossAxisAlignment: isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: isMobile ? 0 : 5,
            child: Column(
              crossAxisAlignment: isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
              children: [
                _buildModeBadge(),
                const SizedBox(height: 24),
                RichText(
                  textAlign: isMobile ? TextAlign.center : TextAlign.start,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: isMobile ? 36 : 56,
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
                      const TextSpan(text: ' antes de presentarlo'),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  'Entrena con simulaciones tipo EGEL / 286, detecta tus\náreas débiles y asegura tu resultado con precisión IA.',
                  textAlign: isMobile ? TextAlign.center : TextAlign.start,
                  style: TextStyle(
                    fontSize: isMobile ? 16 : 20,
                    color: const Color(0xFF94A3B8),
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: isMobile ? 32 : 48),
                if (isMobile)
                  Column(
                    children: [
                      _buildFeatureItem(Icons.shield_outlined, 'Formato oficial', 'EGEL / 286'),
                      const SizedBox(height: 16),
                      _buildFeatureItem(Icons.psychology_outlined, 'Análisis IA', 'Resultados precisos'),
                      const SizedBox(height: 16),
                      _buildFeatureItem(Icons.trending_up, 'Mejora continua', 'Sigue tu progreso'),
                    ],
                  )
                else
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
          if (isMobile) const SizedBox(height: 48),
          Expanded(
            flex: isMobile ? 0 : 4,
            child: Center(
              child: Image.asset(
                'assets/images/hero_books.png',
                height: isMobile ? 240 : null,
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
    final isMobile = MediaQuery.of(context).size.width < 768;

    if (isMobile) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: careers.expand((c) => [
            CareerItem(info: c),
            const SizedBox(height: 32),
          ]).toList()..removeLast(),
        ),
      );
    }

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

class CareerItem extends ConsumerStatefulWidget {
  final CareerInfo info;
  const CareerItem({super.key, required this.info});

  @override
  ConsumerState<CareerItem> createState() => _CareerItemState();
}

class _CareerItemState extends ConsumerState<CareerItem> with SingleTickerProviderStateMixin {
  bool _isHovered = false;
  bool _isHoveredSimular = false;
  bool _isHoveredPdf = false;
  bool _isHoveredBundle = false;

  bool _isPressedSimular = false;
  bool _isPressedPdf = false;
  bool _isPressedBundle = false;

  late AnimationController _pulseController;
  late Animation<double> _pulseAnimation;

  @override
  void initState() {
    super.initState();
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat(reverse: true);
    _pulseAnimation = Tween<double>(begin: 1.0, end: 1.03).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _pulseController.dispose();
    super.dispose();
  }

  void _onSimularTap() {
    ref.read(examProvider.notifier).generateExam(
      career: widget.info.name == 'Ing. Industrial' ? 'Ingeniería Industrial' : widget.info.name,
    );
    Navigator.push(context, MaterialPageRoute(builder: (_) => const PreExamPage()));
  }

  void _onPdfTap() async {
    if (widget.info.pdfUrl != null) {
      final uri = Uri.parse(widget.info.pdfUrl!);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('No se pudo abrir el PDF.'), backgroundColor: Colors.red),
          );
        }
      }
    } else {
      _showPurchaseSnack();
    }
  }

  void _onBundleTap() {
    _showPurchaseSnack();
  }

  void _showPurchaseSnack() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Iniciando flujo de compra seguro...'),
        backgroundColor: Color(0xFF009EE3),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 768;

    return Container(
      margin: EdgeInsets.only(right: isMobile ? 0 : 20),
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: isMobile ? double.infinity : 280,
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 24 : 24,
            vertical: isMobile ? 48 : 30,
          ),
          decoration: BoxDecoration(
            color: const Color(0xFF0F172A).withOpacity(0.4),
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: _isHovered ? widget.info.color : Colors.white.withOpacity(0.08),
              width: 2,
            ),
            boxShadow: [
              if (_isHovered || isMobile)
                BoxShadow(
                  color: widget.info.color.withOpacity(isMobile ? 0.2 : 0.15),
                  blurRadius: 30,
                  spreadRadius: 2,
                ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(widget.info.imagePath, height: isMobile ? 140 : 100),
              const SizedBox(height: 20),
              Text(
                widget.info.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: isMobile ? 28 : 22,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                widget.info.description,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: isMobile ? 15 : 13,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 32),

              // 1. SIMULADOR (ENTRADA)
              _buildTapButton(
                isPressed: _isPressedSimular,
                onTapDown: (_) => setState(() => _isPressedSimular = true),
                onTapUp: (_) => setState(() => _isPressedSimular = false),
                onTapCancel: () => setState(() => _isPressedSimular = false),
                onHover: (v) => setState(() => _isHoveredSimular = v),
                isHovered: _isHoveredSimular,
                child: _buildSimpleButton(
                  text: "▶ Simular EGEL - \$149",
                  icon: null,
                  color: widget.info.color,
                  onTap: _onSimularTap,
                  isMobile: isMobile,
                ),
              ),

              const SizedBox(height: 12),

              // 2. GUÍA PDF (ALTERNATIVA)
              _buildTapButton(
                isPressed: _isPressedPdf,
                onTapDown: (_) => setState(() => _isPressedPdf = true),
                onTapUp: (_) => setState(() => _isPressedPdf = false),
                onTapCancel: () => setState(() => _isPressedPdf = false),
                onHover: (v) => setState(() => _isHoveredPdf = v),
                isHovered: _isHoveredPdf,
                child: _buildOutlineButton(
                  text: "📘 Guía PDF - \$299",
                  subtitle: "Estudia a tu ritmo",
                  color: widget.info.color,
                  onTap: _onPdfTap,
                  isMobile: isMobile,
                ),
              ),

              const SizedBox(height: 24),

              // 3. BUNDLE (CONVERSIÓN PRINCIPAL)
              Text(
                "🔥 MÁS POPULAR",
                style: TextStyle(
                  color: const Color(0xFFF59E0B),
                  fontWeight: FontWeight.w900,
                  fontSize: isMobile ? 13 : 12,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                "💎 Ahorra \$99 (antes \$448)",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: isMobile ? 12 : 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 12),
              _buildTapButton(
                isPressed: _isPressedBundle,
                onTapDown: (_) => setState(() => _isPressedBundle = true),
                onTapUp: (_) => setState(() => _isPressedBundle = false),
                onTapCancel: () => setState(() => _isPressedBundle = false),
                onHover: (v) => setState(() => _isHoveredBundle = v),
                isHovered: _isHoveredBundle,
                child: GestureDetector(
                  onTap: _onBundleTap,
                  child: AnimatedScale(
                    scale: (_isHoveredBundle && !isMobile) ? 1.03 : 1.0,
                    duration: const Duration(milliseconds: 200),
                    child: ScaleTransition(
                      scale: _pulseAnimation,
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical: isMobile ? 24 : 18),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [widget.info.color, widget.info.color.withOpacity(0.7)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: widget.info.color.withOpacity(0.6),
                              blurRadius: isMobile ? 25 : 20,
                              spreadRadius: isMobile ? 4 : 2,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Text(
                              "🔥 Todo incluido - \$349",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: isMobile ? 19 : 16,
                              ),
                            ),
                            Text(
                              "Guía + Simulador",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: isMobile ? 14 : 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                "🔥 Incluye 200 casos tipo examen real",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: isMobile ? 13 : 12,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTapButton({
    required bool isPressed,
    required Function(TapDownDetails) onTapDown,
    required Function(TapUpDetails) onTapUp,
    required VoidCallback onTapCancel,
    required Function(bool) onHover,
    required bool isHovered,
    required Widget child,
  }) {
    return MouseRegion(
      onEnter: (_) => onHover(true),
      onExit: (_) => onHover(false),
      child: GestureDetector(
        onTapDown: onTapDown,
        onTapUp: onTapUp,
        onTapCancel: onTapCancel,
        child: AnimatedScale(
          scale: isPressed ? 0.97 : 1.0,
          duration: const Duration(milliseconds: 100),
          child: child,
        ),
      ),
    );
  }

  Widget _buildSimpleButton({
    required String text,
    IconData? icon,
    required Color color,
    required VoidCallback onTap,
    required bool isMobile,
  }) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.symmetric(vertical: isMobile ? 18 : 14),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Icon(icon, color: Colors.white, size: isMobile ? 20 : 18),
              const SizedBox(width: 8),
            ],
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: isMobile ? 16 : 13,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOutlineButton({
    required String text,
    String? subtitle,
    required Color color,
    required VoidCallback onTap,
    required bool isMobile,
  }) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: color.withOpacity(0.5), width: 2),
          padding: EdgeInsets.symmetric(vertical: isMobile ? 14 : 14),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          backgroundColor: color.withOpacity(0.05),
        ),
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.w900,
                fontSize: isMobile ? 16 : 13,
              ),
            ),
            if (subtitle != null)
              Text(
                subtitle,
                style: TextStyle(
                  color: color.withOpacity(0.7),
                  fontWeight: FontWeight.w500,
                  fontSize: isMobile ? 13 : 11,
                ),
              ),
          ],
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
    final isMobile = MediaQuery.of(context).size.width < 768;

    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 48, vertical: 40),
      padding: EdgeInsets.all(isMobile ? 32 : 60),
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
      child: Flex(
        direction: isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          Expanded(
            flex: isMobile ? 0 : 3,
            child: Column(
              crossAxisAlignment: isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
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
                Text(
                  '¿Pasarías tu examen\nprofesional hoy?',
                  textAlign: isMobile ? TextAlign.center : TextAlign.start,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isMobile ? 32 : 48,
                    fontWeight: FontWeight.w900,
                    height: 1.1,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Descúbrelo en menos de 1 minuto con nuestro\nsimulador inteligente tipo EGEL / 286.',
                  textAlign: isMobile ? TextAlign.center : TextAlign.start,
                  style: TextStyle(
                    color: const Color(0xFF94A3B8),
                    fontSize: isMobile ? 16 : 20,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  height: 60,
                  width: isMobile ? double.infinity : null,
                  child: ElevatedButton(
                    onPressed: () {
                      context.go('/challenge');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.accent,
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      elevation: 20,
                      shadowColor: AppColors.accent.withOpacity(0.4),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
          if (isMobile) const SizedBox(height: 48),
          Expanded(
            flex: isMobile ? 0 : 2,
            child: Center(
              child: ScaleTransition(
                scale: _cardScale,
                child: Container(
                  width: isMobile ? 180 : 220,
                  height: isMobile ? 240 : 300,
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
               context.go('/challenge');
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