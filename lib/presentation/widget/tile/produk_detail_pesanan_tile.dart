import 'package:flutter/material.dart';
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
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Container(
            width: 88,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/tahu_bakso.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          const Expanded(
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
