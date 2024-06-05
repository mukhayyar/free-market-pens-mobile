import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/dialog.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/custom_button.dart';
import 'package:free_market_pens_mobile/theme.dart';

class EditRole extends StatefulWidget {
  EditRole({super.key});

  @override
  State<EditRole> createState() => _EditRoleState();
}

class _EditRoleState extends State<EditRole> {
  String? valueChoose;
  final List<String> listRole = ['Admin', 'User'];

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 131,
        width: 247,
        decoration: BoxDecoration(
          color: onPrimary,
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Edit role',
              style: textLabelStyle,
            ),
            DropdownButton<String>(
              value: valueChoose,
              hint: Text("Pilih Role"),
              onChanged: (String? newValue) {
                setState(() {
                  valueChoose = newValue;
                });
              },
              items: listRole.map((String valueItem) {
                return DropdownMenuItem<String>(
                  value: valueItem,
                  child: Text(valueItem),
                );
              }).toList(),
            ),
            CustomButton(
              isFilled: true,
              labelButton: 'Simpan',
              width: 10,
              height: 10,
              onPressedAction: () {},
            ),
          ],
        ),
      ),
    );
  }
}
