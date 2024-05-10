import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/konfirmasi_icon_button.dart';
import 'package:free_market_pens_mobile/theme.dart';

class TextColumn extends StatefulWidget {
  const TextColumn({super.key});

  @override
  State<TextColumn> createState() => _TextColumnState();
}

class _TextColumnState extends State<TextColumn> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(9, 0, 9, 0),
      child: Row(
        children: [
          Column(
            children: [
              KonfirmasiIconButton(
                condition: ButtonCondition.tersediaTutup,
                onPressed: (icon, color) {
                  // masuk ke konfirmasi dulu, jika ok warnanya berganti
                },
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {
                  //String url = "";
                  //launch(url);
                },
                icon: const FaIcon(
                  FontAwesomeIcons.whatsapp,
                  color: Color(0xFF64B161),
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        "Jainuddin",
                        style: secondaryTextStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      "15/4/2024",
                      style: secondaryTextStyle,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        "x 2",
                        style: secondaryTextStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      "Rp20.000",
                      style: secondaryPriceStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
