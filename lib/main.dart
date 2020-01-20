import 'package:choss_media/components/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/blocs/content/content_bloc.dart';
import 'components/side_drawer.dart';

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
      drawer: SideDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.black87,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          Builder(builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          })
        ],
      ),
      body: BlocBuilder(
        bloc: ContentBloc.getInstance(),
        builder: (context, ContentState state) {
          return ListView.builder(
            itemCount: state.content.length + 1,
              itemBuilder: (context, i) {
            if (i == 0) {
              return Header();
            } else {
              return state.content[i - 1];
            }
          });
        }
      ),
    );
  }
}
