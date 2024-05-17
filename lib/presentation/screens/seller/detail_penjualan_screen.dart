import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/bottom_appbar.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/dropdown.dart';
import 'package:free_market_pens_mobile/theme.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/text_column.dart';

class DetailPenjualanScreen extends StatefulWidget {
  const DetailPenjualanScreen({super.key});

  @override
  State<DetailPenjualanScreen> createState() => _DetailPenjualanScreenState();
}

class _DetailPenjualanScreenState extends State<DetailPenjualanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: onPrimary,
      appBar: AppBar(
        title: Text(
          "Detail Penjualan",
          style: appBarTitleStyle,
        ),
        centerTitle: true,
        backgroundColor: onPrimary,
        surfaceTintColor: onPrimary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 6, 20, 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Batch',
                    style: secondaryTextStyle,
                  ),
                ),
              ),
              const Dropdown(dropdownType: 'batch'),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return const TextColumn();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const TotalBottomAppBar(),
    );
  }
}
