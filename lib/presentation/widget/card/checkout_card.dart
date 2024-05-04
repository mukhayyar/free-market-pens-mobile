import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widget/tile/produk_checkout_tile.dart';
import 'package:free_market_pens_mobile/theme.dart';

class CheckoutCard extends StatefulWidget {
  const CheckoutCard({super.key});

  @override
  State<CheckoutCard> createState() => _CheckoutCardState();
}

class _CheckoutCardState extends State<CheckoutCard> {
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
              Text(
                "Toko A",
                style: secondaryTextStyle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              Divider(
                height: 1,
                thickness: 1,
                color: tertiary,
              ),
              const SizedBox(height: 8),
              ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const ProdukCheckoutTile();
                },
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: tertiary,
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      "Total pesanan (3 produk): ",
                      style: secondaryTextStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    "Rp50.000",
                    style: secondaryPriceStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
