import 'package:choss_media/components/base/content_card.dart';
import 'package:choss_media/components/base/title_row.dart';
import 'package:choss_media/entries/video_entries.dart';
import 'package:flutter/material.dart';

import 'dart:html' as html;

class VideoCard extends StatelessWidget {
  final VideoEntry videoEntry;

  VideoCard({@required this.videoEntry});

  @override
  Widget build(BuildContext context) {
    return ContentCard(
      child: Column(
        children: <Widget>[
          if (MediaQuery.of(context).size.width > 700)
            TitleRow(
              title: videoEntry.title,
              flavourText: videoEntry.flavourText,
              avatarPaths: videoEntry.athletes.map((a) => a).toList(),
              fractionWidth: 0.5,
            )
          else
            Column(
              children: <Widget>[
                TitleRow(
                  title: videoEntry.title,
                  flavourText: videoEntry.flavourText,
                  fractionWidth: 0.8,
                ),
                TitleRow(
                  fractionWidth: 0.5,
                  avatarPaths: videoEntry.athletes.map((a) => a).toList(),
                  title: " ",
                ),
              ],
            ),
          Stack(
            children: <Widget>[
              Image.network(
                videoEntry.path,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              ),
              centeredPlayButton(context)
            ],
          ),
        ],
      ),
    );
  }

  Padding videoCover(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        color: Colors.black,
        child: Padding(
          padding: EdgeInsets.all(1),
          child: Image.network(
            videoEntry.path,
            width: MediaQuery.of(context).size.width,
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
        onPressed: () => html.window.open(videoEntry.youtubeUrl, "name?"),
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
