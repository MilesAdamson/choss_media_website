import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  final Widget child;

  ContentCard({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 1200
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 4.0),
          child: Card(
            elevation: 4.0,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
