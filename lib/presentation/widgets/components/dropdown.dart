import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/theme.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class Dropdown extends StatefulWidget {
  const Dropdown({super.key, required this.dropdownType});

  final String dropdownType;

  @override
  State<Dropdown> createState() => _DropdownState();
}

//TODO: warna selected item dropdown nya perlu dibenerin
class _DropdownState extends State<Dropdown> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 35,
      child: Container(
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
          menuStyle: const MenuStyle(
              // elevation: MaterialStatePropertyAll(4),
              padding: MaterialStatePropertyAll(
                  EdgeInsets.only(left: 3, right: 3, bottom: 5)),
              backgroundColor: MaterialStatePropertyAll(Colors.transparent),
              surfaceTintColor: MaterialStatePropertyAll(Colors.transparent),
              // elevation: MaterialStatePropertyAll(10),
              shadowColor: MaterialStatePropertyAll(Colors.transparent)),
          // menuHeight: 300,
          width: MediaQuery.of(context).size.width - 70,

          // requestFocusOnTap: true,
          hintText: widget.dropdownType == 'alamat'
              ? 'Pilih tempat pengambilan'
              : 'Pilih batch',
          textStyle:
              (selectedValue != null ? secondaryTextStyle : tertiaryTextStyle),
          inputDecorationTheme: InputDecorationTheme(
            // focusColor: tertiary2,
            // filled: true,
            isDense: true,
            constraints: BoxConstraints.tight(
              const Size.fromHeight(40),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            border: OutlineInputBorder(
              // gapPadding: BorderSide.strokeAlignCenter,
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(30.0),
            ),
            // fillColor: tertiary2,
            hoverColor: tertiary2,
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
                padding: const EdgeInsets.symmetric(horizontal: 20),
                textStyle: secondaryTextStyle,
                backgroundColor: onPrimary,
                elevation: 4,
                shadowColor: tertiary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide(
                      color: tertiary2,
                      width: 2,
                      strokeAlign: BorderSide.strokeAlignInside,
                    )),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
