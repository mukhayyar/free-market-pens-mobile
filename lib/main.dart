import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/screen/buyer/checkout_screen.dart';
import 'package:free_market_pens_mobile/presentation/screen/buyer/keranjang_screen.dart';
import 'package:free_market_pens_mobile/presentation/widget/card/keranjang_card.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/custom_button.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/custom_textfield.dart';
import 'package:free_market_pens_mobile/theme.dart';

final TextEditingController _emailController = TextEditingController();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Free Market',
      theme: appTheme,
      home: Scaffold(
        body: Center(
          child: CustomTextField(
            labelText: 'Email',
            hintText: 'Enter your email',
            icon: Icons.email,
            controller: _emailController,
          ),
        ),
      ),
    );
  }
}
