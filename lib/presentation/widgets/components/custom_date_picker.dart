import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/theme.dart';
import 'package:intl/intl.dart';

class CustomDatePicker extends StatefulWidget {
  final Function(DateTime)? onDateSelected;

  const CustomDatePicker({super.key, this.onDateSelected});

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  final TextEditingController _dateController = TextEditingController();
  DateTime? tanggalTerpilih;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ButtonStyle(
        elevation: const MaterialStatePropertyAll(4),
        backgroundColor: MaterialStatePropertyAll(onPrimary),
      ),
      onPressed: () async {
        tanggalTerpilih = await showDatePicker(
          context: context,
          initialDate: tanggalTerpilih,
          firstDate: DateTime(DateTime.now().year),
          lastDate: DateTime(DateTime.now().year + 10),
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
                    titleSmall: tertiaryTextStyle,
                    labelLarge: mainTextStyle,
                    headlineLarge: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'InknutAntiqua',
                    ),
                  )),
              child: child!,
            );
          },
          // locale: const Locale('id', 'ID'),
          // barrierColor: onPrimary,
        );

        if (tanggalTerpilih != null) {
          setState(() {
            _dateController.text =
                DateFormat('dd/MM/yyyy').format(tanggalTerpilih!);
          });

          if (widget.onDateSelected != null) {
            widget.onDateSelected!(tanggalTerpilih!);
          }
        }
      },
      child: ListTile(
        dense: true,
        contentPadding: EdgeInsets.zero,
        visualDensity: VisualDensity.compact,
        titleAlignment: ListTileTitleAlignment.center,
        leading: Text(
          _dateController.text.isEmpty ? "HH/BB/TTTT" : _dateController.text,
          style: _dateController.text.isEmpty
              ? tertiaryTextStyle
              : secondaryTextStyle,
        ),
        trailing: Transform.translate(
          offset: const Offset(8, 0),
          child: const Icon(
            Icons.calendar_today,
            size: 20,
          ),
        ),
      ),
    );
  }
}
