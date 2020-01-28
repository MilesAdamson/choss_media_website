import 'package:choss_media/components/base/title_text.dart';
import 'package:choss_media/entries/athlete_entries.dart';
import 'package:flutter/material.dart';

import 'package:choss_media/components/complete_widgets/choss_avatar.dart';

class TitleRow extends StatelessWidget {
  final List<AthleteEntry> avatarPaths;
  final String title;
  final String flavourText;
  final String detail;
  final Widget leading;
  final double fractionWidth;

  TitleRow({
    @required this.title,
    this.leading,
    this.flavourText,
    this.detail,
    this.avatarPaths,
    this.fractionWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: <Widget>[
          if (leading != null) leading,
          if (avatarPaths != null && avatarPaths.isNotEmpty)
            ...avatarPaths.map((entry) => Padding(
                  padding: EdgeInsets.only(right: 4.0),
                  child: ChossAvatar(
                    athleteEntry: entry,
                  ),
                )),
          if (avatarPaths != null)
          Container(
            width: 16.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedText(
                title,
                max: 32.0,
                min: 16.0,
                fractionWidth: fractionWidth,
              ),
              if (flavourText != null)
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: SizedText(
                    flavourText,
                    max: 16.0,
                    min: 11.0,
                    fractionWidth: fractionWidth,
                  ),
                ),
              if (detail != null)
                Padding(
                  padding: EdgeInsets.only(bottom: 2.0),
                  child: SizedText(
                    detail,
                    max: 14.0,
                    min: 9.0,
                    color: Colors.grey,
                    fractionWidth: fractionWidth,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
