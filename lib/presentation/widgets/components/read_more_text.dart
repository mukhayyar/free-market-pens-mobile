import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/theme.dart';

class ReadMoreText extends StatefulWidget {
  const ReadMoreText({
    super.key,
    required this.longText,
  });

  final String longText;

  @override
  State<ReadMoreText> createState() => _ReadMoreTextState();
}

class _ReadMoreTextState extends State<ReadMoreText> {
  bool readMore = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Text(
          widget.longText,
          style: tertiaryTextStyle,
          maxLines: readMore ? 1000 : 5,
          overflow: TextOverflow.ellipsis,
        ),
        TextButton(
          style: const ButtonStyle(
            padding: MaterialStatePropertyAll(EdgeInsets.zero),
          ),
          onPressed: () {
            setState(() {
              readMore = !readMore;
            });
          },
          child: Text(
            readMore ? 'Read less' : 'Read more',
            style: TextStyle(color: tertiary, fontSize: 12),
          ),
        ),
      ],
    );
  }
}
