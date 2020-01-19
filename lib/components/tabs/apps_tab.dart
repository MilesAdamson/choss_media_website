import 'package:flutter/material.dart';
import 'package:choss_media/entries/app_entries/app_entires.dart';

class AppsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: appEntries,
      ),
    );
  }
}