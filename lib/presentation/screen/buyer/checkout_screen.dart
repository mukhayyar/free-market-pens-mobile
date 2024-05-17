import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widget/card/checkout_card.dart';
import 'package:free_market_pens_mobile/theme.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    int _totalHarga = 100000;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Checkout",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(9, 6, 9, 0),
        child: Flexible(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) {
              return const CheckoutCard();
            },
          ),
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
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Total Pembayaran',
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
                    'Buat Pesanan',
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
