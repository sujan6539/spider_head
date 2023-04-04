import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spider_head/domain/app_providers.dart';
import 'package:spider_head/styles/colors.dart';
import 'package:spider_head/ui/canister.dart';
import 'package:spider_head/ui/hero_display.dart';
import 'package:spider_head/ui/info_widget.dart';

import 'domain/model/pharma.dart';

typedef ActionClicked = Function(PharmaType pharmaType);

class Dashboard extends ConsumerWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var size = MediaQuery.of(context).size;
    var tracker = ref.watch(appStateProvider);
    int index = ref.read(appStateProvider).selectedIndex;
    var pharma = tracker.selectedPharma ?? pharmaZList[index];
    double dimen = 0;
    if ((size.width * 0.8) > size.height * 0.4) {
      dimen = size.height * 0.4;
    } else {
      dimen = size.width * 0.8;
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Flexible(
            flex: 2,
            child: HeroDisplay(
              dimen: dimen,
              pharma: pharma,
              onLeftClicked: () {
                index = index + 1;
                ref.read(appStateProvider.notifier).setIndex(index);
              },
              onRightClicked: () {
                index = index + 1;
                ref.read(appStateProvider.notifier).setIndex(index);
              },
            ),
          ),
          const Flexible(flex: 1, child: InfoWidget()),
          const Padding(padding: EdgeInsets.all(16.0)),
          Flexible(
            flex: 1,
            child: Container(
              height: 0.5 * dimen,
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                color: Colors.grey.shade800.withOpacity(0.8),
              ),
              child: prepareCanisterGroup(dimen, ref),
            ),
          )
        ],
      ),
    );
  }

  Widget prepareCanisterGroup(double dimen, WidgetRef ref) {
    List<Canister> canisterGrp = [];
    Map<String, double> map =
        ref.read(appStateProvider.notifier).state.pharmaState;
    Iterator<MapEntry<String, double>> ite = map.entries.iterator;
    while (ite.moveNext()) {
      debugPrint(ite.toString());
      canisterGrp.add(Canister(
          height: 0.5 * dimen,
          color: findColorScheme(ite.current.key),
          codeName: ite.current.key,
          oldValue: ite.current.value));
    }
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: canisterGrp);
  }

  Color findColorScheme(String key) {
    var color = getColorScheme(PharmaType.G_46_LAFFODI).primary;
    for (var element in pharmaZList) {
      if (element.codeName == key) {
        color = getColorScheme(element.pharmaType).primary;
        break;
      }
    }
    return color;
  }
}
