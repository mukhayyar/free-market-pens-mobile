import 'package:flutter/material.dart';
import 'package:input_quantity/input_quantity.dart';

import '../../../theme.dart';

class CustomInputQty extends StatefulWidget {
  final double? tinggi;
  final double lebar;
  final String tipeInput; //circle atau regular

  const CustomInputQty(
      {super.key, this.tinggi, required this.lebar, required this.tipeInput});

  @override
  State<CustomInputQty> createState() => _CustomInputQtyState();
}

class _CustomInputQtyState extends State<CustomInputQty> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.tinggi,
      width: widget.lebar,
      alignment: Alignment.center,
      child: InputQty(
        initVal: 1,
        minVal: 1,
        steps: 1,
        qtyFormProps: QtyFormProps(
          style: mainTextStyle,
        ),
        decoration: QtyDecorationProps(
            fillColor: widget.tipeInput != 'circle' ? tertiary2 : onPrimary,
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            minusBtn: _buttonStyle(false, widget.tipeInput, widget.lebar),
            plusBtn: _buttonStyle(true, widget.tipeInput, widget.lebar)),
        onQtyChanged: (val) {},
      ),
    );
  }

  Widget _buttonStyle(bool isPlusBtn, String type, double width) {
    return Container(
      margin: isPlusBtn
          ? const EdgeInsets.only(left: 8)
          : const EdgeInsets.only(right: 8),
      padding:
          type != 'circle' ? const EdgeInsets.all(5) : const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: type == 'circle'
            ? BorderRadius.circular(30)
            : (isPlusBtn
                ? const BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    topRight: Radius.circular(30))
                : const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30))),
        color: type == 'circle' ? onPrimary : primary,
        boxShadow: [
          BoxShadow(
              color: tertiary,
              blurRadius: 5,
              offset: width < 80 ? Offset.zero : const Offset(0, 5))
        ],
      ),
      child: Icon(
        isPlusBtn ? Icons.add : Icons.remove,
        size: width < 80 ? 12 : 20,
        color: type == 'circle' ? tertiary : onPrimary,
      ),
    );
  }
}
