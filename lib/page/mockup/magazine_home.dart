import 'package:flutter/material.dart' hide NavigationDrawer;
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:whiteforest_website/component/drawer/drawer_mobile.dart';
import 'package:whiteforest_website/component/footer/footer.dart';
import 'package:whiteforest_website/page/booking/booking_page.dart';
import 'package:whiteforest_website/page/home/home_page.dart';
import 'package:whiteforest_website/page/summer/activity/activity_summer_page.dart';
import 'package:whiteforest_website/page/winter/activity/activity_winter_page.dart';
import 'package:whiteforest_website/shared/utils.dart';

class MagazineHome extends StatelessWidget {
  static const routeName = HomePage.routeName;

  MagazineHome({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  static const _cream = Color(0xFFF5F0E8);
  static const _ink = Color(0xFF1F1A14);
  static const _accent = Color(0xFFB8895A);

  TextStyle _serif({
    double size = 16,
    FontWeight weight = FontWeight.w400,
    Color? color,
    double? height,
    FontStyle? style,
    double? letterSpacing,
  }) {
    return GoogleFonts.cormorantGaramond(
      fontSize: size,
      fontWeight: weight,
      color: color ?? _ink,
      height: height,
      fontStyle: style,
      letterSpacing: letterSpacing,
    );
  }

  TextStyle _sans({
    double size = 14,
    FontWeight weight = FontWeight.w400,
    Color? color,
    double? letterSpacing,
    double? height,
  }) {
    return GoogleFonts.manrope(
      fontSize: size,
      fontWeight: weight,
      color: color ?? _ink,
      letterSpacing: letterSpacing,
      height: height,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: _cream,
      appBar: getTopBar(context, _key, MagazineHome.routeName),
      drawer: const DrawerMobile(MagazineHome.routeName),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          _Hero(serif: _serif, sans: _sans, ink: _ink, accent: _accent),
          _StoryIntro(
            serif: _serif,
            sans: _sans,
            ink: _ink,
            accent: _accent,
            cream: _cream,
          ),
          _FullBleedQuote(serif: _serif, sans: _sans),
          _ActivitiesPreview(
            serif: _serif,
            sans: _sans,
            ink: _ink,
            accent: _accent,
          ),
          _ClosingCTA(serif: _serif, sans: _sans, ink: _ink, accent: _accent),
          const Footer(),
        ],
      ),
    );
  }
}

// ============================================================
// HERO
// ============================================================
class _Hero extends StatelessWidget {
  const _Hero({
    required this.serif,
    required this.sans,
    required this.ink,
    required this.accent,
  });

  final TextStyle Function({
    double size,
    FontWeight weight,
    Color? color,
    double? height,
    FontStyle? style,
    double? letterSpacing,
  })
  serif;
  final TextStyle Function({
    double size,
    FontWeight weight,
    Color? color,
    double? letterSpacing,
    double? height,
  })
  sans;
  final Color ink;
  final Color accent;

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile;
    final h = MediaQuery.of(context).size.height - kToolbarHeight;

