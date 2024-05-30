import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/custom_button.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/custom_textfield.dart';
import 'package:free_market_pens_mobile/theme.dart';

class AutentikasiRegister extends StatelessWidget {
  const AutentikasiRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width,
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: IntrinsicHeight(
            child: Column(
              mainAxisSize: MainAxisSize.max,
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
                        isPhoneNumber: true,
                        labelText: "Nomor Whatsapp",
                        hintText: "Nomor Whatsapp",
                        controller: TextEditingController(),
                      ),
                      CustomTextField(
                        icon: Icons.lock,
                        labelText: "Kata Sandi",
                        hintText: "Kata Sandi",
                        isPassword: true,
                        obscureText: true,
                        controller: TextEditingController(),
                      ),
                      CustomTextField(
                        icon: Icons.lock,
                        labelText: "Konfirmasi Kata Sandi",
                        hintText: "Konfirmasi Kata Sandi",
                        isPassword: true,
                        obscureText: true,
                        controller: TextEditingController(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 56,
                ),
                const CustomButton(
                  isFilled: true,
                  labelButton: "Daftar",
                  width: 255,
                  height: 38,
                  onPressedAction: (),
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
          ),
        ),
      ),
    );
  }
}
