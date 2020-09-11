import 'package:flutter/material.dart';

class Sepet extends StatefulWidget {
  @override
  _SepetState createState() => _SepetState();
}

class _SepetState extends State<Sepet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: TabBar(
              tabs: [
                Tab(
                    child: Text(
                  "Sepetim",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                )),
                Tab(
                    child: Text(
                  "Sonra Alacaklarım",
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
                        side: BorderSide(width: 1, color: Colors.pink[200])),
                    child: Container(
                      height: 400,
                      child: Icon(Icons.shopping_cart),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(10),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        side: BorderSide(width: 1, color: Colors.orange[200])),
                    child: Container(
                      height: 400,
                      child: Icon(Icons.shopping_cart),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
