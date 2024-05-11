import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/custom_button.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/custom_textfield.dart';
import 'package:free_market_pens_mobile/theme.dart';

class AutentikasiUbahsandi extends StatelessWidget {
  const AutentikasiUbahsandi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            Text(
              'Ubah Kata Sandi',
              style: TextStyle(color: onSecondary),
            ),
          ],
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
                  labelText: "Kata sandi lama",
                  hintText: "Kata sandi lama",
                  controller: TextEditingController(),
                ),
                CustomTextField(
                  icon: Icons.lock,
                  isPassword: true,
                  labelText: "Kata sandi baru",
                  hintText: "Kata sandi baru",
                  controller: TextEditingController(),
                ),
                CustomTextField(
                  icon: Icons.lock,
                  isPassword: true,
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
            ),
          ),
        ],
      ),
    );
  }
}
