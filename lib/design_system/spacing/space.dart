import 'package:flutter/material.dart';

class Space {
  static const double sl = 4.0;
  static const double l = 8.0;

  static const double sr = 16.0;
  static const double r = 20.0;
  static const double er = 28.0;

  static const double sm = 32.0;
  static const double m = 40.0;
  static const double mm = 60.0;
  static const double em = 80.0;
}

class SpaceWidget extends StatelessWidget {
  final double height;
  final double width;

  const SpaceWidget({
    super.key,
    this.height = 0.0,
    this.width = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
