import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/theme.dart';

class CustomButton extends StatelessWidget {
  final bool isFilled;
  final String labelButton;
  final double width;
  final double height;
  final Function onPressedAction;

  const CustomButton({
    super.key,
    required this.isFilled,
    required this.labelButton,
    required this.width,
    required this.height,
    required this.onPressedAction,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        surfaceTintColor: isFilled ? primary : Colors.white,
        backgroundColor: isFilled ? primary : null,
        side: isFilled ? null : BorderSide(color: primary, width: 2),
        minimumSize: Size(width, height),
        elevation: 8,
        padding: const EdgeInsets.all(10),
      ),
      onPressed: () {
        onPressedAction(); // Panggil fungsi onPressedAction saat tombol ditekan
      },
      child: Text(
        labelButton,
        style: isFilled ? filledButtonLabelStyle : outlinedButtonLabelStyle,
      ),
    );
  }
}
