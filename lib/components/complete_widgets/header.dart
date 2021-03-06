import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String contentName;
  final String path;

  Header({
    @required this.path,
    @required this.contentName,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.network(
          '/assets/cover_1080.jpg',
          fit: BoxFit.fitWidth,
          width: MediaQuery.of(context).size.width,
        ),
        chossMediaRow(context, MediaQuery.of(context).size.width < 700),
      ],
    );
  }

  Widget chossMediaRow(BuildContext context, bool isSmallScreen) {
    return Container(
      color: !isSmallScreen ? Colors.white30 : null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Image.network('/assets/icon.png', height: 100),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Choss Media',
                  style: TextStyle(
                      shadows: <Shadow>[
                        Shadow(
                          color: Colors.black,
                          blurRadius: 4.0,
                        ),
                      ],
                      color: Colors.white,
                      fontSize: isSmallScreen ? 20.0 : 48.0),
                ),
                Text(
                  contentName,
                  style: TextStyle(
                      shadows: <Shadow>[
                        Shadow(
                          color: Colors.black,
                          blurRadius: 4.0,
                        ),
                      ],
                      color: Colors.white,
                      fontSize: isSmallScreen ? 14.0 : 26.0),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
