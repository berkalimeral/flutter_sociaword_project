import 'package:flutter/material.dart';
import 'package:flutter_sociaword_project/widgets/profil_sayfasi.dart';

Widget profilKartiOlustur(String url, String isimSoyad, BuildContext context,
    String kullaniciAdi, String profilResimLinki) {
  String username = isimSoyad;
  String resimUrl = url;
  return Material(
    child: InkWell(
      onTap: () {
        Future<bool> donenVeri = Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ProfilSayfasi(
                  isimSoyad: username,
                  kullaniciAdi: kullaniciAdi,
                  kapakResimLinki: resimUrl,
                  profilResimLinki: profilResimLinki);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Hero(
                  tag: kullaniciAdi,
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 2, color: Colors.grey),
                      borderRadius: BorderRadius.circular(35),
                      image: DecorationImage(
                          image: NetworkImage(resimUrl), fit: BoxFit.cover),
                    ),
                  ),
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              username,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
