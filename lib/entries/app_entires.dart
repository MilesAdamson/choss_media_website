import 'package:flutter/material.dart';

List<AppEntry> appEntries = <AppEntry>[
  AppEntry(
    iconPath: "/assets/apps/interval/icon.png",
    storeLink:
        "https://play.google.com/store/apps/details?id=com.miles.adamson.interval&hl=en",
    title: "Interval Timer and Statistics",
    description:
        "With interval, you can create, edit and copy workouts easily. Cloning, moving and editing workout items takes seconds, allowing you to spend more time working out.\n\n"
        "The workout timer has large progress indicators and text for great readability when you phone is a couple feet away. Preview workout items to come in a scrolling list below it. "
        "This app has a single in-app-purchase for the full version. The full version unlocks limitations on how many workouts you can save, and the statistics/logging package."
        "\n\nThe statistics database records entries based on keywords you choose. Every time a workout items name matches a keyword, a statistic is recorded automatically."
        " You can view overall stats and a breakdown over time. A powerful graphing activity allows you to manipulate the plot, changing your breakdowns time range, scale, and information.",
    gallery: [
      "/assets/apps/interval/1.jpg",
      "/assets/apps/interval/2.jpg",
      "/assets/apps/interval/3.jpg",
      "/assets/apps/interval/4.jpg",
      "/assets/apps/interval/5.jpg",
      "/assets/apps/interval/6.jpg",
    ],
  ),
  AppEntry(
    storeLink:
        "https://play.google.com/store/apps/details?id=com.adamson.miles.climbingtrainer&hl=en_CA",
    title: "Climbing Coach",
    description:
        "Climbing Coach - The Personal Trainer requires no special permissions, has no ads and no subscription fees. It does not even require internet - the exercise database comes with the initial download.\n\n"
        "Special thanks to photographers Ryan Frecka, Peter Hoang, and my friends Matt Hendsbee, Kristine Mckay, Andrew Funk and Alex Fricker."
        "The app has an offline database of over 100 climbing exercises, for anything climbing related: volume, strength, power, power endurance, endurance and conditioning. They are categorized by type, difficulty and the equipment required."
        "Want to train for a Red Rocks trip 2 months from now? It will create you a personalized program instantly with the equipment you have available."
        "In your program, you will be able to see every training day created and its exercises. Tap on an exercise to load the exercises information into a timer and set/rep counter. There is no need to switch to a stopwatch app!\n"
        "If an exercise turns out to be too easy or difficult, tap and hold on its button to switch it out for any other exercise. Most exercises have different tiers of difficulty, so you can easily swap it out for a higher or lower tier. You can also create your own exercises."
        "Climbing Coach comes with full offline access to its drills and 15 detailed training tips. The training tips tell you why to train different things, and in what order. There are also tips on preventing injury, such as proper hangboard form and signs of overtraining.",
    iconPath: "/assets/apps/climbing_coach/icon.png",
    gallery: [
      "/assets/apps/climbing_coach/1.jpg",
      "/assets/apps/climbing_coach/2.jpg",
      "/assets/apps/climbing_coach/3.jpg",
      "/assets/apps/climbing_coach/4.jpg",
      "/assets/apps/climbing_coach/5.jpg",
      "/assets/apps/climbing_coach/6.jpg",
    ],
  ),
];

class AppEntry {
  final String storeLink;
  final String title;
  final String description;
  final String iconPath;
  final List<String> gallery;

  AppEntry({
    @required this.title,
    @required this.description,
    @required this.gallery,
    @required this.iconPath,
    @required this.storeLink,
  });
}
