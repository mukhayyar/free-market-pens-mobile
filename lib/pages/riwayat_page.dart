import 'package:flutter/material.dart';

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
      ),
    );
  }
}
