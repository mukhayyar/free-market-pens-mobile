import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/custom_button.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/gambar.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/info_pengambilan.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/info_produk.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/info_waktu.dart';
import 'package:free_market_pens_mobile/theme.dart';

class DetailProdukPage extends StatelessWidget {
  final String role = 'seller';
  final String imgProduk =
      'https://asset.kompas.com/crops/7IdRwZpcpYsImnHe2nB5pZrPTgM=/0x0:1000x667/750x500/data/photo/2020/08/05/5f2a43ad5bd07.jpg';
  final String namaProduk = 'Tahu Bakso Enak Dapur Mama Udin';
  final int hargaProduk = 12000;
  final String tanggalTutup = '12 April 2024';
  final String jamTutup = '12.00';
  final String tanggalAmbil = '30 April 2024';
  final String jamAmbil = '08.00 - 12.00';
  final String tempatAmbil = 'Pos Satpam PENS';
  final String deskripsi =
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.';
  final int stok = 10;
  final String namaToko = 'Dapur Mama Asep';
  final String imgToko =
      'https://asset.kompas.com/crops/7IdRwZpcpYsImnHe2nB5pZrPTgM=/0x0:1000x667/750x500/data/photo/2020/08/05/5f2a43ad5bd07.jpg';

  //final String linkWA;

  const DetailProdukPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: onPrimary,
      appBar: AppBar(
        title: Text(
          'Detail Produk',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: IconButton(
              onPressed: () {}, //TODO: konfirmasi menghapus produk
              icon: role == 'seller'
                  ? const Icon(Icons.delete_outline_outlined)
                  : Icon(
                      Icons.shopping_cart_outlined,
                      color: primary,
                    ),
            ),
          ),
        ],
        surfaceTintColor: Colors.white,
      ),
      bottomNavigationBar: Container(
          width: screenWidth,
          color: onPrimary,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: _bottomButtons(screenWidth)),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          // physics: ClampingScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
            width: screenWidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gambar(
                  stringGambar: imgProduk,
                  width: screenWidth,
                  height: 200,
                ),
                const SizedBox(height: 25),
                Text(
                  namaProduk,
                  style: titleStyle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Rp$hargaProduk',
                        style: mainPriceStyle,
                      ),
                    ),
                    Text(
                      'Sisa $stok',
                      style: tertiaryTextStyle,
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                if (role != 'seller')
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: primary, width: 2),
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(imgToko),
                          radius: 15,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '$namaToko coba panjang panjangin',
                          style: const TextStyle(fontSize: 14),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(20, 0),
                        child: IconButton(
                          onPressed:
                              () {}, //TODO: navigasi ke roomchat WA penjual
                          icon: const Icon(
                            Icons.call,
                            color: Colors.green,
                          ),
                        ), //TODO: ganti icon WA
                      ),
                      Transform.translate(
                        offset: const Offset(10, 0),
                        child: IconButton(
                          onPressed:
                              () {}, //TODO: navigasi ke halaman Toko pov buyer
                          icon: const Icon(
                            Icons.navigate_next,
                            size: 35,
                          ),
                        ),
                      ),
                    ],
                  ),
                InfoProduk(
                    judulKeterangan: 'Tutup Pesanan',
                    keterangan:
                        InfoWaktu(tanggal: tanggalTutup, jam: jamTutup)),
                InfoProduk(
                    judulKeterangan: 'Pengambilan',
                    keterangan: InfoPengambilan(
                        tanggal: tanggalAmbil,
                        jam: jamAmbil,
                        tempat: tempatAmbil)),
                InfoProduk(judulKeterangan: 'Deskripsi', keterangan: deskripsi),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _bottomButtons(double screenWidth) {
    return role == 'seller'
        ? SizedBox(
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomButton(
                    isFilled: false,
                    labelButton: 'Edit Produk',
                    width: screenWidth,
                    height: 38,
                    onPressedAction:
                        () {}), //TODO: navigasi ke edit profuk page
                CustomButton(
                    isFilled: true,
                    labelButton: 'Lihat Daftar Pembeli',
                    width: screenWidth,
                    height: 38,
                    onPressedAction:
                        () {}), //TODO: navigasi ke detail penjualan
              ],
            ),
          )
        : Row(children: [
            const Text('inputan quantity'), //TODO: ganti jadi input quantity
            const SizedBox(width: 20),
            Expanded(
              flex: 2,
              child: CustomButton(
                  isFilled: true,
                  labelButton: 'Masukkan Keranjang',
                  width: screenWidth,
                  height: 38,
                  onPressedAction: () {}), //TODO: navigasi ke keranjang page
            )
          ]);
  }
}
