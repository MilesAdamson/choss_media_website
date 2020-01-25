import 'package:choss_media/components/base/content_card.dart';
import 'package:choss_media/components/base/title_row.dart';
import 'package:choss_media/entries/athlete_entries.dart';
import 'package:flutter/material.dart';

import 'dart:html' as html;

class AthleteCard extends StatelessWidget {
  final AthleteEntry athleteEntry;

  AthleteCard({@required this.athleteEntry});

  @override
  Widget build(BuildContext context) {
    return ContentCard(
      child: Wrap(
        direction: Axis.horizontal,
        children: <Widget>[
          Image.network(
            athleteEntry.photoPath,
            height: 500,
            width: 500,
            fit: BoxFit.fitWidth,
            alignment: Alignment.center,
          ),
          Container(
            width: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TitleRow(
                  fractionWidth: 0.6,
                  title: athleteEntry.name,
                  detail: athleteEntry.nickname,
                  avatarPaths: <AthleteEntry>[],
                ),
                Divider(),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(athleteEntry.fullBio, style: TextStyle(fontSize: 14.0),),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget profilePic(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      child: Stack(
        children: <Widget>[
          Image.network(
            athleteEntry.photoPath,
            height: 500,
            width: 500,
            fit: BoxFit.fitWidth,
            alignment: Alignment.center,
          ),
          Positioned(
            right: 4,
            bottom: 4,
            child: instaButton(context),
          ),
        ],
      ),
    );
  }

  Widget instaButton(BuildContext context) {
    if (athleteEntry.igURL == null) {
      return Container();
    }
    double size = MediaQuery.of(context).size.width * 0.03;
    if (size < 25.0) {
      size = 25.0;
    }
    return GestureDetector(
      onTap: () => html.window.open(athleteEntry.igURL, "name?"),
      child: Image.network(
        '/assets/insta.png',
        height: size,
        width: size,
        fit: BoxFit.fitWidth,
        alignment: Alignment.center,
      ),
    );
  }
}
