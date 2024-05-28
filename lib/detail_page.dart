import 'package:flutter/material.dart';
import 'data/wisata.dart';

class DetailPage extends StatelessWidget {
  final Wisata wisata;
  const DetailPage(this.wisata, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(wisata.gambar),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      wisata.nama,
                      style: TextStyle(fontSize: 32),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.date_range),
                          Text(wisata.hariBuka),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.access_time),
                          Text("${wisata.jamBuka} - ${wisata.jamTutup}"),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.monetization_on_outlined),
                          Text(wisata.harga),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    wisata.deskripsi,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: wisata.gambarTambahan.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.network(
                      wisata.gambarTambahan[index],
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
