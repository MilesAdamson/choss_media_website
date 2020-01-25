import 'package:choss_media/components/complete_widgets/athlete_card.dart';
import 'package:choss_media/entries/athlete_entries.dart';
import 'package:choss_media/util/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChossAvatar extends StatelessWidget {
  final AthleteEntry athleteEntry;

  ChossAvatar({@required this.athleteEntry});

  @override
  Widget build(BuildContext context) {

    double rawSize = (MediaQuery.of(context).size.width / 1000.0) * 75.0;
    double size = Util.cap(rawSize, min: 20.0, max: 75.0);

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
          width: size,
          height: size,
        ),
      ),
    );
  }
}
