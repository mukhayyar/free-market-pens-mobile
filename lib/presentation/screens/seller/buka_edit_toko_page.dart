import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/screens/seller/tambah_edit_form.dart';

class BukaEditTokoPage extends StatelessWidget {
  const BukaEditTokoPage({super.key});

  final String tipe = 'tambah';

  @override
  Widget build(BuildContext context) {
    return TambahEditFormPage(formType: tipe, pageType: 'toko');
  }
}
