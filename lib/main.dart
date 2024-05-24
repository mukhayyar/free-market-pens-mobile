import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/screen/autentikasi/autentikasi_profil.dart';
import 'package:free_market_pens_mobile/presentation/screen/buyer/checkout_screen.dart';
import 'package:free_market_pens_mobile/presentation/screen/buyer/detail_pesanan_screen.dart';
import 'package:free_market_pens_mobile/presentation/screen/buyer/home_page.dart';
import 'package:free_market_pens_mobile/presentation/screen/buyer/keranjang_screen.dart';
import 'package:free_market_pens_mobile/presentation/screen/buyer/toko_page.dart';
import 'package:free_market_pens_mobile/presentation/screen/seller/alamat_screen.dart';
import 'package:free_market_pens_mobile/presentation/widget/card/detail_pesanan_card.dart';
import 'package:free_market_pens_mobile/theme.dart';
import 'package:free_market_pens_mobile/presentation/screen/buyer/riwayat_page.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/image_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Free Market',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
