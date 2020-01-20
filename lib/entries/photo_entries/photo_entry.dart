import 'package:choss_media/components/athlete_circle_avatar.dart';
import 'package:choss_media/entries/photo_entries/photo_entries.dart';
import 'package:flutter/material.dart';

class PhotoContent extends StatelessWidget {
  final PhotoEntry photoEntry;

  PhotoContent({@required this.photoEntry});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  AthleteCircleAvatar(
                    athleteEntry: photoEntry.athleteEntry,
                  ),
                  Container(width: 16.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        photoEntry.title,
                        style: TextStyle(color: Colors.black, fontSize: 32.0),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          photoEntry.flavourText,
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.0),
                        child: Text(
                          'Taken By: ${photoEntry.takenBy}',
                          style: TextStyle(color: Colors.grey, fontSize: 14.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Image.network(
              photoEntry.assetPath + '.jpg',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitHeight,
            ),
          ],
        ),
      ),
    );
  }
}
