import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/theme.dart';

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
        title: Center(
          child: Text(
            "Tambah Alamat",
            style: appBarTitleStyle,
          ),
        ),
      ),
    );
  }
}
