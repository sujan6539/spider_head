import 'dart:math';

import 'package:flutter/material.dart';

class CircularScale extends CustomPainter {
  final double radius;

  CircularScale({required this.radius});

  @override
  void paint(Canvas canvas, Size size) {
    // debugPrint(size.toString());
    var paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    var centerX = size.width / 2;
    var centerY = size.height / 2;

    var lengthSmall = radius - 20;
    var lengthMedium = radius - 6;

    double angle = 0;
    for (int i = 0; i < 100; i++) {
      var length = i % 5 == 0 ? lengthSmall - 10 : lengthSmall;
      canvas.drawLine(
          Offset(
              centerX + (length * cos(angle)), centerY + (length * sin(angle))),
          Offset(centerX + (lengthMedium * cos(angle)),
              centerY + (lengthMedium * sin(angle))),
          paint);
      angle += (2 * pi / 100);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
