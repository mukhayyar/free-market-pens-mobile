import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widget/tile/produk_keranjang_tile.dart';
import 'package:free_market_pens_mobile/screen/buyer/checkout_screen.dart';
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
      color: tertiary2,
      elevation: 3,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: tertiary,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Checkbox(
                    checkColor: onPrimary,
                    activeColor: primary,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  Expanded(
                    child: Text(
                      "Toko A",
                      style: secondaryTextStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CheckoutScreen(), // Ganti dengan halaman yang sesuai
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 15,
                    ),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    style: const ButtonStyle(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                ],
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: tertiary,
              ),
              const SizedBox(height: 8),
              Flexible(
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const ProdukKeranjangTile();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
