import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/screens/buyer/dibatalkan_riwayat_page.dart';
import 'package:free_market_pens_mobile/presentation/screens/buyer/keranjang_screen.dart';
import 'package:free_market_pens_mobile/presentation/screens/buyer/proses_riwayat_page.dart';
import 'package:free_market_pens_mobile/presentation/screens/buyer/selesai_riwayat_page.dart';
import 'package:free_market_pens_mobile/presentation/screens/buyer/tersedia_riwayat_page.dart';
import 'package:free_market_pens_mobile/presentation/widgets/cards/transaksi_card.dart';
import 'package:free_market_pens_mobile/theme.dart';

class RiwayatPage extends StatefulWidget {
  const RiwayatPage({super.key});

  @override
  State<RiwayatPage> createState() => _RiwayatPageState();
}

class _RiwayatPageState extends State<RiwayatPage> {
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
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Color(0xff45b9c6),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KeranjangScreen()),
                );
              },
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
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: TabBarView(
            children: [
              ProsesRiwayatPage(),
              TersediaRiwayatPage(),
              SelesaiRiwayatPage(),
              DibatalkanRiwayatPage(),
            ],
          ),
        ),
      ),
    );
  }
}
