import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widget/card/keranjang_card.dart';
import 'package:free_market_pens_mobile/presentation/widget/card/transaksi_card.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/gambar.dart';

class SelesaiRiwayatPage extends StatefulWidget {
  const SelesaiRiwayatPage({super.key});

  @override
  State<SelesaiRiwayatPage> createState() => _SelesaiRiwayatPageState();
}

class _SelesaiRiwayatPageState extends State<SelesaiRiwayatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Gambar(
        stringGambar: "assets/images/empty_card.png",
        width: 400,
        height: 400,
      ),
    ));
  }
}
