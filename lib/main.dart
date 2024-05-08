import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/pages/riwayat_page.dart';
import 'package:free_market_pens_mobile/widget/image_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
