import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/screen/seller/tambah_edit_alamat_screen.dart';
import 'package:free_market_pens_mobile/theme.dart';

class TambahAlamatCard extends StatefulWidget {
  const TambahAlamatCard({super.key});

  @override
  State<TambahAlamatCard> createState() => _TambahAlamatCardState();
}

class _TambahAlamatCardState extends State<TambahAlamatCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      color: tertiary2,
      surfaceTintColor: tertiary2,
      elevation: 3,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: primary,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: InkWell(
        splashColor: secondary,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TambahEditAlamatScreen(
                judul: 'Tambah Alamat',
              ), // Ganti dengan halaman yang sesuai
            ),
          );
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: const Icon(
                Icons.add,
                size: 35,
              ),
              title: Text(
                'Tambah Alamat',
                style: secondaryTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
