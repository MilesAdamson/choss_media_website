import 'package:choss_media/entries/athlete_entries/athlete_entries.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:choss_media/components/dynamic_card.dart';

class AthleteProfile extends StatelessWidget {
  final AthleteEntry athleteEntry;

  AthleteProfile(
      {@required this.athleteEntry});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.0),
      child: DynamicCard(
        screenWidthMinimum: 800,
        builder: (context) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            profilePic(context),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
              child: Text(
                athleteEntry.name,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
              child: Text(
                athleteEntry.nickname,
                style: TextStyle(color: Colors.grey[500], fontSize: 14.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Stack profilePic(BuildContext context) {
    double size;
    if (MediaQuery.of(context).size.width > 800) {
      size = MediaQuery.of(context).size.width * 0.27;
    } else {
      size = MediaQuery.of(context).size.width * 0.7;
    }
    return Stack(
      children: <Widget>[
        Image.network(
          athleteEntry.photoPath,
          height: size,
          width: size,
          fit: BoxFit.fitWidth,
          alignment: Alignment.center,
        ),
        Positioned(
          right: 4,
          bottom: 4,
          child: instaButton(context),
        ),
      ],
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
