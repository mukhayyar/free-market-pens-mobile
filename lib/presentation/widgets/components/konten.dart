import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/theme.dart';

class Konten extends StatelessWidget {
  final String judulKeterangan;
  final dynamic keterangan;
  final dynamic trailing;

  const Konten(
      {super.key,
      required this.judulKeterangan,
      required this.keterangan,
      this.trailing});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  judulKeterangan,
                  style: const TextStyle(fontSize: 14),
                ),
              ),
              if (trailing != null) Center(child: trailing),
            ],
          ),
          const SizedBox(height: 8),
          if (keterangan is String)
            Text(
              keterangan,
              style: tertiaryTextStyle,
            )
          else
            trailing != null
                ? Transform.translate(
                    offset: const Offset(0, -10),
                    child: keterangan,
                  )
                : keterangan
        ],
      ),
    );
  }
}
