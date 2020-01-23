import 'package:flutter/material.dart';

enum AthleteNames {
  miles,
  matt,
  zach,
  morgan,
  alex,
  kelsey,
  andrew,
  bella,
  boston
}

Map<AthleteNames, AthleteEntry> athleteEntries = <AthleteNames, AthleteEntry>{
  AthleteNames.miles: AthleteEntry(
    name: 'Miles Adamson',
    nickname: "Mr. Miles",
    photoPath: "assets/athletes/miles.jpg",
    igURL: "https://www.instagram.com/miles_adamson/?hl=en",
    fullBio: "TODO",
  ),
  AthleteNames.matt: AthleteEntry(
    name: 'Matt Hendsbee',
    nickname: "The Sendsbee, THE FUCKING KILLABEE",
    photoPath: "assets/athletes/matt.jpg",
    igURL: "https://www.instagram.com/k_i_l_l_a_b_e_e/?hl=en",
      fullBio: "TODO",
  ),
  AthleteNames.zach: AthleteEntry(
    name: 'Zach Watson',
    nickname: "The BIG PURPS",
    photoPath: "assets/athletes/zach.jpg",
    igURL: "https://www.instagram.com/zachi.watson/",
      fullBio: "TODO",
  ),
  AthleteNames.morgan: AthleteEntry(
    name: 'Morgan Shankman',
    nickname: "M-Money",
    photoPath: "assets/athletes/morgan.jpg",
    fullBio: "TODO",
    igURL: null,
  ),
  AthleteNames.alex: AthleteEntry(
    name: 'Alex Fricker',
    nickname: "Young Frick",
    photoPath: "assets/athletes/alex.jpg",
    igURL: 'https://www.instagram.com/alex_fricker/?hl=en',
      fullBio: "TODO",
  ),
  AthleteNames.kelsey: AthleteEntry(
    name: 'Kelsey Fleming',
    nickname: "NOT CHELSEY",
    photoPath: "assets/athletes/kelsey.jpg",
    igURL: 'https://www.instagram.com/kelseyfleming8/',
      fullBio: "TODO",
  ),
  AthleteNames.andrew: AthleteEntry(
    name: 'Andrew Funk',
    nickname: "The boi with the flaxen biceps",
    photoPath: "assets/athletes/drew.jpg",
    igURL: 'https://www.instagram.com/andrew__funk/?hl=en',
      fullBio: "TODO",
  ),
  AthleteNames.bella: AthleteEntry(
    name: 'Bella',
    nickname: "BELLAAA",
    photoPath: "assets/athletes/bella.jpg",
    fullBio: "TODO",
    igURL: null,
  ),
  AthleteNames.boston: AthleteEntry(
    name: 'Boston',
    nickname: "Puppydoo",
    photoPath: "assets/athletes/boston.jpg",
    fullBio: "TODO",
    igURL: null,
  ),
};

class AthleteEntry {
  final String name;
  final String nickname;
  final String photoPath;
  final String igURL;
  final String fullBio;

  AthleteEntry({
    @required this.name,
    @required this.nickname,
    @required this.photoPath,
    @required this.fullBio,
    this.igURL,
  });

  String get avatarPath => photoPath.split(".").first + "_avatar.png";
}
