import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(new MaterialApp(
      home: new CardProfile(),
      routes: <String, WidgetBuilder>{
        'CardProfile': (BuildContext context) => new CardProfile(),
        'DetailPage': (BuildContext context) => new DetailPage(),
      },
    ));

class CardProfile extends StatelessWidget {
  const CardProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/img/hani.jpeg'),
            ),
            Text(
              'Nurafifah Hani',
              style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Universitas Islam Kalimantan',
              style: TextStyle(
                  fontFamily: "Pacifico",
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.teal,
                ),
                title: Text(
                  'Nurafifah Hani',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Pacifico',
                      fontSize: 20.0),
                ),
                onTap: () {
                  Navigator.popAndPushNamed(context, 'DetailPage');
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '+62 6040 0050',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Pacifico',
                      fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'nurafifahhani30101@gmail.com',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Pacifico',
                      fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.teal,
                ),
                title: Text(
                  'Kayu Tangi',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Pacifico',
                      fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.date_range,
                  color: Colors.teal,
                ),
                title: Text(
                  '30 Januari 2001',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Pacifico',
                      fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.work,
                  color: Colors.teal,
                ),
                title: Text(
                  'Mahasiswa',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Pacifico',
                      fontSize: 20.0),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.teal,
      appBar: new AppBar(
        backgroundColor: Colors.white,
        leading: new Icon(
          Icons.account_circle,
          color: Colors.teal,
        ),
        title: new Text(
          "Detail Page",
          style: TextStyle(color: Colors.teal),
        ),
      ),
      body: new SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Nama Lengkap : Nurafifah Hani',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      )),
    );
  }
}
