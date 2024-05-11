import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/screen/autentikasi/autentikasi_login.dart';
import 'package:free_market_pens_mobile/presentation/screen/autentikasi/autentikasi_profil.dart';
import 'package:free_market_pens_mobile/presentation/screen/autentikasi/autentikasi_register.dart';
import 'package:free_market_pens_mobile/presentation/screen/autentikasi/autentikasi_ubahNomor.dart';
import 'package:free_market_pens_mobile/presentation/screen/autentikasi/autentikasi_ubahSandi.dart';
import 'package:free_market_pens_mobile/presentation/screen/autentikasi/autentikasi_welcome.dart';
import 'package:free_market_pens_mobile/presentation/screen/seller/alamat_screen.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/text_column.dart';
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
      debugShowCheckedModeBanner: false,
      home: AutentikasiProfil(),
    );
  }
}
