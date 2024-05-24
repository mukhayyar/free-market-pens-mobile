import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widgets/cards/transaksi_card.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/gambar.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/image_widget.dart';
import 'package:free_market_pens_mobile/theme.dart';
import 'package:free_market_pens_mobile/widget/component/gambar_card.dart';

class TersediaRiwayatPage extends StatefulWidget {
  const TersediaRiwayatPage({Key? key}) : super(key: key);

  @override
  State<TersediaRiwayatPage> createState() => _TersediaRiwayatPageState();
}

class _TersediaRiwayatPageState extends State<TersediaRiwayatPage> {
  final List<String> _items = ['saya'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _items.isNotEmpty
          ? ListView.builder(
              shrinkWrap: true,
              itemCount: _items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: TransaksiCard(),
                );
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
