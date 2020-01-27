import 'package:choss_media/components/base/border_button.dart';
import 'package:choss_media/components/complete_widgets/app_card.dart';
import 'package:choss_media/components/complete_widgets/athlete_card.dart';
import 'package:choss_media/components/complete_widgets/header.dart';
import 'package:choss_media/entries/app_entires.dart';
import 'package:choss_media/entries/athlete_entries.dart';
import 'package:choss_media/entries/video_entries.dart';
import 'package:flutter/material.dart';

import 'components/complete_widgets/photo_card.dart';
import 'components/complete_widgets/video_card.dart';
import 'entries/photo_entries.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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

class ChossMediaHomePageState extends State<ChossMediaHomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  List<Widget> photos;
  List<Widget> apps;
  List<Widget> athletes;
  List<Widget> videos;

  ChossMediaHomePageState();

  @override
  void initState() {
    controller = TabController(vsync: this, length: 4);
    photos = photoEntries
        .map((p) => PhotoCard(
              photoEntry: p,
            ))
        .toList();
    apps = appEntries
        .map((p) => AppCard(
              appEntry: p,
            ))
        .toList();
    athletes = athleteEntries.values
        .map((p) => AthleteCard(
              athleteEntry: p,
            ))
        .toList();
    videos = videoEntries
        .map((p) => VideoCard(
              videoEntry: p,
            ))
        .toList();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 2,
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70.0),
            child: AppBar(
              bottom: TabBar(
                controller: controller,
                tabs: <Widget>[
                  BorderButton(
                    iconData: Icons.photo_library,
                    text: "Photos",
                    onPressed: () => setState(() => controller.animateTo(0)),
                  ),
                  BorderButton(
                    text: "Videos",
                    iconData: Icons.video_call,
                    onPressed: () => setState(() => controller.animateTo(1)),
                  ),
                  BorderButton(
                    iconData: Icons.apps,
                    text: "Apps",
                    onPressed: () => setState(() => controller.animateTo(2)),
                  ),
                  BorderButton(
                    iconData: Icons.people,
                    text: "Athletes",
                    onPressed: () => setState(() => controller.animateTo(3)),
                  ),
                ],
              ),
              backgroundColor: Colors.black87,
              automaticallyImplyLeading: false,
            ),
          ),
          body: Container(
            color: Colors.grey[300],
            child: TabBarView(
              controller: controller,
              children: <Widget>[
                photosListView(),
                videosListView(),
                appsListView(),
                athletesListView(),
              ],
            ),
          ),
        ));
  }

  ListView photosListView() {
    return ListView.builder(
        itemCount: photos.length + 1,
        itemBuilder: (context, i) {
          if (i == 0) {
            return Header(
              path: '/assets/cover_1080.jpg',
              contentName: "Photos",
            );
          } else {
            return photos[i - 1];
          }
        });
  }

  ListView videosListView() {
    return ListView.builder(
        itemCount: videos.length + 1,
        itemBuilder: (context, i) {
          if (i == 0) {
            return Header(
              path: '/assets/cover_1080.jpg',
              contentName: "Apps",
            );
          } else {
            return videos[i - 1];
          }
        });
  }

  ListView appsListView() {
    return ListView.builder(
        itemCount: apps.length + 1,
        itemBuilder: (context, i) {
          if (i == 0) {
            return Header(
              path: '/assets/cover_1080.jpg',
              contentName: "Apps",
            );
          } else {
            return apps[i - 1];
          }
        });
  }

  ListView athletesListView() {
    return ListView.builder(
        itemCount: athletes.length + 1,
        itemBuilder: (context, i) {
          if (i == 0) {
            return Header(
              path: '/assets/cover_1080.jpg',
              contentName: "Athletes",
            );
          } else {
            return athletes[i - 1];
          }
        });
  }
}
