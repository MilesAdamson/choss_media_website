import 'package:choss_media/content_bloc/content_bloc.dart';
import 'package:flutter/material.dart';

import 'package:choss_media/components/base/dark_list_tile.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Center(
                child: Image.network(
              'icons/icon-750.png',
              height: 150.0,
              width: 150,
            )),
          ),
          Container(
            height: 1,
            color: Colors.black54,
          ),
          DarkListTile(
            iconData: Icons.photo,
            title: 'Photos',
            onTap: () {
              ContentBloc.select(ContentSelection.Photos);
              Navigator.pop(context);
            },
          ),
          Container(
            height: 1,
            color: Colors.black54,
          ),
          DarkListTile(
            iconData: Icons.apps,
            title: 'Apps',
            onTap: () {
              ContentBloc.select(ContentSelection.Apps);
              Navigator.pop(context);
            },
          ),
          Container(
            height: 1,
            color: Colors.black54,
          ),
          DarkListTile(
            iconData: Icons.video_call,
            title: 'Videos',
            onTap: () {
              ContentBloc.select(ContentSelection.Videos);
              Navigator.pop(context);
            },
          ),
          Container(
            height: 1,
            color: Colors.black54,
          ),
          DarkListTile(
            iconData: Icons.people,
            title: 'Athletes',
            onTap: () {
              ContentBloc.select(ContentSelection.Athletes);
              Navigator.pop(context);
            },
          ),
          Container(
            height: 1,
            color: Colors.black54,
          ),
        ],
      ),
    );
  }
}
