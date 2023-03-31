import 'package:flutter/material.dart';
import 'package:spider_head/ui/circular_slider.dart';

import '../utils.dart';
import 'base_painter.dart';

class CircularSliderWidget extends StatefulWidget {
  final int init;
  final int end;
  final int intervals;
  final Function onSelectionChange;
  final Color baseColor;
  final Color selectionColor;
  final Widget? child;

  const CircularSliderWidget(
      {Key? key,
      required this.intervals,
      required this.init,
      required this.end,
      this.child,
      required this.onSelectionChange,
      required this.baseColor,
      required this.selectionColor})
      : super(key: key);

  @override
  State<CircularSliderWidget> createState() => _CircularSliderWidgetState();
}

class _CircularSliderWidgetState extends State<CircularSliderWidget> {
  bool _isInitHandlerSelected = false;
  bool _isEndHandlerSelected = false;

  late CircularSlider _painter;

  /// start angle in radians where we need to locate the init handler
  late double _startAngle;

  /// end angle in radians where we need to locate the end handler
  late double _endAngle;

  /// the absolute angle in radians representing the selection
  late double _sweepAngle;

  @override
  void initState() {
    super.initState();
    _calculatePaintData();
  }

  void _calculatePaintData() {
    double initPercent = valueToPercentage(widget.init, widget.intervals);
    double endPercent = valueToPercentage(widget.end, widget.intervals);
    double sweep = getSweepAngle(initPercent, endPercent);

    _startAngle = percentageToRadians(initPercent);
    _endAngle = percentageToRadians(endPercent);
    _sweepAngle = percentageToRadians(sweep.abs());

    _painter = CircularSlider(
      startAngle: _startAngle,
      endAngle: _endAngle,
      sweepAngle: _sweepAngle,
      selectionColor: widget.selectionColor,
    );
  }

  _onPanUpdate(DragUpdateDetails details) {
    if (!_isInitHandlerSelected && !_isEndHandlerSelected) {
      return;
    }
    if (_painter.center == null) {
      return;
    }
    var position = details.localPosition;

    var angle = coordinatesToRadians(_painter.center, position);
    var percentage = radiansToPercentage(angle);
    var newValue = percentageToValue(percentage, widget.intervals);

    if (_isInitHandlerSelected) {
      widget.onSelectionChange(newValue, widget.end);
    } else {
      widget.onSelectionChange(widget.init, newValue);
    }
  }

  _onPanEnd(_) {
    _isInitHandlerSelected = false;
    _isEndHandlerSelected = false;
  }

  _onPanDown(DragDownDetails details) {
    if (_painter == null) {
      return;
    }
    RenderObject? renderBox = context.findRenderObject();
    var position = details.localPosition;
    if (position != null) {
      _isInitHandlerSelected =
          isPointInsideCircle(position, _painter.initHandler, 12.0);
      if (!_isInitHandlerSelected) {
        _isEndHandlerSelected =
            isPointInsideCircle(position, _painter.endHandler, 12.0);
      }
    }
  }

  // we need to update this widget both with gesture detector but
  // also when the parent widget rebuilds itself
  @override
  void didUpdateWidget(CircularSliderWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    _calculatePaintData();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onPanDown: _onPanDown,
    onPanUpdate: _onPanUpdate,
    onPanEnd: _onPanEnd,
    child: CustomPaint(
      painter: BasePainter(
          baseColor: widget.baseColor,
          selectionColor: widget.selectionColor,
        sliderStrokeWidth: 2.0
      ),
      foregroundPainter: _painter,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: widget.child,
      ),
    ),
    );
  }
}
