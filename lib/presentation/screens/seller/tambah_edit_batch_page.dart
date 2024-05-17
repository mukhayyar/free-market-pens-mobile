// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/custom_button.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/custom_date_picker.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/custom_input_qty.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/custom_textfield.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/custom_time_picker.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/dropdown.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/konten.dart';

import '../../../theme.dart';

class TambahEditBatchPage extends StatefulWidget {
  const TambahEditBatchPage(
      {super.key, required this.noBatch, required this.tipe});
  final int noBatch;
  final String tipe;

  @override
  State<TambahEditBatchPage> createState() => _TambahEditBatchPageState();
}

class _TambahEditBatchPageState extends State<TambahEditBatchPage> {
  final TextEditingController _hargaController = TextEditingController();
  DateTime? tanggalPengambilan;
  TimeOfDay? jamAwalPengambilan;
  TimeOfDay? jamAkhirPengambilan;
  DateTime? tanggalTutupPesanan;
  TimeOfDay? jamTutupPesanan;
  String? alamatPengambilan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: onPrimary,
      appBar: AppBar(
        title: Text(
          widget.tipe == "edit"
              ? "Edit Batch #${widget.noBatch}"
              : "Buka Batch #${widget.noBatch}",
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
                  CustomInputQty(tinggi: 40, lebar: 100, tipeInput: "circle"),
                ],
              ),
              const SizedBox(height: 16),
              const Konten(
                judulKeterangan: "Tempat Pengambilan",
                keterangan: Dropdown(dropdownType: 'alamat'),
              ),
              Konten(
                judulKeterangan: "Tanggal Pengambilan",
                keterangan: CustomDatePicker(
                  onDateSelected: (date) {
                    setState(() {
                      tanggalPengambilan = date;
                      print('Tanggal pengambilan: $date');
                    });
                  },
                ),
              ),
              Konten(
                judulKeterangan: "Jam Pengambilan",
                keterangan: Row(
                  children: [
                    CustomTimePicker(
                      onTimeSelected: (time) {
                        setState(() {
                          jamAwalPengambilan = time;
                          print('Jam awal pengambilan: $time');
                        });
                      },
                    ), //jam awal pengambilan
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Icon(
                        Icons.remove,
                        size: 20,
                      ),
                    ),
                    CustomTimePicker(
                      onTimeSelected: (time) {
                        setState(() {
                          jamAkhirPengambilan = time;
                          print('Jam akhir pengambilan: $time');
                        });
                      },
                    ), //jam terakhir pengambilan
                  ],
                ),
              ),
              Konten(
                judulKeterangan: "Tanggal Tutup Pesanan",
                keterangan: CustomDatePicker(
                  onDateSelected: (date) {
                    setState(() {
                      tanggalTutupPesanan = date;
                      print('Tanggal pengambilan: $date');
                    });
                  },
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Expanded(
                      child: Text(
                    "Jam Tutup Pesanan",
                    style: TextStyle(fontSize: 14),
                  )),
                  CustomTimePicker(
                    onTimeSelected: (time) {
                      setState(() {
                        jamTutupPesanan = time;
                        print('Jam tutup pesanan: $time');
                      });
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: CustomButton(
                    isFilled: true,
                    labelButton: 'Simpan',
                    width: 130,
                    height: 38,
                    onPressedAction: () {
                      //TODO: simpan perubahan disini

                      //testing
                      print('Harga Produk: ${_hargaController.text}');
                      print('Tanggal Pengambilan: $tanggalPengambilan');
                      print('Jam Awal Pengambilan: $jamAwalPengambilan');
                      print('Jam Akhir Pengambilan: $jamAkhirPengambilan');
                      print('Tanggal Tutup Pesanan: $tanggalTutupPesanan');
                      print('Jam Tutup Pesanan: $jamTutupPesanan');
                      // print('Alamat Pengambilan: $alamatPengambilan');
                    },
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
