import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/screen/buyer/dibatalkan_riwayat_page.dart';
import 'package:free_market_pens_mobile/presentation/screen/buyer/proses_riwayat_page.dart';
import 'package:free_market_pens_mobile/presentation/screen/buyer/selesai_riwayat_page.dart';
import 'package:free_market_pens_mobile/presentation/screen/buyer/tersedia_riwayat_page.dart';
import 'package:free_market_pens_mobile/presentation/widget/card/transaksi_card.dart';

class RiwayatPage extends StatelessWidget {
  const RiwayatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Riwayat transaksi", style: TextStyle(letterSpacing: 1)),
          elevation: 1,
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {},
            )
          ],
          bottom: const TabBar(
            indicatorWeight: 3,
            labelStyle: TextStyle(),
            tabs: [
              Tab(
                text: 'Proses',
              ),
              Tab(
                text: 'Tersedia',
              ),
              Tab(
                text: 'Selesai',
              ),
              Tab(
                text: 'Dibatalkan',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ProsesRiwayatPage(),
            TersediaRiwayatPage(),
            SelesaiRiwayatPage(),
            DibatalkanRiwayatPage(),
          ],
        ),
      ),
    );
  }
}