    return SizedBox(
      height: h,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/header/${getPathImage(context)}header_winter.webp',
            fit: BoxFit.cover,
          ),
          // Subtle vignette
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withValues(alpha: 0.15),
                  Colors.transparent,
                  Colors.black.withValues(alpha: 0.55),
                ],
                stops: const [0, 0.5, 1],
              ),
            ),
          ),

          // Top-right small label
          Positioned(
            top: 24,
            right: isMobile ? 20 : 48,
            child: Row(
              children: [
                Container(
                  width: 24,
                  height: 1,
                  color: Colors.white.withValues(alpha: 0.7),
                ),
                const SizedBox(width: 8),
                Text(
                  'EST. 2018 · SAVOIE',
                  style: sans(
                    size: 11,
                    color: Colors.white.withValues(alpha: 0.85),
                    weight: FontWeight.w500,
                    letterSpacing: 3,
                  ),
                ),
              ],
            ),
          ),

          // Bottom-left editorial title
          Positioned(
            left: isMobile ? 20 : 64,
            bottom: isMobile ? 80 : 110,
            right: isMobile ? 20 : null,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'NUMÉRO 01 — L\'AVENTURE',
                  style: sans(
                    size: 11,
                    color: Colors.white.withValues(alpha: 0.8),
                    weight: FontWeight.w600,
                    letterSpacing: 4,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Chiens',
                  style: serif(
                    size: isMobile ? 64 : 132,
                    weight: FontWeight.w300,
                    color: Colors.white,
                    height: 0.95,
                    style: FontStyle.italic,
                  ),
                ),
                Transform.translate(
                  offset: Offset(isMobile ? 40 : 100, -10),
                  child: Text(
                    'de traineau',
                    style: serif(
                      size: isMobile ? 44 : 90,
                      weight: FontWeight.w400,
                      color: Colors.white,
                      height: 0.95,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Container(width: 48, height: 1, color: accent),
                const SizedBox(height: 16),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 380),
                  child: Text(
                    'Une parenthèse hors du temps, entre les Aiguilles d\'Arves et la vallée de la Maurienne.',
                    style: sans(
                      size: isMobile ? 14 : 16,
                      color: Colors.white.withValues(alpha: 0.9),
                      weight: FontWeight.w300,
                      height: 1.6,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Bottom scroll indicator
          Positioned(
            bottom: 24,
            left: 0,
            right: 0,
            child: Center(
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => Scrollable.of(context).position.animateTo(
                    h,
                    duration: const Duration(milliseconds: 600),
                    curve: Curves.easeInOut,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'DÉCOUVRIR',
                          style: sans(
                            size: 10,
                            color: Colors.white.withValues(alpha: 0.7),
                            letterSpacing: 4,
                            weight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          width: 1,
                          height: 28,
                          color: Colors.white.withValues(alpha: 0.5),
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

// ============================================================
// STORY INTRO — Typography driven, NO card
// ============================================================
class _StoryIntro extends StatelessWidget {
  const _StoryIntro({
    required this.serif,
    required this.sans,
    required this.ink,
    required this.accent,
    required this.cream,
  });

  final TextStyle Function({
    double size,
    FontWeight weight,
    Color? color,
    double? height,
    FontStyle? style,
    double? letterSpacing,
  })
  serif;
  final TextStyle Function({
    double size,
    FontWeight weight,
    Color? color,
    double? letterSpacing,
    double? height,
  })
  sans;
  final Color ink;
  final Color accent;
  final Color cream;

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile;
    // Colonne « 01 » à gauche seulement sur desktop : en tablette le texte serait écrasé.
    final isDesktop = ResponsiveBreakpoints.of(context).largerThan(TABLET);

    return Container(
      width: double.infinity,
      color: cream,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : (isDesktop ? 80 : 48),
        vertical: isMobile ? 80 : (isDesktop ? 140 : 100),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1100),
          child: !isDesktop
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _buildContent(context, isMobile, true),
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Left: section number
                    SizedBox(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '01',
                            style: serif(
                              size: 88,
                              weight: FontWeight.w300,
                              color: accent,
                              height: 1,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Container(width: 32, height: 1, color: ink),
                          const SizedBox(height: 12),
                          Text(
                            'NOTRE HISTOIRE',
                            style: sans(
                              size: 11,
                              weight: FontWeight.w600,
                              letterSpacing: 3,
                              color: ink,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 80),
                    // Right: editorial text
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: _buildContent(context, isMobile, false),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  List<Widget> _buildContent(
    BuildContext context,
    bool isMobile,
    bool includeNumber,
  ) {
    return [
      if (includeNumber) ...[
        Text(
          '01',
          style: serif(
            size: isMobile ? 56 : 72,
            weight: FontWeight.w300,
            color: accent,
            height: 1,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'NOTRE HISTOIRE',
          style: sans(
            size: 10,
            weight: FontWeight.w600,
            letterSpacing: 3,
            color: ink,
          ),
        ),
        const SizedBox(height: 40),
      ],
      Text(
        'Bienvenue chez',
        style: serif(
          size: isMobile ? 28 : 36,
          weight: FontWeight.w400,
          color: ink,
          style: FontStyle.italic,
          height: 1.1,
        ),
      ),
      const SizedBox(height: 4),
      Text(
        'White Forest.',
        style: serif(
          size: isMobile
              ? 48
              : ResponsiveBreakpoints.of(context).largerThan(TABLET)
              ? 76
              : 64,
          weight: FontWeight.w400,
          color: ink,
          height: 1.05,
        ),
      ),
      const SizedBox(height: 36),
      ConstrainedBox(
        // Longueur de ligne lisible en tablette, où le texte prend toute la largeur.
        constraints: const BoxConstraints(maxWidth: 680),
        child: Text(
          'Situés en Savoie, dans la vallée de la Maurienne au plus près de Foncouverte La Toussuire, nous vous offrons la possibilité de vivre une expérience unique avec nos chiens de traineau.',
          style: sans(
            size: isMobile ? 16 : 18,
            color: ink,
            weight: FontWeight.w400,
            height: 1.75,
          ),
        ),
      ),
      const SizedBox(height: 24),
      ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 680),
        child: Text(
          'Pour tous les âges, plus ou moins physique, ou simplement une visite du chenil. En été comme en hiver, sur la neige ou sur terre, Méléanne et son équipe vous accompagneront pour un moment inoubliable.',
          style: sans(
            size: isMobile ? 14 : 15,
            color: ink.withValues(alpha: 0.75),
            weight: FontWeight.w400,
            height: 1.8,
          ),
        ),
      ),
    ];
  }
}

// ============================================================
// FULL-BLEED QUOTE
// ============================================================
class _FullBleedQuote extends StatelessWidget {
  const _FullBleedQuote({required this.serif, required this.sans});

  final TextStyle Function({
    double size,
    FontWeight weight,
    Color? color,
    double? height,
    FontStyle? style,
    double? letterSpacing,
  })
  serif;
  final TextStyle Function({
    double size,
    FontWeight weight,
    Color? color,
    double? letterSpacing,
    double? height,
  })
  sans;

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile;

    return SizedBox(
      height: isMobile ? 500 : 700,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/home/${getPathImage(context)}home_page_winter.webp',
            fit: BoxFit.cover,
          ),
          Container(color: Colors.black.withValues(alpha: 0.35)),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: isMobile ? 24 : 80),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 900),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '«',
                      style: serif(
                        size: isMobile ? 80 : 140,
                        color: Colors.white.withValues(alpha: 0.6),
                        weight: FontWeight.w300,
                        height: 1,
                      ),
                    ),
                    Text(
                      'Chacun avec sa personnalité contribue à la grande famille de White Forest.',
                      textAlign: TextAlign.center,
                      style: serif(
                        size: isMobile ? 26 : 44,
                        color: Colors.white,
                        weight: FontWeight.w400,
                        style: FontStyle.italic,
                        height: 1.3,
                      ),
                    ),
                    const SizedBox(height: 32),
                    Container(
                      width: 32,
                      height: 1,
                      color: Colors.white.withValues(alpha: 0.5),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'MÉLÉANNE — MUSHEUSE',
                      style: sans(
                        size: 11,
                        color: Colors.white.withValues(alpha: 0.8),
                        weight: FontWeight.w500,
                        letterSpacing: 3,
                      ),
                    ),
                    const SizedBox(height: 32),
                    Text(
                      '35 chiens de traineau, pour la plupart rescapés '
                      "d'abandon, quelques-uns nés à la maison.",
                      textAlign: TextAlign.center,
                      style: sans(
                        size: isMobile ? 15 : 17,
                        color: Colors.white.withValues(alpha: 0.9),
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// ACTIVITIES PREVIEW — Editorial layout, no cards
// ============================================================
class _ActivitiesPreview extends StatelessWidget {
  const _ActivitiesPreview({
    required this.serif,
    required this.sans,
    required this.ink,
    required this.accent,
  });

  final TextStyle Function({
    double size,
    FontWeight weight,
    Color? color,
    double? height,
    FontStyle? style,
    double? letterSpacing,
  })
  serif;
  final TextStyle Function({
    double size,
    FontWeight weight,
    Color? color,
    double? letterSpacing,
    double? height,
  })
  sans;
  final Color ink;
  final Color accent;

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile;

    final activities = [
      _ActivityData(
        kicker: 'HIVER · 30 MIN',
        title: 'Baptême en traineau',
        excerpt: 'Assis dans le traineau, guidé par dix chiens, vivez un moment de partage hors du temps.',
        image:
            'assets/images/winter/${getPathImage(context)}bapteme_traineau.webp',
        onTap: () => context.go(
          ActivityWinterPage.routeName,
          extra: {ActivityWinterPage.indexAnchorKey: 0},
        ),
      ),
      _ActivityData(
        kicker: 'ÉTÉ · 1H30 / 2H',
        title: 'Cani-randonnée',
        excerpt: 'Tracté par un chien, parcourez les sentiers et créez un lien unique avec votre compagnon.',
        image: 'assets/images/summer/${getPathImage(context)}cani_rando.webp',
        onTap: () => context.go(
          ActivitySummerPage.routeName,
          extra: {ActivitySummerPage.indexAnchorKey: 1},
        ),
      ),
      _ActivityData(
        kicker: 'TOUTE L\'ANNÉE · 1H',
        title: 'Visite du chenil',
        excerpt: 'Une heure auprès de trente-cinq chiens, à l\'écoute du métier de musher.',
        image: 'assets/images/summer/${getPathImage(context)}chenil.webp',
        onTap: () => context.go(
          ActivitySummerPage.routeName,
          extra: {ActivitySummerPage.indexAnchorKey: 3},
        ),
      ),
    ];

    return Container(
      color: const Color(0xFFF5F0E8),
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 80,
        vertical: isMobile ? 80 : 120,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1100),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '02 — NOS EXPÉRIENCES',
                          style: sans(
                            size: 11,
                            color: ink,
                            weight: FontWeight.w600,
                            letterSpacing: 3,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Été ou hiver,',
                          style: serif(
                            size: isMobile ? 36 : 60,
                            weight: FontWeight.w400,
                            color: ink,
                            height: 1.05,
                          ),
                        ),
                        Text(
                          'à vous de choisir.',
                          style: serif(
                            size: isMobile ? 36 : 60,
                            weight: FontWeight.w400,
                            color: ink,
                            style: FontStyle.italic,
                            height: 1.05,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: isMobile ? 48 : 80),

          // Activities list — editorial
          ...activities.asMap().entries.map((entry) {
            final index = entry.key;
            final activity = entry.value;
            final isReversed = index.isOdd;
            return Padding(
              padding: EdgeInsets.only(bottom: isMobile ? 64 : 100),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1100),
                  child: _EditorialRow(
                    data: activity,
                    index: index + 1,
                    reversed: isReversed,
                    serif: serif,
                    sans: sans,
                    ink: ink,
                    accent: accent,
                    isMobile: isMobile,
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}

class _ActivityData {
  _ActivityData({
    required this.kicker,
    required this.title,
    required this.excerpt,
    required this.image,
    required this.onTap,
  });

  final String kicker;
  final String title;
  final String excerpt;
  final String image;
  final VoidCallback onTap;
}

class _EditorialRow extends StatelessWidget {
  const _EditorialRow({
    required this.data,
    required this.index,
    required this.reversed,
    required this.serif,
    required this.sans,
    required this.ink,
    required this.accent,
    required this.isMobile,
  });

  final _ActivityData data;
  final int index;
  final bool reversed;
  final TextStyle Function({
    double size,
    FontWeight weight,
    Color? color,
    double? height,
    FontStyle? style,
    double? letterSpacing,
  })
  serif;
  final TextStyle Function({
    double size,
    FontWeight weight,
    Color? color,
    double? letterSpacing,
    double? height,
  })
  sans;
  final Color ink;
  final Color accent;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    final image = SizedBox(
      height: isMobile ? 280 : 480,
      child: Image.asset(data.image, fit: BoxFit.cover),
    );

    // Côte à côte seulement sur desktop : en tablette la colonne texte est trop étroite.
    final stacked = !ResponsiveBreakpoints.of(context).largerThan(TABLET);

    final text = Padding(
      padding: EdgeInsets.symmetric(
        horizontal: stacked ? 0 : 40,
        vertical: stacked ? 24 : 0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                index.toString().padLeft(2, '0'),
                style: serif(
                  size: 36,
                  color: accent,
                  weight: FontWeight.w300,
                  height: 1,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  data.kicker,
                  style: sans(
                    size: 11,
                    weight: FontWeight.w600,
                    letterSpacing: 3,
                    color: ink.withValues(alpha: 0.7),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            data.title,
            style: serif(
              size: isMobile ? 32 : 44,
              weight: FontWeight.w400,
              color: ink,
              height: 1.1,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            data.excerpt,
            style: sans(
              size: isMobile ? 15 : 17,
              color: ink.withValues(alpha: 0.8),
              weight: FontWeight.w400,
              height: 1.7,
            ),
          ),
          const SizedBox(height: 28),
          // Editorial CTA — no button, just underlined link
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: data.onTap,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'LIRE LA SUITE',
                      style: sans(
                        size: 11,
                        color: ink,
                        weight: FontWeight.w700,
                        letterSpacing: 3,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(width: 40, height: 1, color: ink),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );

    if (stacked) {
      return Column(children: [image, text]);
    }

    return SizedBox(
      height: 480,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: reversed
            ? [Expanded(flex: 5, child: text), Expanded(flex: 6, child: image)]
            : [Expanded(flex: 6, child: image), Expanded(flex: 5, child: text)],
      ),
    );
  }
}

// ============================================================
// CLOSING CTA
// ============================================================
class _ClosingCTA extends StatelessWidget {
  const _ClosingCTA({
    required this.serif,
    required this.sans,
    required this.ink,
    required this.accent,
  });

  final TextStyle Function({
    double size,
    FontWeight weight,
    Color? color,
    double? height,
    FontStyle? style,
    double? letterSpacing,
  })
  serif;
  final TextStyle Function({
    double size,
    FontWeight weight,
    Color? color,
    double? letterSpacing,
    double? height,
  })
  sans;
  final Color ink;
  final Color accent;

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile;
    return Container(
      width: double.infinity,
      color: ink,
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: isMobile ? 100 : 160,
      ),
      child: Column(
        children: [
          Text(
            '03 — PRENDRE PART',
            style: sans(
              size: 11,
              color: Colors.white.withValues(alpha: 0.7),
              weight: FontWeight.w600,
              letterSpacing: 3,
            ),
          ),
          const SizedBox(height: 32),
          Text(
            'Une parenthèse',
            textAlign: TextAlign.center,
            style: serif(
              size: isMobile ? 40 : 80,
              color: Colors.white,
              weight: FontWeight.w300,
              height: 1.05,
            ),
          ),
          Text(
            'vous attend.',
            textAlign: TextAlign.center,
            style: serif(
              size: isMobile ? 40 : 80,
              color: accent,
              weight: FontWeight.w400,
              style: FontStyle.italic,
              height: 1.05,
            ),
          ),
          const SizedBox(height: 48),
          // Editorial CTA
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () => context.go(BookingPage.routeName),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 18,
                ),
                decoration: Border(
                  bottom: BorderSide(color: accent, width: 1),
                  top: BorderSide(color: accent, width: 1),
                ).toBoxDecoration(),
                child: Text(
                  'RÉSERVER VOTRE EXPÉRIENCE',
                  style: sans(
                    size: 12,
                    color: Colors.white,
                    weight: FontWeight.w600,
                    letterSpacing: 4,
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

extension on Border {
  BoxDecoration toBoxDecoration() => BoxDecoration(border: this);
}
