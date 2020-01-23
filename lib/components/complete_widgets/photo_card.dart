import 'package:choss_media/components/base/content_card.dart';
import 'package:choss_media/components/base/title_row.dart';
import 'package:choss_media/entries/photo_entries/photo_entries.dart';
import 'package:flutter/material.dart';

class PhotoCard extends StatelessWidget {
  final PhotoEntry photoEntry;

  PhotoCard({@required this.photoEntry});

  @override
  Widget build(BuildContext context) {
    return ContentCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TitleRow(
            flavourText: photoEntry.flavourText,
            avatarPath: photoEntry.athleteEntry.avatarPath,
            title: photoEntry.title,
            detail: "Photo by: ${photoEntry.takenBy}",
          ),
          Image.network(
            photoEntry.assetPath + '.jpg',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fitHeight,
          ),
        ],
      ),
    );
  }
}
