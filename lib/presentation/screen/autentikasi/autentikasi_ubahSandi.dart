import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/custom_button.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/custom_textfield.dart';
import 'package:free_market_pens_mobile/theme.dart';

class AutentikasiUbahsandi extends StatelessWidget {
  const AutentikasiUbahsandi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Ubah Nomor",
          style: appBarTitleStyle,
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 27, right: 17),
            child: Column(
              children: [
                CustomTextField(
                  icon: Icons.lock,
                  isPassword: true,
                  obscureText: true,
                  labelText: "Kata sandi lama",
                  hintText: "Kata sandi lama",
                  controller: TextEditingController(),
                ),
                CustomTextField(
                  icon: Icons.lock,
                  isPassword: true,
                  obscureText: true,
                  labelText: "Kata sandi baru",
                  hintText: "Kata sandi baru",
                  controller: TextEditingController(),
                ),
                CustomTextField(
                  icon: Icons.lock,
                  isPassword: true,
                  obscureText: true,
                  labelText: "Konfirmasi kata sandi baru",
                  hintText: "Konfirmasi kata sandi baru",
                  controller: TextEditingController(),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 211, top: 20),
            child: CustomButton(
              isFilled: true,
              labelButton: "Simpan",
              width: 120,
              height: 38,
              onPressedAction: (),
            ),
          ),
        ],
      ),
    );
  }
}
