class Util {
  static double cap(double input, {double min, double max}) {
    if (input > max) return max;

    if (input < min) return min;

    return input;
  }
}
