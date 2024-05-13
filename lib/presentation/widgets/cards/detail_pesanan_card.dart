import 'package:flutter/material.dart';
import 'package:free_market_pens_mobile/presentation/widgets/tiles/produk_detail_pesanan_tile.dart';
import 'package:free_market_pens_mobile/presentation/screens/buyer/checkout_screen.dart';
import 'package:free_market_pens_mobile/theme.dart';

class DetailPesananCard extends StatelessWidget {
  const DetailPesananCard({super.key, required this.isCancelled});

  final bool isCancelled;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      color: tertiary2,
      surfaceTintColor: tertiary2,
      elevation: 3,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: tertiary,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Toko A",
                      style: secondaryTextStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const CheckoutScreen(), // Ganti dengan halaman yang sesuai
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 15,
                    ),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    style: const ButtonStyle(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Divider(
                height: 1,
                thickness: 1,
                color: tertiary,
              ),
              const SizedBox(height: 8),
              ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const ProdukDetailPesananTile();
                },
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: tertiary,
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      "Total pesanan (3 produk): ",
                      style: secondaryTextStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    "Rp50.000",
                    style: secondaryPriceStyle,
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      "Tanggal pesanan: ",
                      style: secondaryTextStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    "30/4/2024",
                    style: tertiaryTextStyle,
                  ),
                ],
              ),
              if (isCancelled)
                Column(
                  children: [
                    const SizedBox(height: 8),
                    Divider(
                      height: 1,
                      thickness: 1,
                      color: tertiary,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            "Tanggal dibatalkan: ",
                            style: secondaryTextStyle,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          "30/4/2024",
                          style: tertiaryTextStyle,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            "Alasan: ",
                            style: secondaryTextStyle,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          "Buyer membatalkan pesanan",
                          style: secondaryPriceStyle,
                        ),
                      ],
                    ),
                  ],
                )
              else
                Container(), // Tambahkan widget Container kosong jika pesanan tidak dibatalkan
            ],
          ),
        ),
      ),
    );
  }
}
