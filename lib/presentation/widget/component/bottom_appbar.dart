import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/konfirmasi_text_column.dart';
import 'package:free_market_pens_mobile/theme.dart';

class TotalBottomAppBar extends StatelessWidget {
  const TotalBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: BottomAppBar(
        color: tertiary2,
        surfaceTintColor: tertiary2,
        elevation: 8,
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const KonfirmasiTextColumn(
              labelProduk: 'Konfirmasi produk:',
              jumlahProduk: '11 produk',
              labelPesanan: 'Konfirmasi pesanan:',
              jumlahPesanan: 'Rp132.000',
            ),
            Divider(
              height: 1,
              thickness: 1,
              color: tertiary,
            ),
            const KonfirmasiTextColumn(
              labelProduk: 'Total produk:',
              jumlahProduk: '13 produk',
              labelPesanan: 'Total pesanan:',
              jumlahPesanan: 'Rp156.000',
            ),
          ],
        ),
      ),
    );
  }
}
