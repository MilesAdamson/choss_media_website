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
    bool small = MediaQuery.of(context).size.width < 700;
    return Padding(
      padding: EdgeInsets.all(small ? 0.0 : 8.0),
      child: Container(
        decoration: BoxDecoration(
            border: !small ? Border.all(color: Colors.white, width: 1) : null),
        child: FlatButton(
          child: Row(
            children: <Widget>[
              Icon(
                iconData,
                color: Colors.white,
              ),
              if (!small)
                Container(
                  width: 16.0,
                ),
              if (!small)
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
