import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/module/admin/home/widget/card_animation.dart';

@RoutePage()
class HomeAdminPage extends StatelessWidget {
  const HomeAdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cards = [
      {'icon': Icons.person, 'title': 'User', 'route': const UserAdminRoute()},
      {'icon': Icons.schedule, 'title': 'Schedule', 'route': const ScheduleAdminRoute()},
      {'icon': Icons.settings, 'title': 'Zone', 'route': const ZoneAdminRoute()},
      {'icon': Icons.emoji_people_outlined, 'title': 'Employee', 'route': const EmployeeAdminRoute()},
      {'icon': Icons.analytics, 'title': 'Analysis', 'route': const AnalysisAdminRoute()},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Home Admin'), automaticallyImplyLeading: false, centerTitle: true, elevation: 0),
      body: AnimationLimiter(
        child: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(16),
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: List.generate(cards.length, (index) {
            final card = cards[index];
            return AnimationConfiguration.staggeredGrid(
              position: index,
              columnCount: 2,
              duration: const Duration(milliseconds: 500),
              child: ScaleAnimation(
                child: FadeInAnimation(
                  child: AnimatedCard(
                    icon: card['icon'] as IconData,
                    title: card['title'] as String,
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
    );
  }
}
