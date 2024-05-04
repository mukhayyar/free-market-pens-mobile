import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widget/card/tambah_alamat_card.dart';
import 'package:free_market_pens_mobile/screen/buyer/keranjang_screen.dart';
import 'package:free_market_pens_mobile/screen/seller/alamat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: KeranjangScreen(),
    );
  }
}
