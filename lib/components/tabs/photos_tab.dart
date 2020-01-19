import 'package:flutter/material.dart';
import 'package:choss_media/entries/photo_entries/photo_entries.dart';

class PhotosTab extends StatefulWidget {
  static const int GRID_LENGTH = 3;

  @override
  State<StatefulWidget> createState() => PhotosTabState();
}

class PhotosTabState extends State<PhotosTab> {
  int page = 0;

  List<Widget> containers = List<Widget>();

  int get maxPage => (photoEntries.length.toDouble() /
          (PhotosTab.GRID_LENGTH * PhotosTab.GRID_LENGTH).toDouble())
      .floor();

  @override
  Widget build(BuildContext context) {
    for (int i = 0;
        i < PhotosTab.GRID_LENGTH * PhotosTab.GRID_LENGTH + 1;
        i++) {
      containers.add(Container());
    }
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(bottom: 50.0),
        child: Column(
          children: <Widget>[
            photoRow(rowNumber: 0),
            photoRow(rowNumber: 1),
            photoRow(rowNumber: 2),
            Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: pageButtonRow(),
            )
          ],
        ),
      ),
    );
  }

  Row pageButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        pageButton(text: "< Previous", pageUp: false),
        Container(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
            child: Text(
              "Page ${page + 1} of ${maxPage + 1}",
              style: TextStyle(fontSize: 16.0, color: Colors.black),
            ),
          ),
        ),
        pageButton(text: "Next >", pageUp: true),
      ],
    );
  }

  int startIndex({@required int row, @required int page}) =>
      page * PhotosTab.GRID_LENGTH * PhotosTab.GRID_LENGTH +
      PhotosTab.GRID_LENGTH * row;

  int endIndex({@required int row, @required int page}) =>
      startIndex(row: row, page: page) + PhotosTab.GRID_LENGTH;

  Widget photoRow({@required int rowNumber}) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [...photoEntries, ...containers]
            .getRange(startIndex(row: rowNumber, page: page),
                endIndex(row: rowNumber, page: page))
            .toList());
  }

  Widget pageButton({@required String text, @required bool pageUp}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (pageUp) {
            if (page + 1 <= maxPage) {
              setState(() {
                page++;
              });
            }
          } else {
            if (page - 1 >= 0) {
              setState(() {
                page--;
              });
            }
          }
        });
      },
      child: Text(
        text,
        style: TextStyle(fontSize: 16.0, color: Colors.blue),
      ),
    );
  }
}
