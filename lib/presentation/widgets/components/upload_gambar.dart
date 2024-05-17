import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/theme.dart';

class UploadGambar extends StatefulWidget {
  final double width;
  final double height;
  final String labelText;

  const UploadGambar(
      {super.key,
      required this.width,
      required this.height,
      required this.labelText});

  @override
  State<UploadGambar> createState() => _UploadGambarState();
}

class _UploadGambarState extends State<UploadGambar> {
  // FilePickerResult? fotoToko;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ButtonStyle(
              elevation: const MaterialStatePropertyAll(5),
              backgroundColor: MaterialStatePropertyAll(onPrimary),
              surfaceTintColor: MaterialStatePropertyAll(onPrimary),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)))),
          clipBehavior: Clip.hardEdge,
          onPressed: () {
            // final fotoToko = await FilePicker.platform.pickFiles();

            // if (fotoToko != null) {
            //   // File file = File(fotoToko!.files.single.path!);
            //   final file = fotoToko.files.first;
            //   openFile(file);
            // }
            //TODO: klik upload foto disini
          },
          child: InkWell(
            child: SizedBox(
              width: widget.width,
              height: widget.height,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Icon(
                    Icons.add,
                    size: widget.height / 1.75,
                    color: brownText,
                  )),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            widget.labelText,
            style: secondaryTextStyle,
          ),
        )
      ],
    );
  }

  // void openFile(PlatformFile file) {
  //   openFile(file);
  // }
}
