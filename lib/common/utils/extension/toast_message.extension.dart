import 'package:flutter/material.dart';
import 'package:starbucks_app/common/utils/extension/context_extension.dart';

import '../durations_items.dart';

extension ToastMessageExt on BuildContext {
  void customToastMessage({
    required String message,
    double? width,
    Duration? duration,
    Color? backgroundColor,
    required BuildContext context,
  }) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          elevation: 0,
          width: width ?? 200,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(context.hw20)),
          behavior: SnackBarBehavior.floating,
          backgroundColor:
              backgroundColor ?? const Color.fromARGB(175, 55, 54, 54),
          duration: duration ?? DurationItems.durationHigh(),
          content: Text(message, textAlign: TextAlign.center),
        ),
      );
  }
}
