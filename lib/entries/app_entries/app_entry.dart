import 'package:choss_media/components/dynamic_card.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;


class AppEntry extends StatefulWidget {
  static double transformWidth = 1100;

  final String title;
  final String description;
  final String iconPath;
  final List<String> gallery;
  final String storeLink;

  AppEntry(
      {@required this.title,
      @required this.description,
      @required this.gallery,
      @required this.iconPath,
      @required this.storeLink});

  @override
  State<StatefulWidget> createState() => AppEntryState();
}

class AppEntryState extends State<AppEntry> {
  int galleryIndex = 0;

  @override
  Widget build(BuildContext context) {
    double sidePad = MediaQuery.of(context).size.width * 0.1;
    if(MediaQuery.of(context).size.width < AppEntry.transformWidth) {
      sidePad = 8.0;
    }
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 32.0, horizontal: sidePad),
      child: DynamicCard(
        screenWidthMinimum: AppEntry.transformWidth,
        builder: (context) => Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  widget.title,
                  style: TextStyle(fontSize: 32.0, color: Colors.black),
                ),
              ),
              MediaQuery.of(context).size.width > AppEntry.transformWidth
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                            flex: 1,
                            child: Padding(
                              padding: EdgeInsets.only(right: 16.0),
                              child: galleryImage(),
                            )),
                        Flexible(flex: 2, child: detailsColumn()),
                      ],
                    )
                  : Container(),
              MediaQuery.of(context).size.width <= AppEntry.transformWidth
                  ? detailsColumn()
                  : Container(),
              MediaQuery.of(context).size.width <= AppEntry.transformWidth
                  ? galleryImage()
                  : Container(),
              pageController()
            ],
          ),
        ),
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
        Text('Image ${galleryIndex + 1} of ${widget.gallery.length}'),
        FlatButton(
          child: Text('Next >'),
          onPressed: () {
            if (galleryIndex + 1 < widget.gallery.length) {
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
    return Center(
      child: Container(
        color: Colors.black,
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: Image.network(
            widget.gallery[galleryIndex],
            height: 600,
            fit: BoxFit.fitHeight,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }

  Widget detailsColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text(widget.description),
        Padding(
          padding: EdgeInsets.only(top: 32.0),
          child: storeLinkRow(),
        )
      ],
    );
  }

  Widget storeLinkRow() {
    double width = 200;
    if(MediaQuery.of(context).size.width < AppEntry.transformWidth - 400) {
      width = MediaQuery.of(context).size.width * 0.4;
    }
    return FlatButton(
      onPressed: () => html.window.open(widget.storeLink, "name?"),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.network(
            widget.iconPath,
            fit: BoxFit.fitWidth,
            width: width / 2,
            alignment: Alignment.center,
          ),
          Container(
            width: 16.0,
          ),
          Image.network(
            '/assets/google_play.png',
            fit: BoxFit.fitWidth,
            width: width,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
