import 'dart:math';

import 'package:flutter/material.dart';

import '../utils.dart';

class CircularSlider extends CustomPainter {
  late double radius;
  double centerX = 0;
  double centerY = 0;
  double startAngle = pi / 4;
  double endAngle = pi;
  double sweepAngle = pi / 2;
  Color selectionColor = Colors.blue;

  late Offset initHandler;
  late Offset endHandler;
  late Offset center;

  CircularSlider({required this.startAngle,
    required this.endAngle,
    required this.sweepAngle,
    required this.selectionColor});

  @override
  void paint(Canvas canvas, Size size) {
    if (startAngle == 0.0 && endAngle == 0.0) return;

    Paint progress = _getPaint(color: selectionColor);

    center = Offset(size.width / 2, size.height / 2);
    radius = min(size.width / 2, size.height / 2);

    canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
        -pi / 2 + startAngle, sweepAngle, false, progress);

    Paint handler = _getPaint(color: selectionColor, style: PaintingStyle.fill);
    Paint handlerOutter = _getPaint(color: selectionColor, width: 2.0);

    // draw handlers
    initHandler = radiansToCoordinates(center, -pi / 2 + startAngle, radius);

    endHandler = radiansToCoordinates(center, -pi / 2 + endAngle, radius);
  }

  Paint _getPaint({required Color color, double? width, PaintingStyle? style}) =>
      Paint()
        ..color = color
        ..strokeCap = StrokeCap.round
        ..style = style ?? PaintingStyle.stroke
        ..strokeWidth = width ?? 20.0;

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
