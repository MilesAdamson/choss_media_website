import 'package:choss_media/components/base/content_card.dart';
import 'package:choss_media/components/base/title_row.dart';
import 'package:choss_media/entries/app_entires.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class AppCard extends StatefulWidget {
  final AppEntry appEntry;

  AppCard({@required this.appEntry});

  @override
  State<StatefulWidget> createState() => AppCardState();
}

class AppCardState extends State<AppCard> {
  int galleryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ContentCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    galleryImage(),
                    pageController(),
                  ],
                ),
              ),
              Flexible(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      TitleRow(
                        title: widget.appEntry.title,
                        leading: Image.network(
                          widget.appEntry.iconPath,
                          width: 75.0,
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.center,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 64.0, top: 16.0),
                        child: Text(
                          widget.appEntry.description,
                        ),
                      ),
                      getItOnGooglePlay(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget pageController() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('< Previous'),
          onPressed: () {
            if (galleryIndex - 1 >= 0) {
              setState(() {
                galleryIndex--;
              });
            }
          },
        ),
        Text('Image ${galleryIndex + 1} of ${widget.appEntry.gallery.length}'),
        FlatButton(
          child: Text('Next >'),
          onPressed: () {
            if (galleryIndex + 1 < widget.appEntry.gallery.length) {
              setState(() {
                galleryIndex++;
              });
            }
          },
        ),
      ],
    );
  }

  Widget galleryImage() {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: Image.network(
          widget.appEntry.gallery[galleryIndex],
          height: 600,
          fit: BoxFit.fitHeight,
          alignment: Alignment.center,
        ),
      ),
    );
  }

  Widget getItOnGooglePlay() {
    return FlatButton(
      onPressed: () => html.window.open(widget.appEntry.storeLink, "name?"),
      child: Image.network(
        '/assets/google_play.png',
        fit: BoxFit.fitWidth,
        width: 175,
        alignment: Alignment.center,
      ),
    );
  }
}
