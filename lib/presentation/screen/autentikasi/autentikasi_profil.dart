import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/bottom_appbar.dart';
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
      body: Stack(
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
              color: secondary,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(300),
                  bottomRight: Radius.circular(300)),
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
            child: Image.asset(
              'assets/profil.png',
              width: MediaQuery.of(context).size.width * 0.8,
            ),
          )
        ],
      ),
    );
  }
}
