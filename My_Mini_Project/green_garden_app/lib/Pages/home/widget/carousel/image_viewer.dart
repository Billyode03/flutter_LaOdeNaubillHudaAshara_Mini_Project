import 'package:flutter/material.dart';

class CustomImageViewer {
  CustomImageViewer._();

  static Show(
      {required BuildContext context,
      required String assetPath,
      BoxFit? fit,
      double? radius}) {
    return Image.asset(
      assetPath,
      fit: fit ?? BoxFit.cover,
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded) {
          return child;
        }
        return AnimatedOpacity(
          opacity: frame == null ? 0 : 1,
          duration: const Duration(milliseconds: 300),
          child: child,
        );
      },
      errorBuilder: (context, error, stackTrace) =>
          const Icon(Icons.error_outline),
    );
  }
}
