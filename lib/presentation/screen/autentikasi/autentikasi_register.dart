import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/custom_button.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/custom_textfield.dart';
import 'package:free_market_pens_mobile/theme.dart';

class AutentikasiRegister extends StatelessWidget {
  const AutentikasiRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                'Daftar Akun\nDisini.',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            // color: Colors.blueGrey,
            margin: EdgeInsets.only(left: 27, right: 17),
            child: Column(
              children: [
                CustomTextField(
                  icon: Icons.email,
                  labelText: "Email",
                  hintText: "Email",
                  controller: TextEditingController(),
                ),
                CustomTextField(
                  icon: Icons.person,
                  labelText: "Username",
                  hintText: "Username",
                  controller: TextEditingController(),
                ),
                CustomTextField(
                  icon: Icons.call,
                  labelText: "Nomor Whatsapp",
                  hintText: "Nomor Whatsapp",
                  controller: TextEditingController(),
                ),
                CustomTextField(
                  icon: Icons.lock,
                  labelText: "Kata Sandi",
                  hintText: "Kata Sandi",
                  isPassword: true,
                  controller: TextEditingController(),
                ),
                CustomTextField(
                  icon: Icons.lock,
                  labelText: "Konfirmasi Kata Sandi",
                  hintText: "Konfirmasi Kata Sandi",
                  isPassword: true,
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
                'Sudah punya akun?',
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
