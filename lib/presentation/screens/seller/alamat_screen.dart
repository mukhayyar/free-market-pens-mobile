import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/theme.dart';
import 'package:free_market_pens_mobile/presentation/widgets/cards/alamat_card.dart';
import 'package:free_market_pens_mobile/presentation/widgets/cards/tambah_alamat_card.dart';

class AlamatScreen extends StatefulWidget {
  const AlamatScreen({super.key});

  @override
  State<AlamatScreen> createState() => _AlamatScreenState();
}

class _AlamatScreenState extends State<AlamatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: onPrimary,
      appBar: AppBar(
        shadowColor: tertiary,
        title: Text(
          "Alamat Pengambilan",
          style: appBarTitleStyle,
        ),
        backgroundColor: onPrimary,
        surfaceTintColor: onPrimary,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(9, 6, 9, 36),
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
