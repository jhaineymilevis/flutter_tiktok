import 'dart:ffi';

import 'package:flutter/material.dart';

class VideoBackGround extends StatelessWidget {
  final List<Color> colors;
  final List<double> stops;
  const VideoBackGround(
      {super.key,
      this.colors = const [Colors.transparent, Colors.black],
      this.stops = const [0.0, 0.5]})
      : assert(colors.length == stops.length,
            'Stops and colors must be the same length');

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: DecoratedBox(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: colors,
                  stops: stops,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter))),
    );
  }
}
