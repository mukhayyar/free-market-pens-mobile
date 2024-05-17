import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/screen/buyer/keranjang_screen.dart';
import 'package:free_market_pens_mobile/presentation/widget/card/produk_card.dart';
import 'package:free_market_pens_mobile/presentation/widget/card/transaksi_card.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/search_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        surfaceTintColor: Colors.transparent,
        title: SearchWidget(),
        elevation: 2,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.filter_alt_outlined,
              color: Color(0xff45b9c6),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KeranjangScreen()),
              );
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Color(0xff45b9c6),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const KeranjangScreen()),
              );
            },
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) {
            return const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProdukCard(),
                ProdukCard(),
              ],
            );
          },
        ),
      ),
    );
  }
}
