import 'package:choss_media/components/complete_widgets/athlete_card.dart';
import 'package:choss_media/entries/athlete_entries.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChossAvatar extends StatelessWidget {
  final AthleteEntry athleteEntry;

  ChossAvatar({@required this.athleteEntry});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showDialog(
          context: context,
          builder: (context) => AthleteCard(
                athleteEntry: athleteEntry,
              )),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(100.0)),
        elevation: 3.0,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(athleteEntry.avatarPath),
            ),
          ),
          width: 75.0,
          height: 75.0,
        ),
      ),
    );
  }
}
