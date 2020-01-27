import 'package:choss_media/util/util.dart';
import 'package:flutter/material.dart';

class SizedText extends StatefulWidget {
  final String text;
  final double max;
  final double min;
  final Color color;
  final double fractionWidth;

  SizedText(this.text,
      {this.max = 32.0, this.min = 16.0, this.color, this.fractionWidth});

  @override
  State<StatefulWidget> createState() => SizedTextState();
}

class SizedTextState extends State<SizedText> {
  @override
  Widget build(BuildContext context) {
    double size = Util.cap(
        (MediaQuery.of(context).size.width / 800.0) * widget.max,
        min: widget.min,
        max: widget.max);
    if (widget.fractionWidth != null) {
      return Container(
        width: MediaQuery.of(context).size.width * widget.fractionWidth,
        child: Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Flexible(
              child: Text(
                widget.text,
                style: TextStyle(
                    fontSize: size, color: widget.color ?? Colors.black),
              ),
            ),
          ],
        ),
      );
    } else {
      return Text(
        widget.text,
        style: TextStyle(fontSize: size, color: widget.color ?? Colors.black),
      );
    }
  }
}
