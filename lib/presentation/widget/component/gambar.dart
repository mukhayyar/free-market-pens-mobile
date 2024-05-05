import 'package:flutter/material.dart';

class Gambar extends StatelessWidget {
  final double? width;
  final double? height;
  final String stringGambar;

  const Gambar(
      {super.key, this.width, this.height, required this.stringGambar});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          stringGambar,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
