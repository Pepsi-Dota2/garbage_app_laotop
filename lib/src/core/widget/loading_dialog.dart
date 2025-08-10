import 'package:flutter/material.dart';

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            SizedBox(width: 28, height: 28, child: CircularProgressIndicator(strokeWidth: 3)),
            SizedBox(width: 20),
            Text(
              "Please wait...",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}
