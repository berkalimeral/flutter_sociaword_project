import 'package:flutter/material.dart';

import 'gonderi_karti.dart';

class ProfilSayfasi extends StatelessWidget {
  final String isimSoyad;
  final String kullaniciAdi;
  final String kapakResimLinki;
  final String profilResimLinki;
  const ProfilSayfasi(
      {@required this.isimSoyad,
      Key key,
      @required this.kullaniciAdi,
      @required this.kapakResimLinki,
      @required this.profilResimLinki})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 230,
              ),
              Container(
                height: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(kapakResimLinki), fit: BoxFit.cover),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 20,
                child: Hero(
                  tag: kullaniciAdi,
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white,
                      ),
                      // color: Colors.blueAccent,
                      image: DecorationImage(
                          image: NetworkImage(profilResimLinki),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 190,
                left: 145,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      isimSoyad,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      kullaniciAdi,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 130,
                right: 15,
                child: Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[200],
                    border: Border.all(
                      width: 2.0,
                      color: Colors.white,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_circle,
                        size: 18,
                      ),
                      SizedBox(
                        width: 2.0,
                      ),
                      Text(
                        "Takip Et",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context, true);
                },
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 75,
            color: Colors.grey.withOpacity(.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                sayac("Takipçi", "13K"),
                sayac("Takip", "1"),
                sayac("Paylaşım", "221"),
              ],
            ),
          ),
          GonderiKarti(
            profilResimLinki: profilResimLinki,
            gonderiResimLinki: kapakResimLinki,
            gecenSure: "16 Saat Önce",
            aciklama: "Yeni Profil Fotoğrafım XD",
            isimSoyad: isimSoyad,
          ),
        ],
      ),
    );
  }

  Column sayac(String baslik, String sayi) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          sayi,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          baslik,
          style: TextStyle(
            color: Colors.grey[600],
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
