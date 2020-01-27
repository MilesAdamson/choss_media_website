import 'package:choss_media/components/base/content_card.dart';
import 'package:choss_media/components/base/title_row.dart';
import 'package:choss_media/components/base/title_text.dart';
import 'package:choss_media/entries/athlete_entries.dart';
import 'package:choss_media/util/util.dart';
import 'package:flutter/material.dart';

import 'dart:html' as html;

class AthleteCard extends StatefulWidget {
  final AthleteEntry athleteEntry;
  final bool popup;

  AthleteCard({
    @required this.athleteEntry,
    this.popup = false,
  });

  @override
  State<StatefulWidget> createState() => AthleteCardState();
}

class AthleteCardState extends State<AthleteCard> {
  bool get landscape => MediaQuery.of(context).size.width > 1000.0;

  @override
  Widget build(BuildContext context) {
    double size = Util.cap((MediaQuery.of(context).size.width / 1000.0) * 700,
        max: 500, min: 100);
    return Container(
      alignment: Alignment.bottomCenter,
      width: size,
      height: size + 100,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: children(size),
        ),
      ),
    );
  }

  List<Widget> children(double size) {
    return <Widget>[
      TitleRow(
        title: widget.athleteEntry.name,
        detail: widget.athleteEntry.nickname,
        avatarPaths: <AthleteEntry>[],
        leading: widget.popup
            ? IconButton(
                icon: Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              )
            : null,
      ),
      Spacer(),
      Image.network(
        widget.athleteEntry.photoPath,
        height: size,
        width: size,
        fit: BoxFit.fitWidth,
        alignment: Alignment.center,
      ),
    ];
  }

  Widget instaButton(BuildContext context) {
    if (widget.athleteEntry.igURL == null) {
      return Container();
    }
    double size = MediaQuery.of(context).size.width * 0.03;
    if (size < 25.0) {
      size = 25.0;
    }
    return GestureDetector(
      onTap: () => html.window.open(widget.athleteEntry.igURL, "name?"),
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
