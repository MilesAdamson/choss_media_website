import 'package:flutter/material.dart';
import 'package:choss_media/components/tabs/apps_tab.dart';
import 'package:choss_media/components/tabs/athletes_tab.dart';
import 'package:choss_media/components/tabs/photos_tab.dart';
import 'package:choss_media/components/tabs/videos_tab.dart';

class ChossTabBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ChossTabBarState();
}

class ChossTabBarState extends State<ChossTabBar> {
  int selectedTab = 0;
  List<Widget> tabContent = [
    PhotosTab(),
    VideosTab(),
    AthletesTab(),
    AppsTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 32.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  tabBarButton(title: "Photos", index: 0),
                  tabBarButton(title: "Videos", index: 1),
                  tabBarButton(title: "Athletes", index: 2),
                  tabBarButton(title: "Apps", index: 3),
                ],
              ),
            ),
          ),
          Container(
              color: Colors.white,
              child: tabContent[selectedTab]),
        ],
      ),
    );
  }

  Widget tabBarButton({@required String title, @required int index}) {
    double scaleFactor = MediaQuery.of(context).size.width / 1900;
    double sidePad = 128.0 * scaleFactor;
    double fontSize = 32.0 * scaleFactor;
    if (fontSize < 14.0) {
      fontSize = 14.0;
    }
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTab = index;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
              color: selectedTab == index ? Colors.white : Colors.transparent),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: sidePad),
          child: Text(
            title,
            style: TextStyle(fontSize: fontSize, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
