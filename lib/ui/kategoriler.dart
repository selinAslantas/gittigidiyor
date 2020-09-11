import 'package:flutter/material.dart';

class Kategoriler extends StatefulWidget {
  @override
  _KategorilerState createState() => _KategorilerState();
}

class _KategorilerState extends State<Kategoriler> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 30,
          color: Colors.white60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.search,
                color: Colors.black,
              ),
            ],
          ),
        ),
        Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Kategoriler",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Cep Telefonu & Aksesuar"),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
        Divider(),
        Container(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Bilgisayar,Tablet"),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
        Divider(),
        Container(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Beyaz Eşya"),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
        Divider(),
        Container(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("TV,Ses ve Görüntü Sistemleri"),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
        Divider(),
        Container(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Fotoğraf & Kamera"),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
        Divider(),
        Container(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Video Oyun & Konsol"),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
        Divider(),
        Container(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Spor ve Outdor"),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
        Divider(),
        Container(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Giyim & Aksesuar"),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
        Divider(),
        Container(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Mücevher,Takı,Saat"),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
        Divider(),
        Container(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Kozmetik & Kişisel Bakım"),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
        Divider(),
        Container(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Bebek & Anne"),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
        Divider(),
        Container(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Otomobil, Motosiklet & Aksesuar"),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
        Divider(),
        Container(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Evcil Hayvan Ürünleri"),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
        Divider(),
        Container(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Ofis,Kırtasiye"),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
        Divider(),
        Container(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Süpermarket"),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ],
    );
  }
}
