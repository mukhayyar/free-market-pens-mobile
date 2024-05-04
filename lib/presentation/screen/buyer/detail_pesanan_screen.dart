import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/theme.dart';
import 'package:free_market_pens_mobile/presentation/widget/card/detail_pesanan_card.dart';

class DetailPesananScreen extends StatefulWidget {
  const DetailPesananScreen({super.key});

  @override
  State<DetailPesananScreen> createState() => _DetailPesananScreenState();
}

class _DetailPesananScreenState extends State<DetailPesananScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Detail Pesanan",
            style: appBarTitleStyle,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(9, 6, 9, 0),
        child: Flexible(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) {
              return const DetailPesananCard(
                isCancelled: false, //status diganti
              );
            },
          ),
        ),
      ),
    );
  }
}
