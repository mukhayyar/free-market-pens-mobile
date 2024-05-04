import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/theme.dart';

class AlamatCard extends StatefulWidget {
  const AlamatCard({super.key});

  @override
  State<AlamatCard> createState() => _AlamatCardState();
}

class _AlamatCardState extends State<AlamatCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      color: Colors.white,
      elevation: 3,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Colors.grey,
          width: 1,
        ), // primary color
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Center(
        child: InkWell(
          splashColor: Colors.teal.withAlpha(30), //secondary color
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: const Image(
                image: AssetImage(
                  'assets/alamat.png',
                ),
              ),
              title: Text(
                'Pos Satpam PENS', //alamat
                overflow: TextOverflow.ellipsis,
                maxLines: 10,
                style: secondaryTextStyle,
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.edit),
                    color: primary,
                    onPressed: () {
                      // Add your edit functionality here
                    },
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    iconSize: 24,
                    style: const ButtonStyle(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                  const SizedBox(width: 20),
                  IconButton(
                    icon: const Icon(Icons.delete),
                    color: error,
                    onPressed: () {
                      // Add your delete functionality here
                    },
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    iconSize: 24,
                    style: const ButtonStyle(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
