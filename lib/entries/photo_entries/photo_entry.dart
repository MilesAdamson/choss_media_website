import 'package:choss_media/components/tabs/photos_tab.dart';
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
    return FlatButton(
      padding: EdgeInsets.all(0),
      child: Image.network(
        assetPath + '_400.jpg',
        height:
            MediaQuery.of(context).size.width * (1.0 / PhotosTab.GRID_LENGTH),
        width:
            MediaQuery.of(context).size.width * (1.0 / PhotosTab.GRID_LENGTH),
        fit: BoxFit.fitHeight,
      ),
      onPressed: () {
        showContent(context);
      },

    );
  }

  void showContent(context) {
    showDialog(
      context: context,
      builder: (context) => GestureDetector(
        onTap: () => Navigator.pop(context),
        child: SingleChildScrollView(
          child: Dialog(
            backgroundColor: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                titleText(),
                detailsAndTakenBy(context),
                imageRow(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget imageRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.network(
          assetPath + '.jpg',
          fit: BoxFit.fitWidth,
          width: MediaQuery.of(context).size.width * 0.9,
          alignment: Alignment.center,
        ),
      ],
    );
  }

  Widget detailsAndTakenBy(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Text(
                  flavourText,
                  style: TextStyle(color: Colors.black, fontSize: 16.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  'Taken By: $takenBy',
                  style: TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
              ),
            ],
          )),
    );
  }

  Widget titleText() {
    return Padding(
      padding: EdgeInsets.only(left: 16.0, top: 16.0),
      child: Text(
        title,
        style: TextStyle(color: Colors.black, fontSize: 32.0),
      ),
    );
  }
}
