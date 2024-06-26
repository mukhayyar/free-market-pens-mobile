import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/theme.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key, required this.strHint}) : super(key: key);

  final String strHint;

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = TextEditingController();

    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        color: Color(0xffF4F9F9),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: TextField(
        controller: _searchController,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.transparent,
          contentPadding: EdgeInsets.only(left: 20),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.search,
              color: Color(0xff45b9c6),
            ),
            onPressed: _onSearchPressed,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30),
          ),
          hintStyle: TextStyle(
              color: tertiary, fontFamily: 'InknutAntiqua', fontSize: 14),
          hintText: widget.strHint,
        ),
      ),
    );
  }

  void _onSearchPressed() {}
}
