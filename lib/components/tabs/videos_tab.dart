import 'package:flutter/material.dart';
import 'package:choss_media/entries/video_entries/video_entries.dart';

class VideosTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 50.0),
      child: Container(
        width: double.infinity,
          child: Column(children: videoEntries)),
    );
  }
}
