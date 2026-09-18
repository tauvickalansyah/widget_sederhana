import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

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
        body: Column(
          children: [
            ListTile(
              leading: Icon(Icons.article),
              title: Text('Artikel terbaru'),
              titleTextStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              subtitle: Text('Ini adalah artikel terbaru yang bisa kamu baca.'),
              subtitleTextStyle: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            Card(
              child: Column(
                verticalDirection: VerticalDirection.down,
                children: [
                  Image.asset('assets/gunungabu.png', width: 100, height: 100),
                  const Text('Ini gambar Gunung Abu', style: TextStyle(fontSize: 14,)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
