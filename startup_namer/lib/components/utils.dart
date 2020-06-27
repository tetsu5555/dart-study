import 'package:flutter/material.dart';

class SpaceVertical extends StatelessWidget {
  final double size;
  SpaceVertical({this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: size);
  }
}

class SpaceHorizontal extends StatelessWidget {
  final double size;
  SpaceHorizontal({this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: size);
  }
}
