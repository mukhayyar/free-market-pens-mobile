import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/custom_button.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/custom_textfield.dart';
import 'package:free_market_pens_mobile/presentation/widget/component/latar_setengah_lingkaran.dart';

class TambahEditAlamatScreen extends StatefulWidget {
  const TambahEditAlamatScreen({super.key, required this.judul});

  final String judul;

  @override
  State<TambahEditAlamatScreen> createState() => _TambahEditAlamatScreenState();
}

class _TambahEditAlamatScreenState extends State<TambahEditAlamatScreen> {
  final TextEditingController _alamatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.judul,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        surfaceTintColor: Theme.of(context).colorScheme.secondary,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Stack(
              children: [
                LatarSetengahLingkaran(),
                SizedBox(
                  height: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage(
                          'assets/alamat_logo.png',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomTextField(
                labelText: 'Lokasi pengambilan',
                hintText: 'Masukkan alamat lokasi pengambilan',
                controller: _alamatController,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 36.0, 0),
              child: Align(
                alignment: Alignment.centerRight,
                child: CustomButton(
                    isFilled: true,
                    labelButton: 'Simpan',
                    width: 104,
                    height: 38),
              ),
            )
          ],
        ),
      ),
    );
  }
}
