import 'package:flutter/material.dart';

class DraggableCircularProgress extends StatefulWidget {
  final Size size;
  const DraggableCircularProgress({Key? key, required this.size}) : super(key: key);

  @override
  State<DraggableCircularProgress> createState() =>
      _DraggableCircularProgressState();
}

class _DraggableCircularProgressState extends State<DraggableCircularProgress>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  double _progressValue = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _updateProgress(DragUpdateDetails details) {
    // Get the current position of the drag
    Offset position = details.globalPosition;
    // Calculate the progress value based on the position
    double newProgressValue =
        (position.dx / widget.size.width) * 1.0;
    // Update the progress value
    setState(() {
      _progressValue = newProgressValue;
    });
    // Update the progress indicator animation
    _controller.animateTo(_progressValue);
  }

  void _endProgress(DragEndDetails details) {
    // When the user releases the drag, animate the progress indicator to the nearest quarter value
    double quarter = 0.25;
    double nearestQuarter =
        (_progressValue / quarter).round() * quarter;
    _controller.animateTo(nearestQuarter);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: _updateProgress,
      onHorizontalDragEnd: _endProgress,
      child: CircularProgressIndicator(
        strokeWidth: 20.0,
        value: _controller.value,
      ),
    );
  }
}
