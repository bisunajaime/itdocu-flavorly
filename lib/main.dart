import 'package:flutter/material.dart';
import 'package:responsive_flutterapp/widgets/body.dart';
import 'package:responsive_flutterapp/widgets/bottombar.dart';
import 'package:responsive_flutterapp/widgets/searchpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Poppins-Regular",
      ),
      home: Home(),
      darkTheme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceText = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Flavorly',
          style: TextStyle(
            fontSize: deviceText * 40,
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontFamily: "Poppins-Regular",
          ),
        ),
      ),
      body: Body(),
      bottomNavigationBar: BottomBar(),
    );
  }
}
