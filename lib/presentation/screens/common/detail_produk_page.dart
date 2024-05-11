import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/custom_button.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/dropdown.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/gambar.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/info_pengambilan.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/konten.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/info_waktu.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/keterangan_gambar.dart';
import 'package:free_market_pens_mobile/theme.dart';

class DetailProdukPage extends StatelessWidget {
  final String role = 'buyer';
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
  final int totalStok = 10;
  final int sisaStok = 2;
  final String namaToko = 'Dapur Mama Asep';
  final String imgToko =
      'https://asset.kompas.com/crops/7IdRwZpcpYsImnHe2nB5pZrPTgM=/0x0:1000x667/750x500/data/photo/2020/08/05/5f2a43ad5bd07.jpg';
  final int noBatch = 0;
  final String? statusProdukSekarang = 'terima'; //status produk batch yg skrg
  //final String linkWA;

  const DetailProdukPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    String? batchStatus =
        statusProdukSekarang; //defaultnya, batch yg tampil otomatis batch terbaru (batch yg skrg)

    return Scaffold(
      backgroundColor: onPrimary,
      appBar: AppBar(
        title: Text(
          'Detail Produk',
          style: appBarTitleStyle,
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
          child: _bottomButtons(screenWidth, statusProdukSekarang, context)),
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
                role != 'seller'
                    ? KeteranganGambar(
                        urlGambar: imgProduk,
                        lebar: screenWidth,
                        tinggiGambar: 200,
                        tinggiKeterangan: 50,
                        noBatch: noBatch,
                      )
                    : Gambar(
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
                if (role != 'seller')
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Rp$hargaProduk',
                              style: mainPriceStyle,
                            ),
                          ),
                          Text(
                            'Sisa $sisaStok',
                            style: tertiaryTextStyle,
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
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
                            offset: const Offset(25, 0),
                            child: IconButton(
                              onPressed:
                                  () {}, //TODO: navigasi ke roomchat WA penjual
                              icon: const FaIcon(
                                FontAwesomeIcons.whatsapp,
                                color: Colors.green,
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: const Offset(15, 0),
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
                      _infoTutupDanPengambilan(tanggalTutup, jamTutup,
                          tanggalAmbil, jamAmbil, tempatAmbil),
                    ],
                  ),
                Konten(judulKeterangan: 'Deskripsi', keterangan: deskripsi),
                if (role == 'seller')
                  Column(
                    children: [
                      Konten(
                        judulKeterangan: 'Batch',
                        keterangan: const Dropdown(dropdownType: 'batch'),
                        trailing: Row(
                          children: [
                            if (batchStatus ==
                                'selesai') //status dari batch yg dipilih di dropdown
                              Transform.translate(
                                offset: const Offset(10, 0),
                                child: IconButton(
                                    onPressed: () {
                                      //TODO: navigasi ke halaman edit batch
                                    },
                                    icon: const Icon(Icons.edit_outlined)),
                              ),
                            IconButton(
                              icon: const Icon(
                                Icons.remove_red_eye_outlined,
                              ),
                              onPressed: () {
                                //TODO: navigasi ke detail penjualan sesuai batch yg dipilih
                              },
                            ),
                          ],
                        ),
                      ),
                      _infoBatch(
                        _infoTutupDanPengambilan(
                            tanggalTutup,
                            jamTutup, //nerima parameter dari batch dropdown item
                            tanggalAmbil,
                            jamAmbil,
                            tempatAmbil),
                        hargaProduk,
                        totalStok,
                        sisaStok,
                      ),
                    ],
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _bottomButtons(
      double screenWidth, String? statusProdukSekarang, BuildContext context) {
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
                        () {}), //TODO: navigasi ke edit produk page
                CustomButton(
                  isFilled: true,
                  labelButton: 'Buka Batch #${noBatch + 1}',
                  width: screenWidth,
                  height: 38,
                  onPressedAction: () {
                    //TODO: navigasi ke buka batch page
                    //// Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => const KeranjangScreen(),
                    //   ),
                    // );
                  },
                  isEnabled: (statusProdukSekarang ==
                              null || //cuma bisa diklik klo batch yg skrg udh selesai, atau saat pertama kali buka batch
                          statusProdukSekarang == 'selesai')
                      ? true
                      : false,
                ),
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
                  onPressedAction: () {
                    //TODO: masukkan ke keranjang
                  }),
            )
          ]);
  }

  Widget _infoTutupDanPengambilan(String tanggalTutup, String jamTutup,
      String tanggalAmbil, String jamAmbil, String tempatAmbil) {
    return Column(
      children: [
        Konten(
            judulKeterangan: 'Tutup Pesanan',
            keterangan: InfoWaktu(tanggal: tanggalTutup, jam: jamTutup)),
        Konten(
            judulKeterangan: 'Pengambilan',
            keterangan: InfoPengambilan(
                tanggal: tanggalAmbil, jam: jamAmbil, tempat: tempatAmbil))
      ],
    );
  }

  Widget _infoBatch(
      var infoTutupDanPengambilan, int harga, int jumlahStok, int sisaStok) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              "Harga",
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(width: 20),
            Text(
              "Rp$harga",
              style: mainPriceStyle,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            const Text(
              "Stok",
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(width: 32),
            Expanded(
              child: Text(
                "$jumlahStok",
                style: tertiaryTextStyle,
              ),
            ),
            const Text(
              "Sisa",
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(width: 32),
            Expanded(
              child: Text(
                "$sisaStok",
                style: tertiaryTextStyle,
              ),
            ),
          ],
        ),
        infoTutupDanPengambilan,
      ],
    );
  }
}
