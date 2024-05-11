import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/custom_button.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/custom_textfield.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/latar_setengah_lingkaran.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/upload_gambar.dart';

import '../../../theme.dart';

class TambahEditFormPage extends StatefulWidget {
  const TambahEditFormPage(
      {super.key, required this.formType, required this.pageType});

  final String formType; //tambah atau edit
  final String pageType; //produk atau toko

  @override
  State<TambahEditFormPage> createState() => _TambahEditFormPageState();
}

class _TambahEditFormPageState extends State<TambahEditFormPage> {
  final TextEditingController _teksController1 = TextEditingController();
  final TextEditingController _teksController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: onPrimary,
      appBar: AppBar(
        title: Text(
          widget.pageType == 'toko'
              ? 'Profil Toko'
              : (widget.formType == 'tambah' ? 'Tambah Produk' : 'Edit Produk'),
          style: appBarTitleStyle,
        ),
        centerTitle: true,
        backgroundColor: secondary,
        surfaceTintColor: secondary,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                const LatarSetengahLingkaran(),
                Container(
                  height: 170,
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Center(
                    child: UploadGambar(
                      height: 110,
                      width: 120,
                      labelText: widget.pageType == 'toko'
                          ? 'Foto Toko'
                          : 'Foto Produk',
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: CustomTextField(
                labelText:
                    widget.pageType == 'toko' ? 'Nama Toko' : 'Nama Produk',
                hintText: widget.pageType == 'toko'
                    ? 'Ketikkan nama toko disini'
                    : 'Ketikkan nama produk disini',
                controller: _teksController1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
              child: CustomTextField(
                labelText: widget.pageType == 'toko'
                    ? 'Nomor WhatsApp'
                    : 'Deskripsi Produk',
                hintText: widget.pageType == 'toko'
                    ? 'Ketikkan nomor whatsapp toko disini'
                    : 'Ketikkan deskripsi produk disini',
                controller: _teksController2,
                isPhoneNumber: widget.pageType == 'toko' ? true : false,
                isLong: widget.pageType == 'produk' ? true : false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 36.0, 0),
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
            )
          ],
        ),
      ),
    );
  }
}
