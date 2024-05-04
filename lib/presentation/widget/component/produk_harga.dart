import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:free_market_pens_mobile/theme.dart';

class ProdukHarga extends StatelessWidget {
  final String title;
  final String price;
  final int quantity;

  const ProdukHarga({
    Key? key,
    required this.title,
    required this.price,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: secondaryTextStyle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                price,
                style: secondaryPriceStyle,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              "x $quantity",
              style: secondaryTextStyle,
            ),
          ],
        ),
      ],
    );
  }
}
