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
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Checkout",
            style: appBarTitleStyle,
          ),
        ),
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
    );
  }
}
