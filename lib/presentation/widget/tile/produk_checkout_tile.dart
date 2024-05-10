import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/gambar.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/produk_harga.dart';

class ProdukCheckoutTile extends StatefulWidget {
  const ProdukCheckoutTile({super.key});

  @override
  State<ProdukCheckoutTile> createState() => _ProdukCheckoutTileState();
}

class _ProdukCheckoutTileState extends State<ProdukCheckoutTile> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Gambar(
                width: 88,
                height: 51,
                stringGambar:
                    'https://asset.kompas.com/crops/7IdRwZpcpYsImnHe2nB5pZrPTgM=/0x0:1000x667/750x500/data/photo/2020/08/05/5f2a43ad5bd07.jpg'),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProdukHarga(
                    title: "Tahu Bakso",
                    price: "Rp10.000",
                    quantity: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
