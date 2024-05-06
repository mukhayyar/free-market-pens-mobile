import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/theme.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  final List<String> _dropDownItems = [
    'One',
    'Two',
    'Three',
    'Four',
    's',
    'sev',
    'eg',
    'nn',
    'tn',
    'eelv',
    'tw',
    'thr',
    'frt',
    'fvt',
    'stn',
    'etn',
    'nnt',
    'twt',
    'ttt',
    'tttt',
    'vv',
    'dd',
    'ss',
    'gg',
    'hh'
  ];
  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: DropdownButtonFormField<String>(
        value: _selectedItem,
        hint: Text(
          'Pilih alamat',
          style: secondaryTextStyle,
        ),
        menuMaxHeight: 300,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        items: _dropDownItems.map((String item) {
          return DropdownMenuItem(
            value: item,
            child: Text(
              item,
              style: secondaryTextStyle,
            ),
          );
        }).toList(),
        onChanged: (String? value) {
          setState(() {
            _selectedItem = value!;
          });
        },
      ),
    );
  }
}
