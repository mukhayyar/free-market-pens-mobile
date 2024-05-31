import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/screens/seller/tambah_edit_produk_page.dart';

class TambahProdukCard extends StatelessWidget {
  const TambahProdukCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      surfaceTintColor: Theme.of(context).colorScheme.onPrimary,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.grey[100],
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TambahEditProdukPage(tipe: "tambah"),
            ),
          );
        },
        child: Container(
          height: 175,
          width: 155,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 138,
                height: 104,
                child: Icon(
                  Icons.add,
                  size: 68,
                  color: Theme.of(context).colorScheme.onSurface,
                  shadows: [
                    Shadow(
                      color: const Color.fromARGB(255, 170, 170, 170),
                      offset: Offset.fromDirection(1, 3),
                      blurRadius: 5,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Tambah Produk',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
