import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/theme.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class Dropdown extends StatefulWidget {
  const Dropdown({super.key, required this.role});

  final String role;

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: DropdownMenu<String>(
          menuHeight: 300,
          width: MediaQuery.of(context).size.width - 30,
          requestFocusOnTap: true,
          hintText: widget.role == 'alamat'
              ? 'Pilih tempat pengambilan'
              : 'Pilih batch',
          textStyle:
              (selectedValue != null ? secondaryTextStyle : tertiaryTextStyle),
          inputDecorationTheme: InputDecorationTheme(
            isDense: true,
            constraints: BoxConstraints.tight(
              const Size.fromHeight(40),
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          onSelected: (String? value) {
            setState(() {
              selectedValue = value;
            });
          },
          dropdownMenuEntries:
              list.map<DropdownMenuEntry<String>>((String value) {
            return DropdownMenuEntry<String>(
              value: value,
              label: value,
              style: MenuItemButton.styleFrom(
                textStyle: secondaryTextStyle,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
