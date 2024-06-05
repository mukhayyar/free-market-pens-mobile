import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widgets/cards/checkout_card.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/dialog_confirmation.dart';
import 'package:free_market_pens_mobile/theme.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  void _showDialogConfirmation() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return DialogConfirmation(
          name: "pesanan-berhasil-dibuat",
          id: 0,
          userName: "John",
          onConfirm: () {
            Navigator.pop(context); // Tutup dialog
          },
        );
      },
    );
  }

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
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (context, index) {
            return const CheckoutCard();
          },
        ),
      ),
      bottomSheet: Container(
        height: 70,
        decoration: BoxDecoration(color: appTheme.primaryColor, boxShadow: [
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
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                color: onPrimary,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Total Pembayaran',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text('Rp. $_totalHarga', style: secondaryPriceStyle),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _showDialogConfirmation();
              },
              child: Container(
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
