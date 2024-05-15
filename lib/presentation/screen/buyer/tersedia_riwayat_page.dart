import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widget/card/transaksi_card.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/gambar.dart';
import 'package:free_market_pens_mobile/widget/component/gambar_card.dart';

class TersediaRiwayatPage extends StatefulWidget {
  const TersediaRiwayatPage({Key? key}) : super(key: key);

  @override
  State<TersediaRiwayatPage> createState() => _TersediaRiwayatPageState();
}

class _TersediaRiwayatPageState extends State<TersediaRiwayatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return TransaksiCard();
        },
      ),
    );
  }
}
