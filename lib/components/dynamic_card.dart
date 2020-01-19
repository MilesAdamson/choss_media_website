import 'package:flutter/material.dart';

class DynamicCard extends StatelessWidget {
  final double screenWidthMinimum;
  final Widget Function(BuildContext) builder;

  DynamicCard({@required this.screenWidthMinimum, @required this.builder});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width > screenWidthMinimum) {
      return Card(
        child: builder(context),
        elevation: 3.0,
        color: Colors.grey[100],
      );
    } else {
      return builder(context);
    }
  }
}
