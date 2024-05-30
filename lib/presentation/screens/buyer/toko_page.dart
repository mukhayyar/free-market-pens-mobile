import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/screens/buyer/keranjang_screen.dart';
import 'package:free_market_pens_mobile/presentation/widgets/cards/produk_card.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/search_widget.dart';
import 'package:free_market_pens_mobile/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class TokoPage extends StatefulWidget {
  const TokoPage({Key? key}) : super(key: key);

  @override
  State<TokoPage> createState() => _TokoPageState();
}

class _TokoPageState extends State<TokoPage> {
  final String _namaToko = 'Dapur Assalamualaikum';
  final String _whatsAppNumber = '6285888429506';

  void _launchWhatsApp() async {
    final url = Uri.parse('https://wa.me/$_whatsAppNumber');
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        surfaceTintColor: Colors.transparent,
        title: SearchWidget(),
        elevation: 1,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xff45b9c6),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Color(0xff45b9c6),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const KeranjangScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(height: 20),
                Center(
                  child: Container(
                    width: 140,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      border: Border.all(
                        color: primary,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/alamat_logo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Container(
                    width: 300,
                    child: Text(
                      _namaToko,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'InknutAntiqua',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                    ),
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Image.asset(
                          'assets/whatsapp.png',
                        ),
                        onPressed: _launchWhatsApp,
                      ),
                      Text(
                        '+$_whatsAppNumber',
                        style: TextStyle(fontSize: 15, color: tertiary),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ProdukCard(),
                      ProdukCard(),
                    ],
                  ),
                );
              },
              childCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
