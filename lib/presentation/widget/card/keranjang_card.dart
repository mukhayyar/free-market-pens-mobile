import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widget/tile/product_keranjang_tile.dart';
import 'package:free_market_pens_mobile/theme.dart';

class KeranjangCard extends StatefulWidget {
  const KeranjangCard({super.key});

  @override
  State<KeranjangCard> createState() => _KeranjangCardState();
}

class _KeranjangCardState extends State<KeranjangCard> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      color: Colors.white,
      elevation: 3,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Colors.grey,
          width: 1,
        ), // primary color
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Center(
        child: InkWell(
          splashColor: Colors.teal.withAlpha(30), //secondary color
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      activeColor: primary,
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    Text(
                      "Toko A",
                      style: secondaryTextStyle,
                    ),
                  ],
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey, //tertiary
                ),
                SizedBox(height: 8),
                ProductKeranjangTile(),
                ProductKeranjangTile(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
