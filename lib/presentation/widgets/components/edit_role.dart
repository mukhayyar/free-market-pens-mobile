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
        height: 140,
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Edit role',
                style: textLabelStyle,
              ),
            ),
            Container(
              height: 40,
              width: 250,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(0, 5),
                  )
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: DropdownButton<String>(
                value: valueChoose,
                hint: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Pilih Role", style: tertiaryTextStyle),
                ),
                isExpanded: true,
                icon: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.keyboard_arrow_down_outlined),
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    valueChoose = newValue;
                  });
                },
                items: listRole.map((String valueItem) {
                  return DropdownMenuItem<String>(
                    value: valueItem,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(valueItem, style: tertiaryTextStyle),
                    ),
                  );
                }).toList(),
                underline: const SizedBox.shrink(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 165.0),
              child: CustomButton(
                isFilled: true,
                labelButton: 'Simpan',
                width: 10,
                height: 10,
                onPressedAction: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
