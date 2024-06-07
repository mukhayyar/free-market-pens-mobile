import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widgets/cards/transaksi_card.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/image_widget.dart';
import 'package:free_market_pens_mobile/theme.dart';

class DibatalkanRiwayatPage extends StatefulWidget {
  const DibatalkanRiwayatPage({super.key});

  @override
  State<DibatalkanRiwayatPage> createState() => _DibatalkanRiwayatPageState();
}

class _DibatalkanRiwayatPageState extends State<DibatalkanRiwayatPage> {
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
