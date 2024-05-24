import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum ButtonCondition { terimaHabis, tersediaTutup, penjualanLama }

class KonfirmasiIconButton extends StatefulWidget {
  final ButtonCondition condition;
  final Function(IconData, Color) onPressed;

  const KonfirmasiIconButton(
      {super.key, required this.condition, required this.onPressed});

  @override
  _KonfirmasiIconButtonState createState() => _KonfirmasiIconButtonState();
}

class _KonfirmasiIconButtonState extends State<KonfirmasiIconButton> {
  late IconData _iconData;
  late Color _iconColor;

  @override
  void initState() {
    super.initState();
    _setIconDataAndColor();
  }

  void _setIconDataAndColor() {
    switch (widget.condition) {
      case ButtonCondition.terimaHabis:
        _iconData = FontAwesomeIcons.circleXmark;
        _iconColor = tertiary;
        break;
      case ButtonCondition.tersediaTutup:
        _iconData = FontAwesomeIcons.circleCheck;
        _iconColor = tertiary;
        break;
      case ButtonCondition.penjualanLama:
        _iconData = FontAwesomeIcons.circleXmark;
        _iconColor = tertiary;
        break;
      default:
        _iconData = FontAwesomeIcons.circle;
        _iconColor = tertiary;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        _iconData,
        color: _iconColor,
      ),
      onPressed: () {
        switch (widget.condition) {
          case ButtonCondition.terimaHabis:
            setState(() {
              _iconData = FontAwesomeIcons.solidCircleXmark;
              _iconColor = error;
            });
            widget.onPressed(FontAwesomeIcons.solidCircleXmark, error);
            break;
          case ButtonCondition.tersediaTutup:
            setState(() {
              _iconData = FontAwesomeIcons.solidCircleCheck;
              _iconColor = primary;
            });
            widget.onPressed(FontAwesomeIcons.solidCircleCheck, primary);
            break;
          case ButtonCondition.penjualanLama:
            setState(() {
              _iconData = FontAwesomeIcons.solidCircleCheck;
              _iconColor = primary;
            });
            widget.onPressed(FontAwesomeIcons.solidCircleCheck, primary);
            break;
          default:
            break;
        }
      },
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      style: const ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }
}
