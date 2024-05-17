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
  final bool isLong;
  final TextStyle? labelTextStyle;

  const CustomTextField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    this.icon,
    this.isPhoneNumber = false,
    this.isPassword = false,
    this.isLong = false,
    this.labelTextStyle,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.icon == null)
            Text(
              widget.labelText,
              style: widget.labelTextStyle ??
                  const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
          TextField(
            maxLines: widget.isLong ? 4 : 1,
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
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: tertiary, width: 2),
              ),
              prefixIcon: widget.icon != null
                  ? Icon(
                      widget.icon,
                      size: 24,
                      color: const Color(0xFF404040),
                    )
                  : null,
              suffixIcon: widget.isPassword
                  ? IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                        color: const Color(0xFF404040),
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
