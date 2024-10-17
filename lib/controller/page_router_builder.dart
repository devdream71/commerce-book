import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

CustomTransitionPage fadeInRightToLeftTransition(Widget page) {
  return CustomTransitionPage(
    child: page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      // Define the fade and right-to-left slide animation
      const beginOffset = Offset(1.0, 0.0);  // Start from the right (1.0, 0.0)
      const endOffset = Offset.zero;         // End at the center (0.0, 0.0)
      const curve = Curves.easeInOut;        // Use the ease-in-out curve

      final offsetAnimation = animation.drive(
        Tween(begin: beginOffset, end: endOffset).chain(CurveTween(curve: curve)),
      );

      final fadeAnimation = animation.drive(
        Tween<double>(begin: 0.0, end: 1.0).chain(CurveTween(curve: curve)),
      );

      return FadeTransition(
        opacity: fadeAnimation,
        child: SlideTransition(position: offsetAnimation, child: child),
      );
    },
  );
}

  