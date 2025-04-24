import 'package:flutter/material.dart';
import 'package:parsingdata/presentation/homePage.dart';

class DetailOlderPage extends StatelessWidget {

  final String makanan;

  final String minuman;

  final String jumlahMakanan;

  final String jumlahMinuman;

  final int totalHarga;

  const DetailOlderPage({
    Key? key,
    required this.makanan,
    required this.minuman,
    required this.jumlahMakanan,
    required this.jumlahMinuman,
    required this.totalHarga,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Order Page')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Makanan: $makanan'),
            Text('Jumlah Makanan: $jumlahMakanan'),
            Text('Minuman: $minuman'),
            Text('Jumlah Minuman: $jumlahMinuman'),
            Text('Total Harga: $totalHarga'),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                  (route) => false,
                );
              },
              child: const Text('Finish Order'),
            ),
          ],
        ),
      ),
    );
  }
}