import 'package:flutter/material.dart';

class Util {
  static double cap(
    double input, {
    @required double min,
    @required double max,
  }) {
    if (input > max) return max;
    if (input < min) return min;
    return input;
  }
}
