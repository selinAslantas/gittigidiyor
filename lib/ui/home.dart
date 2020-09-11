import 'package:flutter/material.dart';
import 'package:gitti_gidiyor/ui/homePage.dart';
import 'package:gitti_gidiyor/ui/kategoriler.dart';
import 'package:gitti_gidiyor/ui/kesfet.dart';
import 'package:gitti_gidiyor/ui/sepet.dart';

class Home extends StatefulWidget {
  final Function onTapped;

  const Home({Key key, this.onTapped}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  List<Widget> allPage;
  HomePage homePage;
  Kategoriler kategoriler;
  Sepet sepet;
  Kesfet kesfet;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homePage = HomePage();
    kategoriler = Kategoriler();
    sepet = Sepet();
    kesfet = Kesfet();

    allPage = [homePage, kategoriler, sepet, kesfet];
  }

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
        body: allPage[selectedIndex],
        bottomNavigationBar: bottomNavigationBar(),
      ),
    );
  }

  BottomNavigationBar bottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
          title: Text(
            'Anasayfa',
            style: TextStyle(color: Colors.black),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.category,
            color: Colors.grey,
          ),
          title: Text(
            'Kategoriler',
            style: TextStyle(color: Colors.black),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_basket,
            color: Colors.grey,
          ),
          title: Text(
            'Sepetim',
            style: TextStyle(color: Colors.black),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.grey,
          ),
          title: Text(
            'Hesabım',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
    );
  }

  void onTapped() {}
}
