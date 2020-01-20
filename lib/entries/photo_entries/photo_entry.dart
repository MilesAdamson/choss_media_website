import 'package:flutter/material.dart';

class PhotoEntry extends StatelessWidget {
  final String title;
  final String flavourText;
  final String takenBy;
  final String assetPath;

  PhotoEntry(
      {@required this.title,
      @required this.assetPath,
      @required this.flavourText,
      @required this.takenBy});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(color: Colors.black, fontSize: 32.0),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    flavourText,
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 2.0),
                  child: Text(
                    'Taken By: $takenBy',
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                ),
              ],
            ),
          ),
          Image.network(
            assetPath + '.jpg',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fitHeight,
          ),
        ],
      ),
    );
  }
}
