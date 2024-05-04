import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:free_market_pens_mobile/theme.dart';
import 'package:input_quantity/input_quantity.dart';

class ProductKeranjangTile extends StatefulWidget {
  const ProductKeranjangTile({super.key});

  @override
  State<ProductKeranjangTile> createState() => _ProductKeranjangTileState();
}

class _ProductKeranjangTileState extends State<ProductKeranjangTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rp10.000",
                        style: secondaryPriceStyle,
                      ),
                      InputQty(
                        initVal: 1,
                        minVal: 1,
                        steps: 1,
                        qtyFormProps: QtyFormProps(
                          style: TextStyle(fontSize: 12),
                        ),
                        decoration: QtyDecorationProps(
                            fillColor: primary,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 0,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            minusBtn: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Icon(
                                Icons.remove,
                                size: 9,
                                color: Colors.white,
                              ),
                            ),
                            plusBtn: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Icon(
                                Icons.add,
                                size: 9,
                                color: Colors.white,
                              ),
                            )),
                        onQtyChanged: (val) {},
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
