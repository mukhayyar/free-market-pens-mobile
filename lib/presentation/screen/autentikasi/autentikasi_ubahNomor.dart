import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/custom_button.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/custom_textfield.dart';
import 'package:free_market_pens_mobile/theme.dart';

class AutentikasiUbahnomor extends StatelessWidget {
  const AutentikasiUbahnomor({super.key});

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
                  icon: Icons.call,
                  isPhoneNumber: true,
                  labelText: "Nomor Whatsapp",
                  hintText: "Nomor Whatsapp",
                  controller: TextEditingController(),
                ),
                CustomTextField(
                  icon: Icons.lock,
                  isPassword: true,
                  labelText: "Kata Sandi",
                  hintText: "Kata Sandi",
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
