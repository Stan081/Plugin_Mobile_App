import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient? gradient;
  final VoidCallback? onPressed;
  final Widget child;

  const MyElevatedButton(
      {super.key,
      required this.onPressed,
      required this.child,
      this.borderRadius,
      this.width,
      this.height = 48.0,
      this.gradient});

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(8);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        height: height,
        decoration: BoxDecoration(
          gradient: gradient ??
              const LinearGradient(colors: [
                Color.fromRGBO(188, 22, 34, 1),
                Color.fromRGBO(244, 112, 45, 1),
              ]),
          borderRadius: borderRadius,
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(borderRadius: borderRadius),
              elevation: 20),
          child: child,
        ),
      ),
    );
  }
}
