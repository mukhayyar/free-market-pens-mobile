import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/produk_harga.dart';
import 'package:free_market_pens_mobile/theme.dart';

class ProdukCheckoutTile extends StatefulWidget {
  const ProdukCheckoutTile({super.key});

  @override
  State<ProdukCheckoutTile> createState() => _ProdukCheckoutTileState();
}

class _ProdukCheckoutTileState extends State<ProdukCheckoutTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 88,
              height: 51,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage('assets/tahu_bakso.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
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
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
