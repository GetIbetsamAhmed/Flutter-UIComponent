import 'package:flutter/material.dart';

import '../bottom_navigation/bottom_navy_bar.dart';
import '../curved_navigation_bar/curved_navigation_bar.dart';
import '../dot_navigation_bar/dot_navigation_bar.dart';
import '../salmon_navigation/salmon_navigation.dart';

class EntryPoint extends StatelessWidget {
  const EntryPoint({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(25),
              child: FlatButton(
                child: const Text(
                  "Bottom NavBar",
                  style: TextStyle(fontSize: 20.0),
                ),
                color: Colors.cyan,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavBar(),
                      ));
                },
              ),
            ),

            Container(
              margin: const EdgeInsets.all(25),
              child: FlatButton(
                child: const Text(
                  "Salmon NavBar",
                  style: TextStyle(fontSize: 20.0),
                ),
                color: Colors.cyan,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SalmonNavbar(),
                      ));
                },
              ),
            ),

            Container(
              margin: const EdgeInsets.all(25),
              child: FlatButton(
                child: const Text(
                  "Curved NavBar",
                  style: TextStyle(fontSize: 20.0),
                ),
                color: Colors.cyan,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CurvedBottomNavBar(),
                      ));
                },
              ),
            ),

            Container(
              margin: const EdgeInsets.all(25),
              child: FlatButton(
                child: const Text(
                  "Dots Nav Bar",
                  style: TextStyle(fontSize: 20.0),
                ),
                color: Colors.cyan,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DotBottomNav(),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
