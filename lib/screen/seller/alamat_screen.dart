import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/theme.dart';
import 'package:free_market_pens_mobile/presentation/widget/card/alamat_card.dart';
import 'package:free_market_pens_mobile/presentation/widget/card/tambah_alamat_card.dart';

class AlamatScreen extends StatefulWidget {
  const AlamatScreen({Key? key});

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
            padding: EdgeInsets.fromLTRB(9, 6, 9, 0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  TambahAlamatCard(),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 10, //jumlah alamat
                    itemBuilder: (context, index) {
                      return AlamatCard(); //masukkan paramater card
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
