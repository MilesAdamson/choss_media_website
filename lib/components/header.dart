import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final double heightRatio;

  Header({@required this.heightRatio});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        if (MediaQuery.of(context).size.width <= 1080)
          Image.network(
            '/assets/cover_1080.jpg',
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width,
          )
        else
          Image.network(
            '/assets/cover_large.jpg',
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width,
          ),
        chossMediaRow(context, MediaQuery.of(context).size.width < 700),
      ],
    );
  }

  Widget chossMediaRow(BuildContext context, bool isSmallScreen) {
    return Container(
      height: isSmallScreen
          ? MediaQuery.of(context).size.height * heightRatio * 0.05
          : MediaQuery.of(context).size.height * heightRatio * 0.15,
      color: Colors.white30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Image.network(
              '/assets/icon.png',
              height: isSmallScreen
                  ? MediaQuery.of(context).size.height * heightRatio * 0.05
                  : MediaQuery.of(context).size.height * heightRatio * 0.15,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              'Choss Media',
              style: TextStyle(
                  color: Colors.white, fontSize: isSmallScreen ? 16.0 : 48.0),
            ),
          )
        ],
      ),
    );
  }
}
