// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/screens/seller/detail_penjualan_screen.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/gambar.dart';
import 'package:free_market_pens_mobile/theme.dart';

class TransaksiCard extends StatelessWidget {
  final String role = 'seller';
  final String imgProduk =
      'https://asset.kompas.com/crops/7IdRwZpcpYsImnHe2nB5pZrPTgM=/0x0:1000x667/750x500/data/photo/2020/08/05/5f2a43ad5bd07.jpg';
  String? namaProduk = 'Seblak';
  String? namaToko = 'Dapur Mama Udin aooaoaoaooaoao';
  int? totalProduk = 3;
  int? totalPembelian = 26;
  final int totalPesanan = 312000;
  String? tanggalTransaksi = '30/4/2024';
  int? noBatch = 3;

  TransaksiCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: tertiary)),
      // elevation: 4,
      surfaceTintColor: role == 'buyer' ? secondary : onPrimary,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: onPrimary,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  const DetailPenjualanScreen(), // Ganti dengan halaman yang sesuai
            ),
          );
        },
        child: Container(
          height: 117,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          child: Column(
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        role == 'buyer' ? namaToko! : namaProduk!,
                        style: Theme.of(context).textTheme.titleSmall,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        role == 'buyer' ? tanggalTransaksi! : 'Batch #$noBatch',
                        style: tertiaryTextStyle,
                      ),
                    )
                  ]),
              Divider(
                thickness: 1,
                color: tertiary,
              ),
              const SizedBox(height: 3),
              Row(
                children: [
                  Gambar(stringGambar: imgProduk, width: 92, height: 56),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        role == 'buyer'
                            ? 'Total Produk : $totalProduk'
                            : 'Total Pembelian : $totalPembelian',
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('Total Pesanan : '),
                          Text(
                            'Rp$totalPesanan',
                            style: secondaryPriceStyle,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
