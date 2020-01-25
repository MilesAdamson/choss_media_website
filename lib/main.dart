import 'package:choss_media/components/base/border_button.dart';
import 'package:choss_media/components/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:choss_media/content_bloc/content_bloc.dart';
import 'components/side_drawer.dart';

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
          BorderButton(
            iconData: Icons.photo_library,
            text: "Photos",
            onPressed: () {
              ContentBloc.select(ContentSelection.Photos);
            },
          ),
          BorderButton(
            text: "Videos",
            iconData: Icons.video_call,
            onPressed: () {
              ContentBloc.select(ContentSelection.Videos);
            },
          ),
          BorderButton(
            iconData: Icons.apps,
            text: "Apps",
            onPressed: () {
              ContentBloc.select(ContentSelection.Apps);
            },
          ),
          BorderButton(
            iconData: Icons.people,
            text: "Athletes",
            onPressed: () {
              ContentBloc.select(ContentSelection.Athletes);
            },
          ),
        ],
      ),
      body: BlocBuilder(
          bloc: ContentBloc.getInstance(),
          builder: (context, ContentState state) {
            return Container(
              color: Colors.grey[300],
              child: ListView.builder(
                  itemCount: state.content.length + 1,
                  itemBuilder: (context, i) {
                    if (i == 0) {
                      return Header();
                    } else {
                      return state.content[i - 1];
                    }
                  }),
            );
          }),
    );
  }
}
