import 'package:flutter/material.dart';
import 'package:choss_media/components/dynamic_card.dart';
import 'dart:html' as html;

class VideoEntry extends StatelessWidget {
  final String title;
  final String path;
  final List<String> featuring;
  final String youtubeUrl;

  VideoEntry(
      {@required this.title,
      @required this.path,
      @required this.featuring,
      @required this.youtubeUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 32.0),
      child: DynamicCard(
        screenWidthMinimum: 800,
        builder: (context) => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            titleText(context),
            featuringText(context),
            Stack(
              children: <Widget>[
                videoCover(context),
                centeredPlayButton(context)
              ],
            ),
          ],
        ),
      ),
    );
  }

  Text featuringText(context) {
    double fontSize = 16.0;
    if (MediaQuery.of(context).size.width < 700) {
      fontSize = 12.0;
    }
    return Text('Featuring: ' + featuring.join(', '),
        style: TextStyle(fontSize: fontSize, color: Colors.grey));
  }

  Widget titleText(context) {
    double width = 0.5;
    double fontSize = 32.0;
    if (MediaQuery.of(context).size.width < 700) {
      fontSize = 16.0;
      width = 0.7;
    }
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * width,
      child: Padding(
        padding: EdgeInsets.only(top: 8.0, bottom: 4.0),
        child: Text(title,
            style: TextStyle(fontSize: fontSize, color: Colors.black)),
      ),
    );
  }

  Padding videoCover(BuildContext context) {
    double width = 0.7;
    if (MediaQuery.of(context).size.width < 700) {
      width = 0.9;
    }
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        color: Colors.black,
        child: Padding(
          padding: EdgeInsets.all(1),
          child: Image.network(
            path,
            width: MediaQuery.of(context).size.width * width,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }

  Positioned centeredPlayButton(context) {
    double width = 75;
    if (MediaQuery.of(context).size.width < 700) {
      width = 40;
    }
    return Positioned.fill(
      child: FlatButton(
        onPressed: () => html.window.open(youtubeUrl, "name?"),
        child: Align(
          alignment: Alignment.center,
          child: Image.network(
            '/assets/play.png',
            width: width,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
