import 'package:flutter/material.dart';

import 'circular_slider_widget.dart';

class CircularSliderWrapper extends StatefulWidget {
  final int value;

  const CircularSliderWrapper({Key? key, required this.value})
      : super(key: key);

  @override
  State<CircularSliderWrapper> createState() => _CircularSliderWrapperState();
}

class _CircularSliderWrapperState extends State<CircularSliderWrapper> {
  int localValue = 0;

  @override
  void initState() {
    super.initState();
    localValue = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      child: CircularSliderWidget(
        intervals: 99,
        init: 1,
        end: localValue,
        onSelectionChange: (valueInitValue, endInitValue) {
          setState(() {
            if (endInitValue < 95) {
              localValue = endInitValue;
            }
          });
        },
        baseColor: Colors.black,
        selectionColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
