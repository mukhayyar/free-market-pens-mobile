import 'package:flutter/material.dart';

import 'package:free_market_pens_mobile/theme.dart';

class AutentikasiProfil extends StatelessWidget {
  const AutentikasiProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 105,
        backgroundColor: secondary,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.2,
                  // color: Colors.blueAccent,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.black, width: 5.0),
                    color: secondary,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(300),
                      bottomRight: Radius.circular(300),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: (MediaQuery.of(context).size.width -
                            MediaQuery.of(context).size.width * 0.4) /
                        2,
                    vertical: (MediaQuery.of(context).size.width -
                            MediaQuery.of(context).size.width * 0.8) /
                        4,
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/profil.png',
                        width: MediaQuery.of(context).size.width * 0.8,
                      ),
                      Text(
                        "Gary899",
                        style: titleStyle,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              // color: Colors.black12,
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.83,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Email',
                        style: tertiaryTextStyle,
                      ),
                      Text(
                        'gary.osmond@gmail.com ',
                        style: secondaryTextStyle,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Nomor Whatsapp',
                        style: tertiaryTextStyle,
                      ),
                      Text(
                        '0890-0987-7583',
                        style: secondaryTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              // color: Colors.indigo,
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.83,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      leading: Container(
                        height: 43,
                        width: 45,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 0.5),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        child: Icon(Icons.call, color: Colors.black),
                      ),
                      title: Text(
                        "Ubah Nomor",
                        style: secondaryTextStyle,
                        textAlign: TextAlign.justify,
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right,
                          color: Colors.black, size: 40.0),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      leading: Container(
                        height: 43,
                        width: 45,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 0.5),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        child: Icon(Icons.lock, color: Colors.black),
                      ),
                      title: Text(
                        "Ubah Kata Sandi",
                        style: secondaryTextStyle,
                        textAlign: TextAlign.justify,
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right,
                          color: Colors.black, size: 40.0),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      leading: Container(
                        height: 43,
                        width: 45,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 0.5),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        child: Icon(Icons.store, color: Colors.black),
                      ),
                      title: Text(
                        "Buka Toko",
                        style: secondaryTextStyle,
                        textAlign: TextAlign.justify,
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right,
                          color: Colors.black, size: 40.0),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
