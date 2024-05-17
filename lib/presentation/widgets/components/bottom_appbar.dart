import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/konfirmasi_text_column.dart';
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
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: BottomAppBar(
        color: onPrimary,
        surfaceTintColor: onPrimary,
        elevation: 8,
        height: 180,
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
              thickness: 3,
              color: tertiary2,
            ),
            const KonfirmasiTextColumn(
              labelProduk: 'Total produk:',
              jumlahProduk: '13 produk',
              labelPesanan: 'Total pesanan:',
              jumlahPesanan: 'Rp156.000',
            ),
            const SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}
