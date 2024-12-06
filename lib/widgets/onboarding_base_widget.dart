import 'package:flutter/material.dart';

class OnboardingBaseWidget extends StatelessWidget {
  final Widget? body;
  const OnboardingBaseWidget({super.key, this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(8, 8),
        child: Container(
          color: const Color.fromRGBO(188, 23, 35, 1),
        ),
      ),
      body: body,
    );
  }
}
