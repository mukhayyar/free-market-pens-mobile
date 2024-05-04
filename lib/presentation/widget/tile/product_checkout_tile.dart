import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductCheckoutTile extends StatelessWidget {
  const ProductCheckoutTile({super.key});

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
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Tahu Bakso"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rp10.000"),
                      Text("x 10"),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
