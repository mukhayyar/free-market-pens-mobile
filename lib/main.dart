import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/screens/seller/tambah_edit_batch_page.dart';
import 'package:free_market_pens_mobile/presentation/screens/seller/toko_saya_page.dart';
import 'package:free_market_pens_mobile/presentation/widgets/cards/keranjang_card.dart';
import 'package:free_market_pens_mobile/theme.dart';

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
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: const TokoSayaPage(
          // noBatch: 1,
          ),
    );
  }
}
