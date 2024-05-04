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
        title: Center(
          child: Text(
            "Alamat Pengambilan",
            style: appBarTitleStyle,
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(9, 6, 9, 0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const TambahAlamatCard(),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(9, 0, 9, 0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return const AlamatCard();
                },
                childCount: 10, //jumlah alamat
              ),
            ),
          ),
        ],
      ),
    );
  }
}
