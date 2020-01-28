import 'package:choss_media/entries/athlete_entries.dart';
import 'package:flutter/material.dart';

List<PhotoEntry> photoEntries = [
  PhotoEntry(
    takenBy: 'Miles Adamson',
    title: "Too Tall to Fall",
    flavourText:
    "Tiny bits of chalk arc from right to left up the Grandma Peabody.",
    assetPath: "/assets/photos/too_tall_line",
  ),
  PhotoEntry(
    athleteEntry: athleteEntries[AthleteNames.matt],
    takenBy: 'Miles Adamson',
    title: "Grandpa Peabody 5.8",
    flavourText:
        "The killabee scopes out Ambrosia.",
    assetPath: "/assets/photos/matt_8",
  ),
  PhotoEntry(
    athleteEntry: athleteEntries[AthleteNames.kelsey],
    takenBy: 'Miles Adamson',
    title: "One Slabby Boi",
    flavourText: "This slab is a nice warm up for Heavenly Path.",
    assetPath: "/assets/photos/kelsey_slab",
  ),
  PhotoEntry(
    athleteEntry: athleteEntries[AthleteNames.kelsey],
    takenBy: 'Miles Adamson',
    title: "Kelsey Warms Up at the Sad Boulders",
    flavourText: "She was sad when she missed the good pocket",
    assetPath: "/assets/photos/kelsey_sads",
  ),
  PhotoEntry(
    takenBy: 'Miles Adamson',
    title: "Jimmy Webb Sends Lucid Dreaming",
    flavourText:
        "If you guys need some footage for reel rock or whatever just hit me up",
    assetPath: "/assets/photos/jimmy_lucid",
  ),
  PhotoEntry(
    athleteEntry: athleteEntries[AthleteNames.andrew],
    takenBy: 'Miles Adamson',
    title: "Heavenly Path - V1",
    flavourText: "Andrew climbs one of the best V1's in the world.",
    assetPath: "/assets/photos/drew_heavenly",
  ),
  PhotoEntry(
    athleteEntry: athleteEntries[AthleteNames.matt],
    takenBy: 'Miles Adamson',
    title: "KILLABEE",
    flavourText:
    "My WORD",
    assetPath: "/assets/photos/matt_glasses",
  ),
  PhotoEntry(
    athleteEntry: athleteEntries[AthleteNames.alex],
    takenBy: 'Miles Adamson',
    title: "Hmm",
    flavourText: 'HMM',
    assetPath: "/assets/photos/alex_tree",
  ),
  PhotoEntry(
    athleteEntry: athleteEntries[AthleteNames.alex],
    takenBy: 'Miles Adamson',
    title: "Alex on Grandpa Peabody",
    flavourText:
        'With the light fading, Alex coils his ropes and puts away his gear. And by his ropes and gear, I mean mine',
    assetPath: "/assets/photos/alex_coil",
  ),
  PhotoEntry(
    athleteEntry: athleteEntries[AthleteNames.alex],
    takenBy: 'Miles Adamson',
    title: "World First V20",
    flavourText:
        'Alex climbed this V20 in his street shoes, with a pad balanced on top of his head.',
    assetPath: "/assets/photos/alex_pad",
  ),
  PhotoEntry(
    athleteEntry: athleteEntries[AthleteNames.zach],
    takenBy: 'Miles Adamson',
    title: "Zach and a Core Shot",
    flavourText: '"Was it scary?" "Yeah I guess", he says.',
    assetPath: "/assets/photos/zach_coreshot",
  ),
  PhotoEntry(
    athleteEntry: athleteEntries[AthleteNames.alex],
    takenBy: 'Miles Adamson',
    title: "Alex Fricker on Boatswain 2: The Steepening",
    flavourText:
        "The core pitch of the new route, being hard at the bottom and scary at the top.",
    assetPath: "/assets/photos/alex_multi",
  ),
  PhotoEntry(
    takenBy: 'Miles Adamson',
    athleteEntry: athleteEntries[AthleteNames.morgan],
    title: "Morgan at the Lookout",
    flavourText: "A 30% chance of rain is a 70% chance to climb.",
    assetPath: "/assets/photos/morgan_lookout",
  ),
  PhotoEntry(
    athleteEntry: athleteEntries[AthleteNames.morgan],
    takenBy: 'Miles Adamson',
    title: "-10 in March",
    flavourText:
        "Morgan says -10 degrees C is too cold to climb (but just warm enough to belay me).",
    assetPath: "/assets/photos/morgan_tube",
  ),
  PhotoEntry(
    athleteEntry: athleteEntries[AthleteNames.alex],
    takenBy: 'Miles Adamson',
    title: "Sphinx - 13d",
    flavourText: "Impressively first graded 13a, this route is closer to 14a.",
    assetPath: "/assets/photos/alex_sphinx",
  ),
  PhotoEntry(
    athleteEntry: athleteEntries[AthleteNames.matt],
    takenBy: 'Miles Adamson',
    title: "Red Rocks Highball",
    flavourText:
        "Reddit gave me shit for calling this one an FA, but I really think it was.",
    assetPath: "/assets/photos/matt_hardest_gym",
  ),
  PhotoEntry(
    athleteEntry: athleteEntries[AthleteNames.matt],
    takenBy: 'Andrew Funk',
    title: "The 2nd Ascent of Purgatory - V9",
    flavourText:
        "Matt crushed out this amazing Kelowna boulder, which stood unrepeated for years.",
    assetPath: "/assets/photos/matt_purgatory",
  ),
  PhotoEntry(
    athleteEntry: athleteEntries[AthleteNames.matt],
    takenBy: 'Zach Watson',
    title: "Solitaire (V8)",
    flavourText: "Big boi doing big boi moves",
    assetPath: "/assets/photos/matt_solitare",
  ),
  PhotoEntry(
    athleteEntry: athleteEntries[AthleteNames.miles],
    takenBy: 'Unknown',
    title: "Animal Magnitism - V8",
    flavourText:
        "If you like falling on angular pieces of granite you've come to the right highball.",
    assetPath: "/assets/photos/miles_animal_mag",
  ),
  PhotoEntry(
    athleteEntry: athleteEntries[AthleteNames.miles],
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
      this.athleteEntry});
}
