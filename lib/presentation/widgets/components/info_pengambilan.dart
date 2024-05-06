import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/info_waktu.dart';
import 'package:free_market_pens_mobile/theme.dart';

class InfoPengambilan extends StatelessWidget {
  final String tanggal;
  final String jam;
  final String tempat;

  const InfoPengambilan(
      {super.key,
      required this.tanggal,
      required this.jam,
      required this.tempat});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InfoWaktu(
          tanggal: tanggal,
          jam: jam,
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(Icons.pin_drop_outlined),
            const SizedBox(width: 8),
            Text(
              tempat,
              style: tertiaryTextStyle,
            ),
          ],
        ),
      ],
    );
  }
}
