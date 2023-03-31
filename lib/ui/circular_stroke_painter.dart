import 'package:flutter/material.dart';
import 'dart:math';

class CircularStrokePainter extends CustomPainter {
  final double radius;

  CircularStrokePainter({required this.radius});

  @override
  void paint(Canvas canvas, Size size) {
    debugPrint(size.toString());
    var paint = Paint()..color = Colors.white;
    double width = size.width;
    double height = size.height;
    canvas.drawCircle(Offset(width / 2, height / 2), radius, paint);
    paint.color = Colors.black;
    canvas.drawCircle(Offset(width / 2, height / 2), radius - 2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
