import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

//class berfungsi untuk membuat widget utama dari aplikasi
//extends StatelessWidget digunakan untuk membuat widget yang tidak memiliki state
//const MainApp({super.key}) digunakan untuk membuat constructor dari class MainApp
//super.key digunakan untuk memanggil constructor dari class StatelessWidget
class MainApp extends StatelessWidget {
  const MainApp({super.key});

//fungsi override digunakan untuk mengoverride method build dari class StatelessWidget
//Widget build digunakan untuk membangun widget dari aplikasi
//MaterialApp digunakan untuk membuat aplikasi dengan material design
//home digunakan untuk menentukan halaman utama dari aplikasi
//Scaffold digunakan untuk membuat struktur dasar dari aplikasi
//AppBar digunakan untuk membuat bar di atas aplikasi
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text('Widget Bertingkat'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),

        // fungsi body digunakan untuk menampilkan konten utama dari aplikasi
        // Column digunakan untuk menampilkan widget secara vertikal
        // fungsi children digunakan untuk menampung beberapa widget di dalam Column
        // listTile digunakan untuk menampilkan informasi dalam bentuk daftar
        // leading digunakan untuk menampilkan ikon di sebelah kiri
        body: Column(
          children: [
            ListTile(
              leading: Icon(Icons.article),
              title: Text('Artikel terbaru'),
              titleTextStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              subtitle: Text('Ini adalah artikel terbaru yang bisa kamu baca.'),
              subtitleTextStyle: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            Image.asset('assets/images/gunungabu.jpg'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Gunung Abu adalah salah satu gunung berapi yang terletak di Indonesia. Gunung ini memiliki pemandangan yang indah dan menjadi destinasi wisata populer.',
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
