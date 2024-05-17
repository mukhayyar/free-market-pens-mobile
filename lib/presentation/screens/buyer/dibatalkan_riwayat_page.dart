import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widgets/cards/transaksi_card.dart';

class DibatalkanRiwayatPage extends StatefulWidget {
  const DibatalkanRiwayatPage({super.key});

  @override
  State<DibatalkanRiwayatPage> createState() => _DibatalkanRiwayatPageState();
}

class _DibatalkanRiwayatPageState extends State<DibatalkanRiwayatPage> {
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
