import 'package:flutter/material.dart';
import 'package:projek/gambar_screen.dart';
import 'package:projek/kalkulator_screen.dart';
import 'package:projek/textformfield.dart';
import 'package:projek/tugas1.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Screen"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                // ini nagivasi
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => KalkulatorScreen(),
                  ),
                );
              },
              child: Text('Kalkulator')),
          ElevatedButton(
              onPressed: () {
                // ini nagivasi
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => GambarScreen(),
                  ),
                );
              },
              child: Text("Gambar")),
          ElevatedButton(
              onPressed: () {
                // ini nagivasi
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => gambarSuara(),
                  ),
                );
              },
              child: Text("Tugas")),
          ElevatedButton(
              onPressed: () {
                // ini nagivasi
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => TextForm(),
                  ),
                );
              },
              child: Text("Text Form")),
        ],
      ),
    );
  }
}
