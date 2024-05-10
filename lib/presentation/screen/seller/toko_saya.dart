import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/pages/seller/produk_saya_page.dart';
import 'package:free_market_pens_mobile/presentation/pages/seller/riwayat_penjualan_page.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/custom_button.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/gambar.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/latar_setengah_lingkaran.dart';
import 'package:free_market_pens_mobile/theme.dart';

class TokoSayaPage extends StatelessWidget {
  final String imgToko =
      'https://asset.kompas.com/crops/7IdRwZpcpYsImnHe2nB5pZrPTgM=/0x0:1000x667/750x500/data/photo/2020/08/05/5f2a43ad5bd07.jpg';
  final String namaToko = 'Dapur Mama Asep';
  final int jumlahProduk = 22;
  final int jumlahProdukTerima = 12;
  final int jumlahProdukTersedia = 3;
  final int jumlahProdukTutup = 5;
  final int jumlahProdukHabis = 2;
  final String nomorWA = '0812-1083-1115';
  final int totalPenjualan = 51222;
  final int totalPendapatan = 10000000;

  const TokoSayaPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: onPrimary,
      appBar: AppBar(
        title: Text(
          'Toko Saya',
          style: appBarTitleStyle,
        ),
        // scrolledUnderElevation: 10,
        centerTitle: true,
        backgroundColor: secondary,
        surfaceTintColor: secondary,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: IconButton(
                onPressed: () {
                  //TODO: navigasi ke edit profil
                },
                icon: const Icon(Icons.settings_outlined)),
          )
        ],
      ),
      //TODO: ini ambil komponen button dari nanda nanti
      bottomNavigationBar: Container(
          width: MediaQuery.of(context).size.width,
          // color: onPrimary,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: CustomButton(
            isFilled: false,
            labelButton: 'Tutup Toko',
            height: 38,
            width: MediaQuery.of(context).size.width,
            onPressedAction: () {},
          )),
      body: Column(
        children: [
          Stack(
            children: [
              const LatarSetengahLingkaran(),
              SizedBox(
                height: 140,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Gambar(
                      stringGambar: imgToko,
                      width: 150,
                      height: 110,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, bottom: 8),
                child: Text(
                  namaToko,
                  style: titleStyle,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.call, //TODO: ganti icon WA
                    color: tertiary,
                  ),
                  Text(nomorWA, style: tertiaryTextStyle),
                ],
              ),
            ],
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 15, bottom: 10, left: 25, right: 8),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons
                          .storefront_outlined, //TODO: ganti icon yg sesuai figma
                      size: 80,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Produk Saya', style: mainTextStyle),
                          const SizedBox(height: 8),
                          Text('$jumlahProduk Produk', style: tertiaryTextStyle)
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProdukSayaPage(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.navigate_next),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Text(
                            'Riwayat Penjualan',
                            style: mainTextStyle,
                          )),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const RiwayatPenjualanPage(), // Ganti dengan halaman yang sesuai
                            ),
                          );
                        },
                        icon: const Icon(Icons.navigate_next),
                      ),
                    ],
                  ),
                ),
                LayoutBuilder(builder: (context, constraints) {
                  return Container(
                      margin: EdgeInsets.only(
                          right: 17,
                          bottom: MediaQuery.of(context).size.height > 770
                              ? 15
                              : 10),
                      width: screenWidth,
                      child: GridView.builder(
                        shrinkWrap:
                            true, // Agar GridView mengikuti ukuran parent-nya
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 0,
                          childAspectRatio: 2,
                        ),
                        itemBuilder: (context, index) {
                          return index == 0
                              ? _penjualanCard(
                                  jumlahProdukTerima, 'Terima Pesanan', () {})
                              : (index == 1
                                  ? _penjualanCard(
                                      jumlahProdukTersedia, 'Tersedia', () {},
                                      isTersedia: true)
                                  : (index == 2
                                      ? _penjualanCard(jumlahProdukTutup,
                                          'Pesanan Ditutup', () {})
                                      : _penjualanCard(jumlahProdukHabis,
                                          'Pesanan Habis', () {})));
                        },
                        itemCount: 4,
                      ));
                }),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Total Penjualan', style: mainTextStyle),
                          const SizedBox(
                            height: 8,
                          ),
                          Text('$totalPenjualan',
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffF9977A))),
                        ],
                      ),
                      Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Total Pendapatan', style: mainTextStyle),
                          const SizedBox(height: 8),
                          Text(
                            '$totalPendapatan',
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffF9977A)),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _penjualanCard(int jumlahProduk, String namaStatus, var onTapAction,
      {bool isTersedia = false}) {
    return Card(
      elevation: 8,
      surfaceTintColor: onPrimary,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: isTersedia ? secondary : tertiary2,
          width: isTersedia ? 3 : 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        splashColor: Colors.grey[100],
        onTap: () {
          //TODO: navigasi ke halaman riwayat penjualan yang sesuai tabnya
          // nerima parameter index/status nnti
        },
        child: Container(
          padding: const EdgeInsets.all(2.0),
          margin: const EdgeInsets.symmetric(horizontal: 3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  child: Text(
                '$jumlahProduk',
                style: TextStyle(
                  color: primary,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              )),
              const SizedBox(height: 8),
              Text(
                namaStatus,
                style: tertiaryTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
