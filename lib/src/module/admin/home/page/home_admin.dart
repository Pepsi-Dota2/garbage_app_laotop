import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:hr_app/src/core/router/router.dart';

@RoutePage()
class HomeAdminPage extends StatelessWidget {
  const HomeAdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final cards = [
      {
        'icon': Icons.people_rounded,
        'title': 'Users',
        'subtitle': 'Manage user accounts',
        'route': const UserAdminRoute(),
        'color': const Color(0xFF6366F1), // Indigo
        'gradient': [const Color(0xFF6366F1), const Color(0xFF8B5CF6)],
      },
      {
        'icon': Icons.schedule_rounded,
        'title': 'Schedule',
        'subtitle': 'Plan work schedules',
        'route': const ScheduleAdminRoute(),
        'color': const Color(0xFF10B981), // Emerald
        'gradient': [const Color(0xFF10B981), const Color(0xFF06B6D4)],
      },
      {
        'icon': Icons.location_on_rounded,
        'title': 'Zones',
        'subtitle': 'Configure work zones',
        'route': const ZoneAdminRoute(),
        'color': const Color(0xFFF59E0B), // Amber
        'gradient': [const Color(0xFFF59E0B), const Color(0xFFEF4444)],
      },
      {
        'icon': Icons.badge_rounded,
        'title': 'Employees',
        'subtitle': 'Employee management',
        'route': const EmployeeAdminRoute(),
        'color': const Color(0xFF8B5CF6), // Purple
        'gradient': [const Color(0xFF8B5CF6), const Color(0xFFEC4899)],
      },
      {
        'icon': Icons.analytics_rounded,
        'title': 'Analytics',
        'subtitle': 'View insights & reports',
        'route': const AnalysisAdminRoute(),
        'color': const Color(0xFF06B6D4), // Cyan
        'gradient': [const Color(0xFF06B6D4), const Color(0xFF10B981)],
      },
    ];

    return Scaffold(
      backgroundColor: isDark ? const Color(0xFF0F1419) : const Color(0xFFF8FAFC),
      body: CustomScrollView(
        slivers: [
          // Modern App Bar with gradient
          SliverAppBar(
            expandedHeight: 140,
            floating: false,
            pinned: true,
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Colors.transparent,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: isDark ? [const Color(0xFF1E293B), const Color(0xFF334155)] : [const Color(0xFF6366F1), const Color(0xFF8B5CF6)],
                ),
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(32), bottomRight: Radius.circular(32)),
              ),
              child: FlexibleSpaceBar(
                title: const Text(
                  'Admin Dashboard',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 24),
                ),
                centerTitle: true,
                background: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(32), bottomRight: Radius.circular(32)),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: -50,
                        top: -50,
                        child: Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white.withOpacity(0.1)),
                        ),
                      ),
                      Positioned(
                        left: -30,
                        bottom: -30,
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white.withOpacity(0.1)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Welcome Section
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome back! 👋',
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: isDark ? Colors.white : const Color(0xFF1E293B),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Manage your HR operations with ease',
                    style: theme.textTheme.bodyLarge?.copyWith(color: isDark ? Colors.grey[400] : Colors.grey[600], fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),

          // Cards Grid
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            sliver: SliverToBoxAdapter(
              child: AnimationLimiter(
                child: GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.85,
                  children: List.generate(cards.length, (index) {
                    final card = cards[index];
                    return AnimationConfiguration.staggeredGrid(
                      position: index,
                      columnCount: 2,
                      duration: const Duration(milliseconds: 600),
                      child: SlideAnimation(
                        verticalOffset: 50,
                        child: FadeInAnimation(
                          child: _ModernAdminCard(
                            icon: card['icon'] as IconData,
                            title: card['title'] as String,
                            subtitle: card['subtitle'] as String,
                            color: card['color'] as Color,
                            gradient: card['gradient'] as List<Color>,
                            onTap: () async {
                              if (card['route'] != null) {
                                await context.router.push(card['route'] as PageRouteInfo);
                              }
                            },
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),

          // Bottom spacing
          const SliverToBoxAdapter(child: SizedBox(height: 32)),
        ],
      ),
    );
  }
}

class _ModernAdminCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;
  final List<Color> gradient;
  final VoidCallback onTap;

  const _ModernAdminCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.gradient,
    required this.onTap,
  });

  @override
  State<_ModernAdminCard> createState() => _ModernAdminCardState();
}

class _ModernAdminCardState extends State<_ModernAdminCard> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  bool _isPressed = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(duration: const Duration(milliseconds: 200), vsync: this);
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.95).animate(CurvedAnimation(parent: _animationController, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return AnimatedBuilder(
      animation: _scaleAnimation,
      builder: (context, child) {
        return Transform.scale(
          scale: _scaleAnimation.value,
          child: GestureDetector(
            onTapDown: (_) {
              setState(() => _isPressed = true);
              _animationController.forward();
            },
            onTapUp: (_) {
              setState(() => _isPressed = false);
              _animationController.reverse();
              widget.onTap();
            },
            onTapCancel: () {
              setState(() => _isPressed = false);
              _animationController.reverse();
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(color: widget.color.withOpacity(_isPressed ? 0.3 : 0.2), blurRadius: _isPressed ? 20 : 15, offset: const Offset(0, 8)),
                  BoxShadow(
                    color: isDark ? Colors.black.withOpacity(0.3) : Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Material(
                borderRadius: BorderRadius.circular(24),
                color: Colors.transparent,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: isDark ? [const Color(0xFF1E293B), const Color(0xFF334155)] : [Colors.white, Colors.grey.shade50],
                    ),
                    border: Border.all(color: isDark ? Colors.grey.shade800 : Colors.grey.shade200, width: 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Icon with gradient background
                      Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: widget.gradient),
                          boxShadow: [BoxShadow(color: widget.color.withOpacity(0.3), blurRadius: 12, offset: const Offset(0, 4))],
                        ),
                        child: Icon(widget.icon, color: Colors.white, size: 28),
                      ),

                      // Text content
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.title,
                            style: theme.textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: isDark ? Colors.white : const Color(0xFF1E293B),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            widget.subtitle,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: isDark ? Colors.grey[400] : Colors.grey[600],
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
