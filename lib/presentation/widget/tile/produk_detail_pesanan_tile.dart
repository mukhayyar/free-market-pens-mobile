import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/gambar.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/icon_text.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/produk_harga.dart';

class ProdukDetailPesananTile extends StatefulWidget {
  const ProdukDetailPesananTile({super.key});

  @override
  State<ProdukDetailPesananTile> createState() =>
      _ProdukDetailPesananTileState();
}

class _ProdukDetailPesananTileState extends State<ProdukDetailPesananTile> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Gambar(
              width: 88,
              height: 100,
              stringGambar:
                  'https://asset.kompas.com/crops/7IdRwZpcpYsImnHe2nB5pZrPTgM=/0x0:1000x667/750x500/data/photo/2020/08/05/5f2a43ad5bd07.jpg'),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProdukHarga(
                  title: "Tahu Bakso",
                  price: "Rp10.000",
                  quantity: 10,
                ),
                SizedBox(height: 8),
                IconText(
                  icon: Icons.calendar_today_rounded,
                  text: "12/6/2024 | 08.00 - 09.00",
                  iconSize: 10,
                ),
                SizedBox(height: 8),
                IconText(
                  icon: Icons.place,
                  text: "Pos Satpam PENS",
                  iconSize: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
