import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widgets/cards/transaksi_card.dart';

class ProsesRiwayatPage extends StatefulWidget {
  const ProsesRiwayatPage({super.key});

  @override
  State<ProsesRiwayatPage> createState() => _ProsesRiwayatPageState();
}

class _ProsesRiwayatPageState extends State<ProsesRiwayatPage> {
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
