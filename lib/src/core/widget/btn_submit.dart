import 'package:flutter/material.dart';

class BtnFromSubmit extends StatelessWidget {
  final Function() onPressed;
  final String? title;
  const BtnFromSubmit({super.key, required this.onPressed, this.title});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height * 0.05,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          // ignore: deprecated_member_use
          shadowColor: Colors.black.withOpacity(0.2),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        child: Text(title ?? "save"),
      ),
    );
  }
}
