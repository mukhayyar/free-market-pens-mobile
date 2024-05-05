import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/dropdown.dart';
import 'package:free_market_pens_mobile/theme.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/text_column.dart';

class DetailPenjualanScreen extends StatefulWidget {
  const DetailPenjualanScreen({super.key});

  @override
  State<DetailPenjualanScreen> createState() => _DetailPenjualanScreenState();
}

class _DetailPenjualanScreenState extends State<DetailPenjualanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail Penjualan",
          style: appBarTitleStyle,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(9, 6, 9, 0),
          child: Column(
            children: [
              const Dropdown(),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const TextColumn();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
