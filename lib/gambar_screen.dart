import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:just_audio/just_audio.dart';

final player = AudioPlayer();

class GambarScreen extends StatefulWidget {
  const GambarScreen({super.key});

  @override
  State<GambarScreen> createState() => _GambarScreenState();
}

class _GambarScreenState extends State<GambarScreen> {
  String? namaGambar;
  gantiNama(String nama){
    setState(() {
      namaGambar = nama;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(namaGambar ?? "Gambar"),
        backgroundColor: Colors.pink,
      ),
      body: GridView.count(crossAxisCount: 3,children: [
        GestureDetector(
          onTap: () async{
            gantiNama('Pantai');
            await player.setAsset("asset/suara/pantai.mp3");
            await player.play();
          },
          child: Card(
            child: Image.asset('asset/gambar/pantai.jpg'),
          ),
        ),
        GestureDetector(
          onTap: (){
            gantiNama('Pantai');
          },
          child: Card(
            child: Image.asset('asset/gambar/pantai.jpg'),
          ),
        ),
        GestureDetector(
          onTap: (){
            gantiNama('Pantai');
          },
          child: Card(
            child: Image.asset('asset/gambar/pantai.jpg'),
          ),
          
        ),
      ],),
    );
  }
}