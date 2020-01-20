import 'package:choss_media/entries/athlete_entries/athlete_entry.dart';
import 'package:flutter/material.dart';

Map<String, AthleteEntry> athleteEntries = <String, AthleteEntry>{
  "miles": AthleteEntry(
    name: 'Miles Adamson',
    nickname: "Mr. Miles",
    photoPath: "assets/athletes/miles.jpg",
    igURL: "https://www.instagram.com/miles_adamson/?hl=en",
  ),
  "matt": AthleteEntry(
    name: 'Matt Hendsbee',
    nickname: "The Sendsbee, THE FUCKING KILLABEE",
    photoPath: "assets/athletes/matt.jpg",
    igURL: "https://www.instagram.com/k_i_l_l_a_b_e_e/?hl=en",
  ),
  "zack": AthleteEntry(
    name: 'Zach Watson',
    nickname: "The BIG PURPS",
    photoPath: "assets/athletes/zach.jpg",
    igURL: "https://www.instagram.com/zachi.watson/",
  ),
  "morgan": AthleteEntry(
    name: 'Morgan Shankman',
    nickname: "M-Money",
    photoPath: "assets/athletes/morgan.jpg",
    igURL: null,
  ),
  "alex": AthleteEntry(
    name: 'Alex Fricker',
    nickname: "Young Frick",
    photoPath: "assets/athletes/alex.jpg",
    igURL: 'https://www.instagram.com/alex_fricker/?hl=en',
  ),
  "kelsey": AthleteEntry(
    name: 'Kelsey Fleming',
    nickname: "NOT CHELSEY",
    photoPath: "assets/athletes/kelsey.jpg",
    igURL: 'https://www.instagram.com/kelseyfleming8/',
  ),
  "andrew": AthleteEntry(
    name: 'Andrew Funk',
    nickname: "The boi with the flaxen biceps",
    photoPath: "assets/athletes/drew.jpg",
    igURL: 'https://www.instagram.com/andrew__funk/?hl=en',
  ),
  "stephen": AthleteEntry(
    name: 'Stephen Salvador',
    nickname: "Mango Tango",
    photoPath: "assets/athletes/stephen.jpg",
    igURL: 'https://www.instagram.com/stephen.salvador/',
  ),
  "bella": AthleteEntry(
    name: 'Bella',
    nickname: "BELLAAA",
    photoPath: "assets/athletes/bella.jpg",
    igURL: null,
  ),
  "boston": AthleteEntry(
    name: 'Boston',
    nickname: "Puppydoo",
    photoPath: "assets/athletes/boston.jpg",
    igURL: null,
  ),
};

class AthleteEntry {
  final String name;
  final String nickname;
  final String photoPath;
  final String igURL;

  AthleteEntry({
    @required this.name,
    @required this.igURL,
    @required this.nickname,
    @required this.photoPath,
  });
}
