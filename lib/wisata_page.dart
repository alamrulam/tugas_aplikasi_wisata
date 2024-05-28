import 'package:flutter/material.dart';

import 'data/daftar_wisata.dart';
import 'detail_page.dart';

class WisataPage extends StatelessWidget {
  const WisataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar adalah bagian atas dari aplikasi
      appBar: AppBar(
        title: const Text("Daftar Wisata"),
      ),

      // body adalah bagian tengah dari aplikasi
      body: ListView.builder(
        // itemCount adalah jumlah item yang akan ditampilkan
        itemCount: daftarWisata.length, // didapat dari daftar_wisata.dart
        itemBuilder: (context, index) {
          // Card adalah widget yang berfungsi untuk menampilkan widget bergaya kartu
          return Card(
            // ListTile widget memberikan tampilan template untuk item list
            child: ListTile(
              contentPadding: const EdgeInsets.all(10),
              // leading adalah bagian kiri dari ListTile
              leading: Image.network(
                // gambar didapat dari daftar_wisata.dart
                daftarWisata[index].gambar,
                width: 100, // lebar gambar
                fit: BoxFit.cover, // agar gambar tidak terdistorsi
              ),
              // title adalah bagian atas dari ListTile
              title: Text(daftarWisata[index].nama),
              // subtitle adalah bagian bawah dari ListTile
              subtitle: Text(daftarWisata[index].lokasi),
              // onTap adalah fungsi yang akan dijalankan ketika item di klik
              onTap: () {
                // pindah ke halaman detail ketika item di klik
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(daftarWisata[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
