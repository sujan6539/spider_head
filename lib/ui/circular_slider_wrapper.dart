import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'circular_slider_widget.dart';

final dosageProvider = StateProvider<int>((ref) => 5);

class CircularSliderWrapper extends ConsumerWidget {

  const CircularSliderWrapper({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var provider = ref.watch(dosageProvider);
    return Container(
      width: 400,
      height: 400,
      child: CircularSliderWidget(
        intervals: 99,
        init: 1,
        end: provider,
        onSelectionChange: (valueInitValue, endInitValue) {
          if (endInitValue < 95) {
            ref.read(dosageProvider.notifier).state = endInitValue;
          }
        },
        baseColor: Colors.black,
        selectionColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
