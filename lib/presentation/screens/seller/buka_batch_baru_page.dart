import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/custom_button.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/custom_textfield.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/dropdown.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/konten.dart';

import '../../../theme.dart';

class BukaBatchBaruPage extends StatefulWidget {
  const BukaBatchBaruPage({super.key, required this.noBatch});
  final int noBatch;

  @override
  State<BukaBatchBaruPage> createState() => _BukaBatchBaruPageState();
}

class _BukaBatchBaruPageState extends State<BukaBatchBaruPage> {
  final TextEditingController _hargaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: onPrimary,
      appBar: AppBar(
        title: Text(
          "Buka Batch #${widget.noBatch}",
          style: appBarTitleStyle,
        ),
        centerTitle: true,
        backgroundColor: onPrimary,
        surfaceTintColor: onPrimary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomTextField(
                controller: _hargaController,
                hintText: 'Rp 12.000',
                labelText: "Harga Produk",
                labelTextStyle: const TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 16),
              const Row(
                children: [
                  Expanded(
                      child: Text(
                    "Stok Produk",
                    style: TextStyle(fontSize: 14),
                  )),
                  Text("input quantity"), //TODO: ganti input quantity disini
                ],
              ),
              const SizedBox(height: 16),
              const Konten(
                judulKeterangan: "Tempat Pengambilan",
                keterangan: Dropdown(dropdownType: 'alamat'),
              ),
              const Konten(
                judulKeterangan: "Tanggal Pengambilan",
                keterangan: Dropdown(
                    dropdownType: 'alamat'), //TODO: ganti input calendar
              ),
              const Konten(
                judulKeterangan: "Jam Pengambilan",
                keterangan: Dropdown(
                    dropdownType: 'alamat'), //TODO: ganti row input jam
              ),
              const Konten(
                judulKeterangan: "Tanggal Tutup Pesanan",
                keterangan: Dropdown(
                    dropdownType: 'alamat'), //TODO: ganti input calendar
              ),
              const SizedBox(height: 16),
              const Row(
                children: [
                  Expanded(
                      child: Text(
                    "Jam Tutup Pesanan",
                    style: TextStyle(fontSize: 14),
                  )),
                  Text("input jam"), //TODO: ganti input jam disini
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: CustomButton(
                    isFilled: true,
                    labelButton: 'Simpan',
                    width: 104,
                    height: 38,
                    onPressedAction: () {}, //TODO: simpan perubahan
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
