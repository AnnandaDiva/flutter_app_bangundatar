import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_bangundatar/landingpage.dart';


class Aboutme extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => LandingPage()));
            },
          ),
          title: Text("Tetang Saya"),
          centerTitle: true,
        ),
        body: MyApp(),
      ),
    );
  }


}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              MyHomePage(),
              ProfileName(),
              TextWeb(),
              RowCardOne(),
              RowCardTwo(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        radius: 90,
        child: CircleAvatar(
          radius: 95,
          backgroundImage: AssetImage('assets/Melali2.jpg'),
        ),
      ),
      margin: const EdgeInsets.only(top: 30.0),
    );
  }
}
class ProfileName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'PUTU ANNANDA DIVA SANJAYA',
        style: TextStyle(
          color: Colors.teal,
          fontSize: 20,
        ),
      ),
      margin: const EdgeInsets.only(top: 10.0),
    );
  }
}
class TextWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'https://medium.com/@annandadiva07',
        style: TextStyle(
          color: Colors.blue,
          fontSize: 15,
        ),
      ),
    );
  }
}
class RowCardOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: 150,
          margin: const EdgeInsets.only(top: 20.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.school,
                    size: 50,
                    color: Colors.tealAccent,
                  ),
                  Text(
                    'Undiksha',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          width: 150,
          margin: const EdgeInsets.only(top: 20.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.location_city,
                    size: 50,
                    color: Colors.tealAccent,
                  ),
                  Text(
                    'Singaraja',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
class RowCardTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: 150,
          margin: const EdgeInsets.only(top: 20.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.games,
                    size: 50,
                    color: Colors.tealAccent,
                  ),
                  Text(
                    'Gaming',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          width: 150,
          margin: const EdgeInsets.only(top: 20.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.music_note,
                    size: 50,
                    color: Colors.tealAccent,
                  ),
                  Text(
                    'Music',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}