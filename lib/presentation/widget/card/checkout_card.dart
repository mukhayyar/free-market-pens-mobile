import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widget/tile/product_checkout_tile.dart';

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
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Toko A"),
                SizedBox(height: 8),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey, //tertiary
                ),
                SizedBox(height: 8),
                ProductCheckoutTile(),
                ProductCheckoutTile(),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey, //tertiary
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total pesanan (3 produk): "),
                    Text("Rp50.000"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
