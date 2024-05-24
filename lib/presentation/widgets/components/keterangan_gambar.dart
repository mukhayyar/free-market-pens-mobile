import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/gambar.dart';

class KeteranganGambar extends StatelessWidget {
  final String urlGambar;
  final double tinggiGambar;
  final double tinggiKeterangan;
  final double lebar;
  final String statusProduk;
  final int? noBatch;

  const KeteranganGambar({
    super.key,
    required this.urlGambar,
    required this.lebar,
    this.statusProduk = '',
    this.noBatch,
    required this.tinggiGambar,
    required this.tinggiKeterangan,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Gambar(
          stringGambar: urlGambar,
          width: lebar,
          height: tinggiGambar,
        ),
        // Fill warna di atas gambar
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12)),
            color: noBatch == null
                ? Colors.black.withOpacity(0.5)
                : Colors.black.withOpacity(0.3),
          ),
          width: lebar,
          height: tinggiKeterangan,
          child: Center(
            child: Text(
              getStatusText(),
              style: TextStyle(
                color: Colors.white,
                fontSize: noBatch == null ? 12 : 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }

  String getStatusText() {
    if (statusProduk == 'tutup') {
      return 'Sudah Tutup';
    } else if (statusProduk == 'habis') {
      return 'Produk Habis';
    } else if (statusProduk == 'tersedia') {
      return 'Sudah Siap';
    } else {
      return 'Batch #${noBatch ?? 0}';
    }
  }
}
