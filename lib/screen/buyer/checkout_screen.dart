import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/theme.dart';
import 'package:free_market_pens_mobile/presentation/widget/card/checkout_card.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Checkout",
            style: appBarTitleStyle,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(9, 6, 9, 0),
          child: Column(
            children: [
              CheckoutCard(),
              CheckoutCard(),
              CheckoutCard(),
              CheckoutCard(),
              CheckoutCard(),
              CheckoutCard(),
            ],
          ),
        ),
      ),
    );
  }
}
