import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/theme.dart';

class CustomTimePicker extends StatefulWidget {
  final Function(TimeOfDay)? onTimeSelected;

  const CustomTimePicker({super.key, this.onTimeSelected});

  @override
  State<CustomTimePicker> createState() => _CustomTimePickerState();
}

class _CustomTimePickerState extends State<CustomTimePicker> {
  final TextEditingController _timeController = TextEditingController();
  TimeOfDay? waktuTerpilih;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      child: FilledButton(
        style: ButtonStyle(
          elevation: const MaterialStatePropertyAll(4),
          backgroundColor: MaterialStatePropertyAll(onPrimary),
        ),
        onPressed: () async {
          waktuTerpilih = await showTimePicker(
            initialTime: waktuTerpilih ?? TimeOfDay.now(),
            context: context,
            builder: (context, child) {
              return Theme(
                data: Theme.of(context).copyWith(
                    colorScheme: ColorScheme.light(
                      primary:
                          secondary, // header background color - bg tanggal terpilih
                      onPrimary:
                          onSecondary, // header text color - tanggal terpilih
                      onSurface: onSecondary, // body text color
                      surfaceTint: onPrimary,
                      background: onPrimary,
                      onBackground: tertiary, //divider
                    ),
                    textButtonTheme: TextButtonThemeData(
                      style: TextButton.styleFrom(
                        textStyle: mainPriceStyle,
                        foregroundColor: primary, // button text color
                      ),
                    ),
                    textTheme: TextTheme(
                      bodyLarge: secondaryTextStyle,
                    )),
                child: child!,
              );
            },
          );

          if (waktuTerpilih != null) {
            setState(() {
              _timeController.text = waktuTerpilih!.format(context);
            });
          }
          ;
          if (widget.onTimeSelected != null) {
            widget.onTimeSelected!(waktuTerpilih!);
          }
        },
        child: ListTile(
          dense: true,
          contentPadding: EdgeInsets.zero,
          visualDensity: VisualDensity.compact,
          titleAlignment: ListTileTitleAlignment.center,
          leading: Text(
            _timeController.text.isEmpty ? "JJ:MM" : _timeController.text,
            style: _timeController.text.isEmpty
                ? tertiaryTextStyle
                : secondaryTextStyle,
          ),
          trailing: Transform.translate(
            offset: const Offset(8, 0),
            child: const Icon(Icons.access_time_outlined),
          ),
        ),
      ),
    );
  }
}
