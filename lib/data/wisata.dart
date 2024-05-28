// membuat model wisata atau template untuk data wisata
class Wisata {
  final String nama;
  final String lokasi;
  final String deskripsi;
  final String gambar;
  final String harga;
  final String jamBuka;
  final String jamTutup;
  final String hariBuka;
  final List<String> gambarTambahan;
  Wisata({
    required this.nama,
    required this.lokasi,
    required this.deskripsi,
    required this.gambar,
    required this.harga,
    required this.jamBuka,
    required this.jamTutup,
    required this.hariBuka,
    required this.gambarTambahan,
  });
}
