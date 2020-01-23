import 'package:choss_media/entries/athlete_entries/athlete_entries.dart';
import 'package:flutter/material.dart';

List<VideoEntry> videoEntries = <VideoEntry>[
  VideoEntry(
    title: 'Boatswain 2: The Steepening - 13c/R',
    featuring: ['zach', 'miles', 'alex'],
    path: '/assets/videos/boatswain.jpg',
    youtubeUrl: 'https://youtu.be/xx4DFU7EtBw',
  ),
  VideoEntry(
    title: 'Sphinx, 13d',
    featuring: ['alex', 'zach'],
    path: '/assets/photos/alex_sphinx.jpg',
    youtubeUrl: 'https://www.youtube.com/watch?v=75a17i04Ve0',
  ),
  VideoEntry(
    title: 'Ambrosia, V11 (direct start)',
    featuring: ['miles', 'matt'],
    path: '/assets/videos/ambrosia.jpg',
    youtubeUrl: 'https://www.youtube.com/watch?v=znNS7L4aHfQ',
  ),
  VideoEntry(
    title: 'Bishop Highballs, 2018 - Matt Hendsbee',
    featuring: ['matt'],
    path: '/assets/videos/matt_bishop.jpg',
    youtubeUrl: 'https://www.youtube.com/watch?v=JY2mfpZv9ng',
  ),
  VideoEntry(
    title: 'Ground Up on Footprints - V7',
    featuring: ['miles'],
    path: '/assets/videos/footprints.jpg',
    youtubeUrl: 'https://www.youtube.com/watch?v=rE7epcwiMR8',
  ),
];

class VideoEntry {
  final String title;
  final List<String> featuring;
  final String path;
  final String youtubeUrl;
  final String flavourText;

  List<AthleteEntry> get athletes =>
      featuring.map((f) => athleteEntries[f]).toList();

  VideoEntry({
    @required this.featuring,
    @required this.path,
    @required this.youtubeUrl,
    @required this.title,
    this.flavourText,
  });
}
