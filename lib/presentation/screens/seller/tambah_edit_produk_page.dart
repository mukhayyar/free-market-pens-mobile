import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/screens/seller/tambah_edit_form.dart';

class TambahEditProdukPage extends StatelessWidget {
  const TambahEditProdukPage({super.key, required this.tipe});

  final String tipe;

  @override
  Widget build(BuildContext context) {
    return TambahEditFormPage(formType: tipe, pageType: 'produk');
  }
}
