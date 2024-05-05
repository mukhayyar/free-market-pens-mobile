import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/screen/seller/alamat_screen.dart';
import 'package:free_market_pens_mobile/presentation/screen/seller/detail_penjualan_screen.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/text_column.dart';

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
      home: DetailPenjualanScreen(),
    );
  }
}
