import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/screen/seller/alamat_screen.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/konfirmasi_icon_button.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/konfirmasi_text_column.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/text_column.dart';
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
      home: TokoPage(),
    );
  }
}
