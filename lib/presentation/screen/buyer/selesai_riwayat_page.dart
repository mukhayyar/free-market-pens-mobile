import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widget/card/keranjang_card.dart';
import 'package:free_market_pens_mobile/presentation/widget/card/transaksi_card.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/gambar.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/image_widget.dart';
import 'package:free_market_pens_mobile/theme.dart';

class SelesaiRiwayatPage extends StatefulWidget {
  const SelesaiRiwayatPage({super.key});

  @override
  State<SelesaiRiwayatPage> createState() => _SelesaiRiwayatPageState();
}

class _SelesaiRiwayatPageState extends State<SelesaiRiwayatPage> {
  final List<String> _items = ['saya'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _items.isNotEmpty
          ? ListView.builder(
              shrinkWrap: true,
              itemCount: _items.length,
              itemBuilder: (context, index) {
                return TransaksiCard();
              },
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageWidget(
                    path: "assets/images/empty_card.png",
                    width: 200,
                    height: 200,
                  ),
                  Text(
                    'Tidak ada produk yang siap diambil',
                    style: tertiaryTextStyle,
                  ),
                ],
              ),
            ),
    );
  }
}
