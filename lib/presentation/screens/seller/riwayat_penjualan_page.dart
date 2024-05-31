import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widgets/cards/transaksi_card.dart';
import 'package:free_market_pens_mobile/theme.dart';

class RiwayatPenjualanPage extends StatefulWidget {
  const RiwayatPenjualanPage({super.key});

  @override
  State<RiwayatPenjualanPage> createState() => _RiwayatPenjualanPageState();
}

class _RiwayatPenjualanPageState extends State<RiwayatPenjualanPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Riwayat Penjualan',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          centerTitle: true,
          bottom: TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            dividerColor: tertiary2,
            tabs: const <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Tab(text: 'Terima'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Tab(text: 'Tutup'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Tab(text: 'Habis'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Tab(text: 'Tersedia'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Tab(text: 'Selesai'),
              ),
            ],
            unselectedLabelColor: Theme.of(context).colorScheme.tertiary,
            // labelPadding: const EdgeInsets.all(5),
            // padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            _buildTabContent('Terima'),
            _buildTabContent('Tutup'),
            _buildTabContent('Habis'),
            _buildTabContent('Tersedia'),
            _buildTabContent('Selesai'),
          ],
        ),
      ),
    );
  }

  Widget _buildTabContent(String tabTitle) {
    return Container(
      color: onPrimary,
      child: ListView.builder(
        physics: const ClampingScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 20),
        itemCount: 11,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: TransaksiCard(),
          );
        },
      ),
    );
  }
}
