import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/theme.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final IconData? icon;
  final bool isPhoneNumber;
  final bool isPassword;

  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    this.icon,
    this.isPhoneNumber = false,
    this.isPassword = false,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.icon == null) Text(widget.labelText),
          TextField(
            controller: widget.controller,
            style: textInputStyle,
            keyboardType: widget.isPhoneNumber
                ? TextInputType.number
                : TextInputType.text,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: tertiaryTextStyle,
              //labelText: widget.labelText,
              //labelStyle: secondaryTextStyle,
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              prefixIcon: widget.icon != null
                  ? Icon(
                      widget.icon,
                      size: 24,
                      color: Color(0xFF404040),
                    )
                  : null,
              suffixIcon: widget.isPassword
                  ? IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                        color: Color(0xFF404040),
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    )
                  : null,
            ),
            obscureText: widget.obscureText && _isObscure,
          ),
        ],
      ),
    );
  }
}
