import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:free_market_pens_mobile/presentation/screen/buyer/checkout_screen.dart';
import 'package:free_market_pens_mobile/presentation/widget/card/checkout_card.dart';
import 'package:free_market_pens_mobile/theme.dart';
import 'package:free_market_pens_mobile/presentation/widgets/cards/keranjang_card.dart';

class KeranjangScreen extends StatefulWidget {
  const KeranjangScreen({Key? key}) : super(key: key);

  @override
  State<KeranjangScreen> createState() => _KeranjangScreenState();
}

class _KeranjangScreenState extends State<KeranjangScreen> {
  bool _isChecked = true;
  int _totalHarga = 100000;

  @override
  Widget build(BuildContext context) {
    int _selectedProduct = 10;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Keranjang",
          style: appBarTitleStyle,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(9, 6, 9, 0),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 2,
          itemBuilder: (context, index) {
            return const KeranjangCard();
          },
        ),
      ),
      bottomSheet: Container(
        margin: null,
        height: 70,
        decoration: BoxDecoration(color: onPrimary, boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 10,
            spreadRadius: -5,
          ),
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(
                    checkColor: onPrimary,
                    activeColor: primary,
                    value: _isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked = value!;
                      });
                    },
                  ),
                  Text(
                    'Semua',
                    style: TextStyle(
                      fontFamily: 'InknutAntiqua',
                      fontSize: 12,
                      color: tertiary,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                            fontSize: 12,
                            color: tertiary,
                          ),
                        ),
                        Text(
                          'Rp. $_totalHarga',
                          style: TextStyle(
                            fontSize: 12,
                            color: primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CheckoutScreen()),
                );
              },
              child: Container(
                padding: null,
                width: 150,
                height: 70,
                decoration: BoxDecoration(
                  color: primary,
                ),
                child: Center(
                  child: Text(
                    'Periksa($_selectedProduct)',
                    style: TextStyle(
                      fontFamily: 'InknutAntiqua',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: onPrimary,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
