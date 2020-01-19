import 'package:flutter/material.dart';
import 'package:choss_media/entries/athlete_entries/athlete_entries.dart';

class AthletesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 32.0),
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          children: athleteEntries,
        ),
      ),
    );
  }
}
