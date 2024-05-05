import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/latar_setengah_lingkaran.dart';

class TambahAlamatScreen extends StatefulWidget {
  const TambahAlamatScreen({super.key});

  @override
  State<TambahAlamatScreen> createState() => _TambahAlamatScreenState();
}

class _TambahAlamatScreenState extends State<TambahAlamatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tambah Alamat",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        surfaceTintColor: Theme.of(context).colorScheme.secondary,
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                LatarSetengahLingkaran(),
                SizedBox(
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
