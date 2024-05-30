import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/custom_button.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/custom_textfield.dart';
import 'package:free_market_pens_mobile/theme.dart';

class AutentikasiLogin extends StatelessWidget {
  const AutentikasiLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        title: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: const Padding(
              padding: EdgeInsets.only(left: 47),
              child: Text(
                'Ayo Masuk.',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.only(left: 47),
              child: Text(
                'Selamat datang\nProduk segar menantimu!',
                style: TextStyle(fontSize: 15, color: tertiary),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.only(left: 27, right: 17),
            child: Column(
              children: [
                CustomTextField(
                  icon: Icons.person,
                  labelText: "Username/Email",
                  hintText: "Username/Email",
                  controller: TextEditingController(),
                ),
                CustomTextField(
                  icon: Icons.lock,
                  isPassword: true,
                  labelText: "Username/Email",
                  hintText: "Username/Email",
                  controller: TextEditingController(),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 56,
          ),
          const CustomButton(
            onPressedAction: {},
            isFilled: true,
            labelButton: "Daftar",
            width: 255,
            height: 38,
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Belum punya akun?',
                style: tertiaryTextStyle,
              ),
              const SizedBox(
                width: 7,
              ),
              InkWell(
                child: const Text(
                  "Masuk",
                  style: TextStyle(
                    color: Color.fromRGBO(69, 185, 198, 1),
                  ),
                ),
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
