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

  AthleteCard({@required this.athleteEntry, this.popup = false});

  @override
  State<StatefulWidget> createState() => AthleteCardState();
}

class AthleteCardState extends State<AthleteCard> {
  bool get landscape => MediaQuery.of(context).size.width > 1000.0;

  @override
  Widget build(BuildContext context) {
    Widget card = ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: 550,
        ),
        child: ContentCard(
      child: landscape
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children())
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children(),
            ),
    ));
    if (widget.popup) {
      return Stack(
        children: <Widget>[
          card,
          Positioned(
            right: 5.0,
            top: 5.0,
            child: Material(
              elevation: 0.0,
              color: Colors.transparent,
              child: IconButton(
                icon: Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        ],
      );
    } else {
      return card;
    }
  }

  List<Widget> children() {
    double size = Util.cap((MediaQuery.of(context).size.width / 1000.0) * 700,
        max: 500, min: 100);
    return <Widget>[
      Image.network(
        widget.athleteEntry.photoPath,
        height: size,
        width: size,
        fit: BoxFit.fitWidth,
        alignment: Alignment.center,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TitleRow(
            fractionWidth: landscape ? 0.5 : 0.8,
            title: widget.athleteEntry.name,
            detail: widget.athleteEntry.nickname,
            avatarPaths: <AthleteEntry>[],
          ),
          Container(
              width: landscape
                  ? MediaQuery.of(context).size.width * 0.5
                  : MediaQuery.of(context).size.width * 0.9,
              child: Divider()),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: SizedText(
              widget.athleteEntry.quote,
              max: 14.0,
              min: 11.0,
              fractionWidth: 0.5,
            ),
          )
        ],
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
