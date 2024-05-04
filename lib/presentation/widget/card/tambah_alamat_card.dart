import 'package:flutter/material.dart';
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
      color: Colors.white,
      elevation: 3,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: primary,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Center(
        child: InkWell(
          splashColor: secondary,
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(
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
