import 'package:flutter/material.dart';

class BorderButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final IconData iconData;

  BorderButton({
    @required this.onPressed,
    @required this.text,
    @required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        decoration:
            BoxDecoration(border: Border.all(color: Colors.white, width: 1)),
        child: FlatButton(
          child: Row(
            children: <Widget>[
              Icon(
                iconData,
                color: Colors.white,
              ),
              Container(
                width: 16.0,
              ),
              Text(
                text,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
