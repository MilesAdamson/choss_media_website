import 'package:choss_media/entries/athlete_entries/athlete_entries.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChossAvatar extends StatelessWidget {
  final String path;

  ChossAvatar({@required this.path});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(100.0)),
      elevation: 3.0,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(path),
          ),
        ),
        width: 75.0,
        height: 75.0,
      ),
    );
  }
}
