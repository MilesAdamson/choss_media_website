import 'package:choss_media/components/base/content_card.dart';
import 'package:choss_media/components/base/title_row.dart';
import 'package:choss_media/components/base/title_text.dart';
import 'package:choss_media/entries/app_entires.dart';
import 'package:choss_media/util/util.dart';
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

  bool get wideScreen => MediaQuery.of(context).size.width > 1000.0;

  @override
  Widget build(BuildContext context) {
    return ContentCard(
      child: wideScreen
          ? Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children())
          : Container(
              child: Column(
                children: children(),
              ),
            ),
    );
  }

  List<Widget> children() {
    return <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          galleryImage(),
          pageController(),
        ],
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: wideScreen ? 32.0 : 8.0),
        child: Column(
          children: <Widget>[
            TitleRow(
              fractionWidth: 0.4,
              title: widget.appEntry.title,
              leading: Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Image.network(
                  widget.appEntry.iconPath,
                  width: 75.0,
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center,
                ),
              ),
            ),
            Material(
              elevation: 3.0,
              child: Container(
                padding: EdgeInsets.all(8.0),
                width: MediaQuery.of(context).size.width *
                    (wideScreen ? 0.5 : 0.9),
                height: 400,
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: 16.0, top: 16.0),
                  child: SingleChildScrollView(
                    child: SizedText(
                      widget.appEntry.description,
                      max: 16.0,
                      min: 11.0,
                      fractionWidth: 0.5
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: getItOnGooglePlay(),
            ),
          ],
        ),
      ),
    ];
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
          height: Util.cap(MediaQuery.of(context).size.height * 0.6, min: 400, max: MediaQuery.of(context).size.height * 0.9),
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
