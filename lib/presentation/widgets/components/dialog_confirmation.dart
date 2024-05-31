import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/dialog.dart';
import 'package:free_market_pens_mobile/theme.dart';

class DialogConfirmation extends StatefulWidget {
  const DialogConfirmation(
      {super.key,
      required this.name,
      required this.id,
      required this.userName});

  final String name;
  final int id;
  final String userName;

  @override
  State<DialogConfirmation> createState() => _DialogConfirmationState();
}

class _DialogConfirmationState extends State<DialogConfirmation> {
  late DialogMessage dialog;
  late String message;
  late String path;

  @override
  void initState() {
    super.initState();
    dialog = dialogs.firstWhere((d) => d.name == widget.name);
    message = dialog.message.replaceAll('{namaUser}', widget.userName);
    path = dialog.path.replaceAll('{id}', widget.id.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.5),
      body: Center(
        child: Stack(clipBehavior: Clip.none, children: [
          Container(
            width: 300,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 20),
                Text(
                  message,
                  style: textLabelStyle.copyWith(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                confirmationType(dialog.type.toString()),
              ],
            ),
          ),
          Positioned(
            bottom: 140,
            left: 35,
            right: 35,
            child: Image.asset(dialog.imgPath, width: 170, height: 135),
          ),
        ]),
      ),
    );
  }

  Widget confirmationType(String type) {
    print(type);
    switch (type) {
      case "DialogType.alert":
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: appTheme.colorScheme.secondary,
                backgroundColor: appTheme.colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: Text(
                'Tidak',
                style: textLabelStyle.copyWith(
                    color: appTheme.colorScheme.onPrimary),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle "Ya" action
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: appTheme.colorScheme.primary,
                backgroundColor: appTheme.colorScheme.onPrimary,
                side: BorderSide(color: appTheme.colorScheme.primary, width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: Text(
                'Ya',
                style: textLabelStyle.copyWith(
                    color: appTheme.colorScheme.primary),
              ),
            ),
          ],
        );
      case "DialogType.confirmation":
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: appTheme.colorScheme.primary,
                backgroundColor: appTheme.colorScheme.onPrimary,
                side: BorderSide(color: appTheme.colorScheme.primary, width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: Text(
                'Tidak',
                style: textLabelStyle.copyWith(
                    color: appTheme.colorScheme.primary),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle "Ya" action
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: appTheme.colorScheme.secondary,
                backgroundColor: appTheme.colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: Text(
                'Ya',
                style: textLabelStyle.copyWith(
                    color: appTheme.colorScheme.onPrimary),
              ),
            ),
          ],
        );
      case "DialogType.info":
        return Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: appTheme.colorScheme.onPrimary,
              backgroundColor: appTheme.colorScheme.primary,
              side: BorderSide(color: appTheme.colorScheme.primary, width: 2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            child: Text(
              'Baik',
              style: textLabelStyle.copyWith(
                  color: appTheme.colorScheme.onPrimary),
            ),
          ),
        );
      default:
        return Container();
    }
  }
}
