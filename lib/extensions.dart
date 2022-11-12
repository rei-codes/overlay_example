import 'package:flutter/cupertino.dart';

import 'toast_widget.dart';

extension ToastExtension on BuildContext {
  void showToast(
    String text, {
    Duration duration = const Duration(seconds: 3),
    Duration transitionDuration = const Duration(milliseconds: 250),
  }) {
    // Get the OverlayState
    final overlayState = Overlay.of(this);
    // Create an OverlayEntry with your custom widget
    final toast = OverlayEntry(
      builder: (_) => ToastWidget(
        text: text,
        transitionDuration: transitionDuration,
        duration: duration,
      ),
    );
    // then insert it to the overlay
    // this will show the toast widget on the screen
    overlayState!.insert(toast);
    // 3 secs later remove the toast from the stack
    // and this one will remove the toast from the screen
    Future.delayed(duration, toast.remove);
  }
}
