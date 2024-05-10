import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/theme.dart';
import 'package:free_market_pens_mobile/presentation/widget/card/alamat_card.dart';
import 'package:free_market_pens_mobile/presentation/widget/card/tambah_alamat_card.dart';

class AlamatScreen extends StatefulWidget {
  const AlamatScreen({super.key});

  @override
  State<AlamatScreen> createState() => _AlamatScreenState();
}

class _AlamatScreenState extends State<AlamatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Alamat Pengambilan",
          style: appBarTitleStyle,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(9, 6, 9, 6),
          child: Column(
            children: [
              const TambahAlamatCard(),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const AlamatCard();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
