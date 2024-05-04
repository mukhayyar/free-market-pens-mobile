import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widget/card/detail_pesanan_card.dart';
import 'package:free_market_pens_mobile/screen/buyer/checkout_screen.dart';
import 'package:free_market_pens_mobile/screen/buyer/detail_pesanan_screen.dart';
import 'package:free_market_pens_mobile/screen/buyer/keranjang_screen.dart';
import 'package:free_market_pens_mobile/screen/seller/tambah_alamat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Free Market',
      home: CheckoutScreen(),
    );
  }
}
