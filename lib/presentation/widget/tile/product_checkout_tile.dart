import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:free_market_pens_mobile/theme.dart';

class ProductCheckoutTile extends StatefulWidget {
  const ProductCheckoutTile({super.key});

  @override
  State<ProductCheckoutTile> createState() => _ProductCheckoutTileState();
}

class _ProductCheckoutTileState extends State<ProductCheckoutTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 88,
              height: 51,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    10), // atur nilai sesuai keinginan Anda
                image: const DecorationImage(
                  image: AssetImage('assets/tahu_bakso.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tahu Bakso",
                    style: secondaryTextStyle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "Rp10.000",
                          style: secondaryPriceStyle,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        "x 10",
                        style: secondaryTextStyle,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
