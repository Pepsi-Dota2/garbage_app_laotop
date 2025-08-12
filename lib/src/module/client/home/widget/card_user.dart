import 'package:flutter/material.dart';

class CardUserWidget extends StatelessWidget {
  final String name;
  final String email;

  const CardUserWidget({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [Color(0xFFa8e063), Color(0xFF56ab2f)], begin: Alignment.topLeft, end: Alignment.bottomRight),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [BoxShadow(color: Colors.green.withOpacity(0.3), blurRadius: 10, offset: const Offset(0, 6))],
      ),
      child: Material(
        color: Colors.transparent,
        child: Row(
          children: [
            TweenAnimationBuilder<double>(
              tween: Tween(begin: 0.0, end: 1.0),
              duration: const Duration(seconds: 1),
              curve: Curves.easeOutBack,
              builder: (context, scale, child) {
                return Transform.scale(
                  scale: scale,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(color: Colors.white.withOpacity(0.2), shape: BoxShape.circle),
                    child: const Icon(Icons.delete_outline, color: Colors.white, size: 28),
                  ),
                );
              },
            ),
            const SizedBox(width: 16),

            // User info + Price column
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  const SizedBox(height: 6),
                  Text(email, style: TextStyle(fontSize: 14, color: Colors.white.withOpacity(0.85))),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(color: Colors.white24, borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.monetization_on_outlined, color: Colors.white70, size: 18),
                        SizedBox(width: 6),
                        Text(
                          "ລາຄາຂື້ເຫຍື້ອຕໍ່ເດືອນ: 30,000 kip",
                          style: TextStyle(color: Colors.white70, fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Forward arrow
            const Icon(Icons.arrow_forward_ios, size: 20, color: Colors.white70),
          ],
        ),
      ),
    );
  }
}
