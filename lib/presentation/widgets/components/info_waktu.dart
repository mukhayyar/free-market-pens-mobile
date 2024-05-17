import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/theme.dart';

class InfoWaktu extends StatelessWidget {
  final String tanggal;
  final String jam;

  const InfoWaktu({super.key, required this.tanggal, required this.jam});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.calendar_today),
        const SizedBox(width: 8),
        Expanded(
          flex: 2,
          child: Text(
            tanggal,
            style: tertiaryTextStyle,
          ),
        ),
        const Icon(Icons.access_time_outlined),
        const SizedBox(width: 8),
        Expanded(
          flex: 2,
          child: Text(
            jam,
            style: tertiaryTextStyle,
          ),
        ),
      ],
    );
  }
}
