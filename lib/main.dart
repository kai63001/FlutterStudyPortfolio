import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weak2/components/body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white, appBar: appBarNaja(), body: Body());
  }

  AppBar appBarNaja() {
    return AppBar(
      title: Text(
        "PROFILE",
        style: GoogleFonts.fredokaOne(
          textStyle:
              TextStyle(color: Colors.white, letterSpacing: 2.5, fontSize: 30),
        ),
      ),
      backgroundColor: Colors.purple,
      elevation: 0,
    );
  }
}
