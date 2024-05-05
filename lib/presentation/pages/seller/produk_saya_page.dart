// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:free_market_pens_mobile/presentation/widgets/cards/produk_card.dart';
import 'package:free_market_pens_mobile/presentation/widgets/cards/tambah_produk_card.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/latar_setengah_lingkaran.dart';

class ProdukSayaPage extends StatelessWidget {
  const ProdukSayaPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme appTextTheme = Theme.of(context).textTheme;
    ColorScheme appColorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Produk Saya',
          style: appTextTheme.headlineSmall,
        ),
        // scrolledUnderElevation: 10,
        centerTitle: true,
        backgroundColor: appColorScheme.secondary,
        surfaceTintColor: appColorScheme.secondary,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: IconButton(
                onPressed: () {}, icon: const Icon(Icons.place_rounded)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                const LatarSetengahLingkaran(),
                const SizedBox(
                  height: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons
                            .storefront_outlined, //nnti diganti icon yg udh dikonfig
                        size: 90,
                      ),
                    ],
                  ),
                ),
                LayoutBuilder(builder: (context, constraints) {
                  return Container(
                    margin: const EdgeInsets.only(top: 150, bottom: 10),
                    child: GridView.builder(
                      shrinkWrap:
                          true, // Agar GridView mengikuti ukuran parent-nya
                      physics:
                          const NeverScrollableScrollPhysics(), // Agar GridView mengikuti ukuran parent-nya
                      itemCount: 19,
                      itemBuilder: (context, index) => Container(
                          // height: 175,
                          margin: index % 2 == 0
                              ? const EdgeInsets.only(left: 15)
                              : const EdgeInsets.only(right: 15),
                          // color: index % 3 == 0 ? Colors.black : Colors.amber,
                          child: Center(
                            child: index == 0
                                ? const TambahProdukCard()
                                : const ProdukCard(),
                          )),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                    ),
                  );
                })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
