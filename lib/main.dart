import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.brown,
          centerTitle: true,
          title: Text(
            'BUGÜN NE YESEM?',
            style: GoogleFonts.bungee(
              fontSize: 20,
            ),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  _YemekSayfasiState createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  List<String> corbaAdlari = [
    'Mercimek',
    'Tarhana',
    'Tavuksuyu',
    'Düğün Çorbası',
    'Yoğurtlu Çorba'
  ];
  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];
  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];

  void yemekleriYenile() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            //burada expanded widgetı resimleri ortak pay olarak yer verir ekranda.
            //Expanded(flex: 1, child: Image.asset("assets/corba_1.jpg")),
            //burada flex kullanarak alacağı payı belirleyebiliriz.
            //böylelikle ekrana yerleşmeleri büyük-küçük olarak değişir.

            child: Padding(
              //burada padding ile çevresinde bir boşluk sağlıyoruz.
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  onPressed: yemekleriYenile,
                  child: Image.asset('assets/corba_$corbaNo.jpg')),
            ),
          ),
          Text(
            corbaAdlari[corbaNo - 1],
            style: GoogleFonts.pacifico(
              fontSize: 20,
            ),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            //burada expanded widgetı resimleri ortak pay olarak yer verir ekranda.
            //Expanded(flex: 1, child: Image.asset("assets/corba_1.jpg")),
            //burada flex kullanarak alacağı payı belirleyebiliriz.
            //böylelikle ekrana yerleşmeleri büyük-küçük olarak değişir.

            child: Padding(
              //burada padding ile çevresinde bir boşluk sağlıyoruz.
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  onPressed: yemekleriYenile,
                  child: Image.asset('assets/yemek_$yemekNo.jpg')),
            ),
          ),
          Text(
            yemekAdlari[yemekNo - 1],
            style: GoogleFonts.pacifico(
              fontSize: 20,
            ),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            //burada expanded widgetı resimleri ortak pay olarak yer verir ekranda.
            //Expanded(flex: 1, child: Image.asset("assets/corba_1.jpg")),
            //burada flex kullanarak alacağı payı belirleyebiliriz.
            //böylelikle ekrana yerleşmeleri büyük-küçük olarak değişir.

            child: Padding(
              //burada padding ile çevresinde bir boşluk sağlıyoruz.
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  onPressed: yemekleriYenile,
                  child: Image.asset('assets/tatli_$tatliNo.jpg')),
            ),
          ),
          Text(
            tatliAdlari[tatliNo - 1],
            style: GoogleFonts.pacifico(
              fontSize: 20,
            ),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
