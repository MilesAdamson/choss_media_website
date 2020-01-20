import 'package:choss_media/entries/athlete_entries/athlete_entries.dart';
import 'package:flutter/material.dart';

List<PhotoEntry> photoEntries = [
  PhotoEntry(
    athleteEntry: athleteEntries['zack'],
    takenBy: 'Miles Adamson',
    title: "Zach and a Core Shot",
    flavourText: '"Was it scary?" "Yeah I guess", he says.',
    assetPath: "/assets/photos/zach_coreshot",
  ),
  PhotoEntry(
    athleteEntry: athleteEntries['alex'],
    takenBy: 'Miles Adamson',
    title: "Alex Fricker on Boatswain 2: The Steepening",
    flavourText:
        "The core pitch of the new route, being hard at the bottom and scary at the top.",
    assetPath: "/assets/photos/alex_multi",
  ),
  PhotoEntry(
    takenBy: 'Miles Adamson',
    athleteEntry: athleteEntries['morgan'],
    title: "Morgan at the Lookout",
    flavourText: "A 30% chance of rain is a 70% chance to climb.",
    assetPath: "/assets/photos/morgan_lookout",
  ),
  PhotoEntry(
    athleteEntry: athleteEntries['morgan'],
    takenBy: 'Miles Adamson',
    title: "-10 in March",
    flavourText:
        "Morgan says -10 degrees C is too cold to climb (but just warm enough to belay me).",
    assetPath: "/assets/photos/morgan_tube",
  ),
  PhotoEntry(
    athleteEntry: athleteEntries['alex'],
    takenBy: 'Miles Adamson',
    title: "Sphinx - 13d",
    flavourText: "Impressively first graded 13a, this route is closer to 14a.",
    assetPath: "/assets/photos/alex_sphinx",
  ),
  PhotoEntry(
    athleteEntry: athleteEntries['matt'],
    takenBy: 'Miles Adamson',
    title: "Red Rocks Highball",
    flavourText:
        "Reddit gave me shit for calling this one an FA, but I really think it was.",
    assetPath: "/assets/photos/matt_hardest_gym",
  ),
  PhotoEntry(
    athleteEntry: athleteEntries['matt'],
    takenBy: 'Andrew Funk',
    title: "The 2nd Ascent of Purgatory - V9",
    flavourText:
        "Matt crushed out this amazing Kelowna boulder, which stood unrepeated for years.",
    assetPath: "/assets/photos/matt_purgatory",
  ),
  PhotoEntry(
    athleteEntry: athleteEntries['matt'],
    takenBy: 'Zach Watson',
    title: "Solitaire (V8)",
    flavourText: "Big boi doing big boi moves",
    assetPath: "/assets/photos/matt_solitare",
  ),
  PhotoEntry(
    athleteEntry: athleteEntries['miles'],
    takenBy: 'Unknown',
    title: "Animal Magnitism - V8",
    flavourText:
        "If you like falling on angular pieces of granite you've come to the right highball.",
    assetPath: "/assets/photos/miles_animal_mag",
  ),
  PhotoEntry(
    athleteEntry: athleteEntries['miles'],
    takenBy: 'Unknown',
    title: "The Derek Zoolander Highball",
    flavourText:
        "...for kids who can't climb good and want to learn to do other stuff good too. V7",
    assetPath: "/assets/photos/miles_zoolander",
  ),
];

class PhotoEntry {
  final String takenBy;
  final String title;
  final String flavourText;
  final String assetPath;
  final AthleteEntry athleteEntry;

  PhotoEntry(
      {@required this.title,
      @required this.takenBy,
      @required this.flavourText,
      @required this.assetPath,
      @required this.athleteEntry});
}
