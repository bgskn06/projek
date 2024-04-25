import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextForm extends StatefulWidget {
  const TextForm({super.key});

  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  String? nilaiAkhirHuruf;
  double? nilaiRataRata;

  TextEditingController? inputNilaiTugas = TextEditingController();
  TextEditingController? inputNilaiUTS = TextEditingController();
  TextEditingController? inputNilaiUAS = TextEditingController();

  hitungNilai() {
    setState(() {
      int nilai1 = int.parse(inputNilaiTugas?.text ?? "0");
      int nilai2 = int.parse(inputNilaiUTS?.text ?? "0");
      int nilai3 = int.parse(inputNilaiUAS?.text ?? "0");
      nilaiRataRata = (nilai1 + nilai2 + nilai3) / 3;

      konversiHuruf(nilaiRataRata ?? 0);
    });
  }

  konversiHuruf(double nilai) {
    if (nilai >= 90 && nilai <= 100) {
      nilaiAkhirHuruf = 'nilai A';
    } else if (nilai >= 70 && nilai <= 89) {
      nilaiAkhirHuruf = 'nilai B';
    } else if (nilai >= 50 && nilai <= 69) {
      nilaiAkhirHuruf = 'nilai C';
    } else {
      nilaiAkhirHuruf = 'belum lulus';
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nilai Akhir"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Text(nilaiAkhirHuruf ?? "Nilai Akhir"),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
                labelText: "Masukkan Nilai Tugas",
                hintText: "Masukkan Nilai Tugas",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                )),
            controller: inputNilaiTugas,
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                labelText: "Masukkan Nilai UTS",
                hintText: "Masukkan Nilai Tugas",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                )),
            controller: inputNilaiUTS,
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                labelText: "Masukkan Nilai UTS",
                hintText: "Masukkan Nilai Tugas",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                prefixIcon: Icon(Icons.task),
                suffixIcon: Icon(Icons.check)),
            controller: inputNilaiUAS,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                hitungNilai();
              },
              child: Text('Hitung Nilai')),
          Text('Nilai Rata Rata :'),
          Text(nilaiRataRata?.toString() ?? '0')
        ],
      ),
    );
  }
}
