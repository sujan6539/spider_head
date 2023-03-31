import 'package:flutter/material.dart';
import 'package:spider_head/dashboard.dart';
import 'package:spider_head/ui/circular_scale.dart';
import 'package:spider_head/ui/circular_stroke_painter.dart';
import 'package:spider_head/ui/hero_display_body.dart';

import '../domain/model/pharma.dart';

class HeroDisplay extends StatelessWidget {
  final VoidCallback onLeftClicked;
  final VoidCallback onRightClicked;
  final PharmaZ pharma;
  final double dimen;

  const HeroDisplay(
      {Key? key,
      required this.dimen,
      required this.pharma,
      required this.onLeftClicked,
      required this.onRightClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    // var newSize = Size(size.width - 60, size.width - 60);
    var newSize = Size(dimen, dimen);
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              CustomPaint(
                size: newSize,
                painter: CircularStrokePainter(radius: newSize.width / 2),
                child: HeroDisplayBody(
                  pharma: pharma,
                  newSize,
                  onLeftClicked: onLeftClicked,
                  onRightClicked: onRightClicked,
                ),
              ),
              IgnorePointer(
                child: CustomPaint(
                  size: newSize,
                  painter: CircularScale(radius: newSize.width / 2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
