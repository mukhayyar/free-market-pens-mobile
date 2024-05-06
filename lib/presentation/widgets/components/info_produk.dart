import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/theme.dart';

class InfoProduk extends StatelessWidget {
  final String judulKeterangan;
  final dynamic keterangan;

  const InfoProduk(
      {super.key, required this.judulKeterangan, required this.keterangan});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            judulKeterangan,
            style: const TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 8),
          if (keterangan is String)
            Text(
              keterangan,
              style: tertiaryTextStyle,
            )
          else
            keterangan
        ],
      ),
    );
  }
}
