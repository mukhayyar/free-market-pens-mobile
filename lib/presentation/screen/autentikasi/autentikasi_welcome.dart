import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/custom_button.dart';
import 'package:free_market_pens_mobile/theme.dart';

class AutentikasiWelcome extends StatelessWidget {
  const AutentikasiWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(
              height: 67,
            ),
            Center(
              child: Image.asset('assets/welcome.png'),
            ),
            const SizedBox(
              height: 29,
            ),
            const Center(
              child: Text(
                'Selamat datang\n di Free Market',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 29,
            ),
            Center(
              child: Text(
                'Tagline Kita',
                style: TextStyle(
                  fontSize: 13,
                  color: tertiary,
                ),
              ),
            ),
            const SizedBox(
              height: 57,
            ),
            const CustomButton(
              isFilled: true,
              labelButton: 'Masuk',
              width: 255,
              height: 49,
              onPressedAction: (),
            ),
            const SizedBox(
              height: 17,
            ),
            const CustomButton(
                isFilled: false,
                labelButton: 'Daftar',
                width: 255,
                height: 49,
                onPressedAction: ())
          ],
        ),
      ),
    );
  }
}
