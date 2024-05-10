import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/screen/buyer/checkout_screen.dart';
import 'package:free_market_pens_mobile/presentation/screen/buyer/keranjang_screen.dart';
import 'package:free_market_pens_mobile/presentation/screen/seller/detail_penjualan_screen.dart';
import 'package:free_market_pens_mobile/presentation/widget/card/keranjang_card.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/dropdown.dart';
import 'package:free_market_pens_mobile/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Free Market',
      theme: appTheme,
      home: const DetailPenjualanScreen(),
    );
  }
}
