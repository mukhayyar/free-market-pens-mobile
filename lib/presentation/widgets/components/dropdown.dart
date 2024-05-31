import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/theme.dart';

const List<String> list = <String>[
  'One',
  'Two',
  'Three',
  'Four',
  'Five',
  'Six',
  'Seven',
];

class Dropdown extends StatefulWidget {
  const Dropdown({super.key, required this.dropdownType});

  final String dropdownType;

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      constraints: BoxConstraints.loose(Size.fromWidth(screenWidth)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: DropdownMenu<String>(
        menuStyle: MenuStyle(
            maximumSize: MaterialStatePropertyAll(Size.fromWidth(screenWidth)),
            padding:
                const MaterialStatePropertyAll(EdgeInsets.fromLTRB(3, 8, 3, 8)),
            backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
            surfaceTintColor:
                const MaterialStatePropertyAll(Colors.transparent),
            shadowColor: const MaterialStatePropertyAll(Colors.transparent)),
        menuHeight: 250,
        width: widget.dropdownType == 'alamat'
            ? screenWidth - 67
            : screenWidth - 40,
        hintText: widget.dropdownType == 'alamat'
            ? 'Pilih tempat pengambilan'
            : 'Pilih batch',
        textStyle:
            (selectedValue != null ? secondaryTextStyle : tertiaryTextStyle),
        inputDecorationTheme: InputDecorationTheme(
          isDense: true,
          constraints: BoxConstraints.tight(
            const Size.fromHeight(40),
          ),
          contentPadding: const EdgeInsets.symmetric(
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
            enabled: selectedValue != value,
            style: MenuItemButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              textStyle: secondaryTextStyle,
              backgroundColor: onPrimary,
              surfaceTintColor: onPrimary,
              elevation: 4,
              shadowColor: tertiary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(
                    color: selectedValue != value ? tertiary2 : secondary,
                    width: 2,
                    strokeAlign: BorderSide.strokeAlignInside,
                  )),
            ),
          );
        }).toList(),
      ),
    );
  }
}
