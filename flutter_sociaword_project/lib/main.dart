import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_sociaword_project/widgets/profil_kartlari.dart';

import 'widgets/gonderi_karti.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SociaWord Project',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.grey,
            size: 32,
          ),
          onPressed: () {},
        ),
        title: Text(
          "SociaWord",
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.purple,
              size: 32,
            ),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Column(
                    children: [
                      duyuru("Bradd Seni Takip Etti", "3 dk Önce"),
                      duyuru("David Gönderine Yorum Yaptı", "1 Saat Önce"),
                      duyuru("Matt Mesaj Gönderdi", "1.5 Saat Önce"),
                    ],
                  );
                },
              );
            },
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(
                    0.0,
                    5.0,
                  ),
                  blurRadius: 5.0,
                ),
              ],
            ),
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                profilKartiOlustur(
                    "https://cdn.pixabay.com/photo/2015/01/06/16/14/woman-590490_960_720.jpg",
                    "Scarlett Jhonson",
                    context,
                    "Black Widow",
                    "https://cdn.pixabay.com/photo/2015/01/06/16/14/woman-590490_960_720.jpg"),
                profilKartiOlustur(
                  "https://cdn.pixabay.com/photo/2015/09/02/12/39/woman-918583_960_720.jpg",
                  "Elizabeth Olsen",
                  context,
                  "Scarlett Witch",
                  "https://cdn.pixabay.com/photo/2015/09/02/12/39/woman-918583_960_720.jpg",
                ),
                profilKartiOlustur(
                  "https://cdn.pixabay.com/photo/2021/06/15/16/11/man-6339003_960_720.jpg",
                  "Robert Downey Jr.",
                  context,
                  "Iron Man",
                  "https://neizledik.com/wp-content/uploads/2019/09/iron-man-izle.jpg",
                ),
                profilKartiOlustur(
                  "https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508_960_720.jpg",
                  "Tom Ellis",
                  context,
                  "Lucifer",
                  "https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508_960_720.jpg",
                ),
                profilKartiOlustur(
                  "https://cdn.pixabay.com/photo/2018/08/23/22/29/girl-3626901_960_720.jpg",
                  "Jennifer Aniston",
                  context,
                  "Rachel Green",
                  "https://cdn.pixabay.com/photo/2018/08/23/22/29/girl-3626901_960_720.jpg",
                ),
                profilKartiOlustur(
                  "https://cdn.pixabay.com/photo/2014/04/12/14/59/portrait-322470_960_720.jpg",
                  "Mark Rufollo",
                  context,
                  "Hulk Smash",
                  "https://cdn.pixabay.com/photo/2014/04/12/14/59/portrait-322470_960_720.jpg",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GonderiKarti(
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2015/09/02/12/39/woman-918583_960_720.jpg",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2015/09/02/12/39/woman-918583_960_720.jpg",
            gecenSure: "1 Saat Önce",
            aciklama: "Yeni Profil Fotoğrafım :)",
            isimSoyad: "Elizabeth Olsen",
          ),
          GonderiKarti(
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2021/06/15/16/11/man-6339003_960_720.jpg",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2021/06/15/16/11/man-6339003_960_720.jpg",
            gecenSure: "16 Saat Önce",
            aciklama: "Yeni Profil Fotoğrafım XD",
            isimSoyad: "Robert Downey Jr.",
          ),
          GonderiKarti(
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2018/08/23/22/29/girl-3626901_960_720.jpg",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2018/08/23/22/29/girl-3626901_960_720.jpg",
            gecenSure: "21 Saat Önce",
            aciklama: "Yeni Profil Fotoğrafım :D",
            isimSoyad: "Jennifer Aniston",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.purple[300],
        child: Icon(
          Icons.add_a_photo,
          color: Colors.white,
        ),
      ),
    );
  }

  Padding duyuru(String mesaj, String gecenSure) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            mesaj,
            style: TextStyle(fontSize: 15),
          ),
          Text(
            gecenSure,
          ),
        ],
      ),
    );
  }
}
