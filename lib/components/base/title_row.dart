
import 'package:flutter/material.dart';

import 'choss_avatar.dart';

class TitleRow extends StatelessWidget {

  final String avatarPath;
  final String title;
  final String flavourText;
  final String detail;

  TitleRow(
      {@required this.avatarPath, @required this.title, @required this.flavourText, this.detail,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: <Widget>[
          ChossAvatar(path: avatarPath),
          Container(width: 16.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
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
              if(detail != null)
                Padding(
                  padding: EdgeInsets.only(bottom: 2.0),
                  child: Text(
                    detail,
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}