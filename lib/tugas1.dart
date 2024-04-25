import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:just_audio/just_audio.dart';

final player = AudioPlayer();

class gambarSuara extends StatefulWidget {
  const gambarSuara({super.key});

  @override
  State<gambarSuara> createState() => _gambarSuaraState();
}

class _gambarSuaraState extends State<gambarSuara> {
  String? namaGambar;
  gantiNama(String nama) {
    setState(() {
      namaGambar = nama;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gambar"),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
              child: Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                          onTap: () async {
                            gantiNama("Ini Abi");
                            await player.setAsset("aset/suara/abi.mp3");
                            await player.play();
                          },
                          child: Image.asset('aset/gambar/abi.jpeg'))),
                  Expanded(
                      child: GestureDetector(
                          onTap: () async {
                            gantiNama("Ini Abel");
                            await player.setAsset("aset/suara/abel.mp3");
                            await player.play();
                          },
                          child: Image.asset('aset/gambar/abel.jpeg'))),
                ],
              )),
          Container(
              padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
              child: Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                          onTap: () async {
                            gantiNama("Ini Davin");
                            await player.setAsset("aset/suara/davin.mp3");
                            await player.play();
                          },
                          child: Image.asset('aset/gambar/davin.jpeg'))),
                  Expanded(
                      child: GestureDetector(
                          onTap: () async {
                            gantiNama("Ini Dimas");
                            await player.setAsset("aset/suara/dimas.mp3");
                            await player.play();
                          },
                          child: Image.asset('aset/gambar/dimas.jpeg'))),
                ],
              )),
          Container(
              padding: EdgeInsets.fromLTRB(150, 0, 150, 0),
              child: Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                          onTap: () async {
                            gantiNama("Ini Sahrul");
                            await player.setAsset("aset/suara/sahrul.mp3");
                            await player.play();
                          },
                          child: Image.asset('aset/gambar/sahrul.jpeg'))),
                ],
              )),
          Text(namaGambar ?? "Silahkan Klik Salah Satu Gambar")
        ],
      ),
    );
  }
}
