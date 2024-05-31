import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/theme.dart';

class CustomButton extends StatelessWidget {
  final bool isFilled;
  final String labelButton;
  final double width;
  final double height;
  final bool isEnabled;
  final dynamic onPressedAction;

  const CustomButton({
    super.key,
    required this.isFilled,
    required this.labelButton,
    required this.width,
    required this.height,
    required this.onPressedAction,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        surfaceTintColor: isFilled ? primary : onPrimary,
        backgroundColor: isFilled ? primary : onPrimary,
        side: (isFilled && isEnabled)
            ? null
            : (isEnabled ? BorderSide(color: primary, width: 2) : null),
        minimumSize: Size(width, height),
        elevation: isEnabled ? 8 : 0,
        animationDuration: Duration(seconds: isEnabled ? 2 : 0),
        padding: const EdgeInsets.all(10),
      ),
      onPressed: isEnabled ? () => onPressedAction() : null,
      child: Text(
        labelButton,
        style: (isFilled && isEnabled)
            ? filledButtonLabelStyle
            : (isEnabled ? outlinedButtonLabelStyle : filledButtonLabelStyle),
      ),
    );
  }
}
