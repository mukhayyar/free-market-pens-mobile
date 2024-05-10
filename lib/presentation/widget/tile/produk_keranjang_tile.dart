import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/gambar.dart';
import 'package:free_market_pens_mobile/theme.dart';
import 'package:input_quantity/input_quantity.dart';

class ProdukKeranjangTile extends StatefulWidget {
  const ProdukKeranjangTile({super.key});

  @override
  State<ProdukKeranjangTile> createState() => _ProdukKeranjangTileState();
}

class _ProdukKeranjangTileState extends State<ProdukKeranjangTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) =>
            //         const CheckoutScreen(), // ke halaman produk
            //   ),
            // );
          },
          child: Row(
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
              const Gambar(
                  width: 88,
                  height: 51,
                  stringGambar:
                      'https://asset.kompas.com/crops/7IdRwZpcpYsImnHe2nB5pZrPTgM=/0x0:1000x667/750x500/data/photo/2020/08/05/5f2a43ad5bd07.jpg'),
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
                    const SizedBox(
                      height: 8,
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
                          qtyFormProps: const QtyFormProps(
                            style: TextStyle(fontSize: 12),
                          ),
                          decoration: QtyDecorationProps(
                              fillColor: primary,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: tertiary,
                                  width: 0,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              minusBtn: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Icon(
                                  Icons.remove,
                                  size: 9,
                                  color: onPrimary,
                                ),
                              ),
                              plusBtn: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Icon(
                                  Icons.add,
                                  size: 9,
                                  color: onPrimary,
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
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
