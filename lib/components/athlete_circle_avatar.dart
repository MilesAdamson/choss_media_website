import 'package:choss_media/entries/athlete_entries/athlete_entries.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AthleteCircleAvatar extends StatelessWidget {
  final AthleteEntry athleteEntry;

  AthleteCircleAvatar({@required this.athleteEntry});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(athleteEntry.photoPath),
        ),
      ),
      width: 75.0,
      height: 75.0,
    );
  }
}
