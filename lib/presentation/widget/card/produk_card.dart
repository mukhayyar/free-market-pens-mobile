import 'package:flutter/material.dart';

class ProdukCard extends StatelessWidget {
  final String role = 'seller';
  final String imgProduk =
      'https://asset.kompas.com/crops/7IdRwZpcpYsImnHe2nB5pZrPTgM=/0x0:1000x667/750x500/data/photo/2020/08/05/5f2a43ad5bd07.jpg';
  final String namaProduk = 'Tahu Bakso Enak Dapur Mama Udin';
  final int hargaProduk = 12000;
  final String statusProduk = 'tutup';

  const ProdukCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      surfaceTintColor: Theme.of(context).colorScheme.secondary,
      color: Theme.of(context).colorScheme.secondary,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) =>
          //         const DetailProdukPage(), // Ganti dengan halaman yang sesuai
          //   ),
          // );
        },
        child: Container(
          height: 175,
          width: 155,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 138,
                height: 104,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: role != 'seller' && statusProduk != 'terima'
                      ? _cekStatusProduk(statusProduk)
                      : Image.network(
                          imgProduk,
                          fit: BoxFit.cover,
                        ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                namaProduk,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: const EdgeInsets.only(top: 4),
                      height: 25,
                      child: Text(
                        'Rp$hargaProduk',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ),
                  if (role == 'seller' ||
                      (role != 'seller' && statusProduk == 'terima'))
                    SizedBox(
                      width: 25,
                      height: 25,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: EdgeInsets.zero,
                          backgroundColor:
                              Theme.of(context).colorScheme.onPrimary,
                          surfaceTintColor:
                              Theme.of(context).colorScheme.onPrimary,
                          elevation: 4,
                        ),
                        onPressed: () {
                          // masuk ke page edit
                        },
                        child: Icon(
                          role == 'seller' ? Icons.edit_outlined : Icons.add,
                          color: Theme.of(context).colorScheme.onSecondary,
                          size: 18,
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _cekStatusProduk(String status) {
    return Stack(
      children: [
        // Gambar sebagai lapisan paling bawah
        Image.network(
          'https://asset.kompas.com/crops/7IdRwZpcpYsImnHe2nB5pZrPTgM=/0x0:1000x667/750x500/data/photo/2020/08/05/5f2a43ad5bd07.jpg',
          width: 300,
          height: 200,
          fit: BoxFit.cover,
        ),
        // Fill warna di atas gambar
        Container(
          width: 300,
          height: 200,
          color: Colors.black
              .withOpacity(0.5), // Ubah warna dan opacity sesuai kebutuhan
        ),
        // Teks di atas gambar
        Center(
          child: Text(
            status == 'tutup'
                ? 'Sudah Tutup'
                : (status == 'habis' ? 'Produk Habis' : 'Sudah Siap'),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
