import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/theme.dart';
import 'package:free_market_pens_mobile/presentation/widget/card/keranjang_card.dart';

class KeranjangScreen extends StatefulWidget {
  const KeranjangScreen({super.key});

  @override
  State<KeranjangScreen> createState() => _KeranjangScreenState();
}

class _KeranjangScreenState extends State<KeranjangScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Keranjang",
            style: appBarTitleStyle,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(9, 6, 9, 0),
          child: Column(
            children: [
              KeranjangCard(),
              KeranjangCard(),
              KeranjangCard(),
              KeranjangCard(),
              KeranjangCard(),
              KeranjangCard(),
              KeranjangCard(),
            ],
          ),
        ),
      ),
    );
  }
}
