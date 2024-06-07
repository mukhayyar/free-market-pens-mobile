enum DialogType { alert, confirmation, info }

class DialogMessage {
  final String name;
  final String path;
  final DialogType type;
  final String imgPath;
  final String message;
  const DialogMessage(
      {required this.name,
      required this.path,
      required this.type,
      required this.imgPath,
      required this.message});
}

const List<DialogMessage> dialogs = [
  DialogMessage(
      name: "hapus-produk",
      path: '/product/{id}/delete',
      type: DialogType.alert,
      imgPath: 'assets/images/deleted.png',
      message: 'Apakah Anda yakin untuk menghapus produk ini?'),
  DialogMessage(
      name: "hapus-alamat",
      path: '/store/alamat/{id}/delete',
      type: DialogType.confirmation,
      imgPath: 'assets/images/deleted.png',
      message: 'Apakah Anda yakin untuk menghapus alamat ini?'),
  DialogMessage(
      name: "konfirmasi-user-bayar",
      path: '/transaction/{id}/confirm',
      type: DialogType.alert,
      imgPath: 'assets/images/No records.png',
      message: 'Apakah Anda yakin bahwa {namaUser} sudah bayar?'),
  DialogMessage(
      name: "konfirmasi-keluar",
      path: '/logout',
      type: DialogType.confirmation,
      imgPath: 'assets/images/Welcome sign.png',
      message: 'Apakah Anda yakin untuk keluar akun?'),
  DialogMessage(
      name: "konfirmasi-toko-dibuka-kembali",
      path: '/store/open',
      type: DialogType.confirmation,
      imgPath: 'assets/images/Welcome sign.png',
      message: 'Toko sedang tutup. Apakah toko ingin dibuka kembali?'),
  DialogMessage(
      name: "konfirmasi-menutup-toko-penjualan-berjalan",
      path: '/store/close',
      type: DialogType.confirmation,
      imgPath: 'assets/images/deleted.png',
      message:
          'Masih ada penjualan yang berjalan. Apakah Anda yakin untuk menutup toko?'),
  DialogMessage(
      name: "konfirmasi-menutup-toko",
      path: '/store/close',
      type: DialogType.confirmation,
      imgPath: 'assets/images/deleted.png',
      message: 'Apakah Anda yakin untuk menutup toko?'),
  DialogMessage(
      name: "info-toko-tutup",
      path: '/back',
      type: DialogType.info,
      imgPath: 'assets/images/Announcement.png',
      message: 'Toko sedang tutup.Silahkan kembali lagi nanti.'),
  DialogMessage(
      name: "pesanan-berhasil-dibuat",
      path: '/back',
      type: DialogType.info,
      imgPath: 'assets/images/Track your order.png',
      message:
          'Pesanan berhasil dibuat. Lihat statusnya di riwayat transaksi.'),
  DialogMessage(
      name: "pesanan-gagal-dibuat",
      path: '/back',
      type: DialogType.info,
      imgPath: 'assets/images/Bad connection.png',
      message: 'Pesanan gagal dibuat. Periksa koneksi internet.'),
  DialogMessage(
      name: "konfirmasi-membatalkan-pesanan",
      path: '/transaction/{id}/cancel',
      type: DialogType.confirmation,
      imgPath: 'assets/images/deleted.png',
      message: 'Apakah Anda yakin bahwa {namaUser} membatalkan pesanan?'),
  DialogMessage(
      name: "konfirmasi-pembayaran-tidak-bisa-dilakukan",
      path: '/back',
      type: DialogType.info,
      imgPath: 'assets/images/Announcement.png',
      message:
          'Konfirmasi pembayaran tidak bisa dilakukan. Produk ini belum tanggal pengambilan.'),
  DialogMessage(
    name: "konfirmasi-hapus-user",
    path: '/user/{id}/delete',
    type: DialogType.confirmation,
    imgPath: 'assets/images/deleted.png',
    message: 'Apakah Anda yakin untuk menghapus user?',
  ),
  DialogMessage(
    name: "konfirmasi-hapus-user-toko",
    path: '/user/{id}/delete',
    type: DialogType.confirmation,
    imgPath: 'assets/images/deleted.png',
    message: 'User ini memiliki toko. Apakah Anda yakin untuk menghapus user?',
  ),
];
