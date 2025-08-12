import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';

class CustomDialogWidget {
  static Future<void> show(
    BuildContext context, {
    String? title,
    String? message,
    String? okLabel,
    String? cancelLabel,
    VoidCallback? onOkPressed,
  }) async {
    final result = await showOkCancelAlertDialog(
      context: context,
      title: title ?? 'Info',
      message: message ?? 'No message provided.',
      okLabel: okLabel ?? 'OK',
      cancelLabel: cancelLabel ?? 'Cancel',
      // useActionSheetForIOS: true,
      style: AdaptiveStyle.iOS,
    );

    if (result == OkCancelResult.ok && onOkPressed != null) {
      onOkPressed();
    }
  }
}
