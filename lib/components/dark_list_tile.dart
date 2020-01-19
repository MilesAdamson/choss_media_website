import 'package:flutter/material.dart';

class DarkListTile extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Function onTap;

  DarkListTile({
    @required this.title,
    @required this.iconData,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      onTap: onTap,
      leading: Icon(
        iconData,
        color: Colors.white,
      ),
    );
  }
}
