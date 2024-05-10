import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:free_market_pens_mobile/theme.dart';

class KonfirmasiTextColumn extends StatelessWidget {
  const KonfirmasiTextColumn(
      {super.key,
      required this.labelProduk,
      required this.jumlahProduk,
      required this.labelPesanan,
      required this.jumlahPesanan});

  final String labelProduk;
  final String jumlahProduk;
  final String labelPesanan;
  final String jumlahPesanan;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                labelProduk,
                style: secondaryTextStyle,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Flexible(
              child: Text(
                jumlahProduk,
                style: secondaryTextStyle,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                labelPesanan,
                style: secondaryTextStyle,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Flexible(
              child: Text(
                jumlahPesanan,
                style: secondaryPriceStyle,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        )
      ],
    );
  }
}
