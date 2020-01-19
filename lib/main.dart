import 'package:choss_media/components/header.dart';
import 'package:choss_media/components/tab_bar.dart';
import 'package:flutter/material.dart';


/*
flutter packages pub global activate webdev
flutter packages pub global run webdev serve
flutter packages pub global run webdev build
 */

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Choss Media',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChossMediaHomePage(),
    );
  }
}

class ChossMediaHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ChossMediaHomePageState();
}

class ChossMediaHomePageState extends State<ChossMediaHomePage> {

  ChossMediaHomePageState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: <Widget>[
            Header(
              heightRatio: 1.0,
            ),
            ChossTabBar(),
          ],
        )),
      ),
    );
  }

}
