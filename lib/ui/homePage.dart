import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final Function onTapped;
  final int selectedIndex;

  HomePage({Key key, this.onTapped, this.selectedIndex = 0}) : super(key: key);

  /* void changePage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }*/

  /* Widget showPage(int selectedIndex) {
    if (selectedIndex == 0) {
      return HomePage();
    }
    if (selectedIndex == 1) {
      return Kategoriler();
    }
    if (selectedIndex == 2) {
      return Sepetim();
    } else {
      return Hesabim();
    }
  }

  Widget Kategoriler() {
    return Center(
      child: Container(
        child: Text("Kategoriler"),
      ),
    );
  }

  Widget Hesabim() {
    return Center(
      child: Container(
        child: Text("Hesabım"),
      ),
    );
  }

  Widget Sepetim() {
    return Center(
      child: Container(
        child: Text("Sepetim"),
      ),
    );
  }
*/
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          flexibleSpace: Image(
            image: AssetImage('assets/images/indir.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        body: ListView(
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                side: BorderSide(
                                    width: 1, color: Colors.pink[200])),
                            child: Image(
                              image: AssetImage('assets/images/kampanya.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Card(
                            margin: EdgeInsets.all(10),
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
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
        ),
        bottomNavigationBar: BottomNavigationBar(
          /*Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.redAccent),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            //onTap: changePage,
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.white,*/
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: Text(
                'Anasayfa',
                style: TextStyle(color: Colors.black),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category, color: Colors.black),
              title: Text(
                'Kategoriler',
                style: TextStyle(color: Colors.black),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.black,
              ),
              title: Text(
                'Sepetim',
                style: TextStyle(color: Colors.black),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              title: Text(
                'Hesabım',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
