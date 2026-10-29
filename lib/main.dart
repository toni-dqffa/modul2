import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Row and Column',
      home: Scaffold(
        appBar: AppBar(title: const Text('Row and Column'), centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Baris pertama
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakBiruJempol(warna: Colors.blue, teks: 'Blue'),
                  const SizedBox(width: 15),
                  KotakBiruJempol(warna: Colors.green, teks: 'Green'),
                ],
              ),

              const SizedBox(height: 15),

              // Baris kedua
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakBiruJempol(warna: Colors.orange, teks: 'Orange'),
                  const SizedBox(width: 15),
                  KotakBiruJempol(warna: Colors.purple, teks: 'Purple'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KotakBiruJempol extends StatelessWidget {
  final Color warna;
  final String teks;

  const KotakBiruJempol({super.key, required this.warna, required this.teks});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 130,
      decoration: BoxDecoration(
        color: warna,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.favorite, color: Colors.red, size: 50),
          const SizedBox(height: 10),
          Text(
            teks,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
