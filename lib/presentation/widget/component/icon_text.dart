import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/theme.dart';

class IconText extends StatelessWidget {
  const IconText({
    Key? key,
    required this.icon,
    required this.text,
    required this.iconSize,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: tertiaryTextStyle,
          ),
        ),
      ],
    );
  }
}
