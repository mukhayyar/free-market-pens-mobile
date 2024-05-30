import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/screens/buyer/keranjang_screen.dart';
import 'package:free_market_pens_mobile/presentation/widgets/cards/produk_card.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/dialog_confirmation.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/image_widget.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/search_widget.dart';
import 'package:free_market_pens_mobile/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class TokoPage extends StatefulWidget {
  const TokoPage({Key? key}) : super(key: key);

  @override
  State<TokoPage> createState() => _TokoPageState();
}

class _TokoPageState extends State<TokoPage> {
  final String _namaToko = 'Dapur ';
  final String _whatsAppNumber = '6285888429506';
  final bool _status = true; // Set status to false to show the dialog
  final List<String> _items = ['s'];

  @override
  void initState() {
    super.initState();
    if (!_status) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _showDialogConfirmation();
      });
    }
  }

  void _launchWhatsApp() async {
    final url = Uri.parse('https://wa.me/$_whatsAppNumber');
    if (!await launchUrl(url)) {
      throw 'Tidak dapat membuka $url';
    }
  }

  void _showDialogConfirmation() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return DialogConfirmation(
          name: "info-toko-tutup",
          id: 0,
          userName: "John",
          onConfirm: () {
            Navigator.pop(context);
          },
        );
      },
    );
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
          _items.isNotEmpty
              ? SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ProdukCard(
                              role: 'buyyer',
                            ),
                            ProdukCard(
                              role: 'buyeer',
                            ),
                          ],
                        ),
                      );
                    },
                    childCount: (_items.length / 2).ceil(),
                  ),
                )
              : SliverFillRemaining(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageWidget(
                          path: "assets/images/empty_card.png",
                          width: 100,
                          height: 100,
                        ),
                        Text(
                          'Tidak ada produk',
                          style: tertiaryTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
