import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/theme.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final IconData? icon;

  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    this.icon,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            offset: Offset(0.0, 4.0),
            blurRadius: 8.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: widget.controller,
            style: textInputStyle,
            decoration: InputDecoration(
              hintText: widget.hintText,
              labelText: widget.labelText,
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'InknutAntiqua',
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              prefixIcon: widget.icon != null
                  ? Icon(
                      widget.icon,
                      size: 30,
                    )
                  : null,
            ),
            obscureText: widget.obscureText,
          ),
        ],
      ),
    );
  }
}
