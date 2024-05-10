import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/screen/buyer/checkout_screen.dart';
import 'package:free_market_pens_mobile/presentation/screen/buyer/keranjang_screen.dart';
import 'package:free_market_pens_mobile/presentation/widget/card/keranjang_card.dart';
import 'package:free_market_pens_mobile/theme.dart';
import 'package:free_market_pens_mobile/pages/riwayat_page.dart';
import 'package:free_market_pens_mobile/widget/image_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          tabBarTheme: TabBarTheme(
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                color: Color(0xFF45B9C6),
                width: 2,
              ),
            ),
            unselectedLabelColor: Colors.grey,
            labelColor: Color(0xFF45B9C6),
          ),
          appBarTheme: AppBarTheme(color: Colors.white),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const RiwayatPage());
  }
}

class Tes extends StatelessWidget {
  const Tes({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ImageWidget(
            path: "assets/images/login.png", width: 200.0, height: 200.0),
      ),
    );
  }
}
