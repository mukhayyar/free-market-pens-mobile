import 'package:flutter/material.dart';

class LatarSetengahLingkaran extends StatelessWidget {
  const LatarSetengahLingkaran({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -170,
      left: 0,
      right: 0,
      child: Container(
        height: 250,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.elliptical(220, 100)),
          shape: BoxShape.rectangle,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}
