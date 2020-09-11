import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final Function onTapped;

  const HomePage({Key key, this.onTapped}) : super(key: key);
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
          height: 400,
          child: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                bottom: TabBar(
                  tabs: [
                    Tab(
                        child: Text(
                      "Kampanyalar",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    )),
                    Tab(
                        child: Text(
                      "Süper Fiyatlar",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    )),
                    Tab(
                        child: Text(
                      "Keşfet",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    )),
                  ],
                ),
              ),
              body: Stack(
                children: <Widget>[
                  TabBarView(
                    children: [
                      Card(
                        margin: EdgeInsets.all(10),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            side:
                                BorderSide(width: 1, color: Colors.pink[200])),
                        child: Image(
                          image: AssetImage('assets/images/kampanya.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            side: BorderSide(
                                width: 1, color: Colors.orange[200])),
                        child: Image(
                          image: AssetImage('assets/images/fiyat.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            side: BorderSide(
                                width: 1, color: Colors.purple[200])),
                        child: Image(
                          image: AssetImage('assets/images/kesfet.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: onTapped,
                      child: CircleAvatar(
                          child: Icon(Icons.arrow_forward,
                              color: Colors.blue[100])),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Divider(),
        InkWell(
          child: Card(
            margin: EdgeInsets.all(10),
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                side: BorderSide(width: 5, color: Colors.white)),
            child: Container(
              height: 60,
              color: Colors.white70,
              child: ListView(
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        side: BorderSide(width: 0.5, color: Colors.black)),
                    child: Container(
                      height: 40,
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.ac_unit,
                                color: Colors.pink,
                              )),
                          Text(
                            " Ayın Favorileri",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        side: BorderSide(width: 0.5, color: Colors.black)),
                    child: Container(
                      color: Colors.white,
                      height: 40,
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.computer,
                                color: Colors.orange,
                              )),
                          Text(" Dijital Eğitim"),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        side: BorderSide(width: 0.5, color: Colors.black)),
                    child: Container(
                      color: Colors.white,
                      height: 40,
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.border_color,
                                color: Colors.purple,
                              )),
                          Text(" Rengarenk Kırtasiye"),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        side: BorderSide(width: 0.5, color: Colors.black)),
                    child: Container(
                      color: Colors.white,
                      height: 40,
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.phone,
                                color: Colors.blue,
                              )),
                          Text(" Teknolojide Çok Satanlar"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Divider(),
      ],
    );
  }
}
