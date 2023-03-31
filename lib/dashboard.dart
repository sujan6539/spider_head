import 'dart:async';

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
    var tracker = ref.watch(appStateProvider);
    int index = ref.read(appStateProvider).selectedIndex;
    var pharma = tracker.selectedPharma ?? pharmaZList[index];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          HeroDisplay(
            pharma:  pharma,
            onLeftClicked: () {
              index = index + 1;
              ref.read(appStateProvider.notifier).setIndex(index);
            },
            onRightClicked: () {
              index = index + 1;
              ref.read(appStateProvider.notifier).setIndex(index);
            },
          ),
          InfoWidget(),
          Padding(padding: EdgeInsets.all(16.0)),
          Container(
            height: 200,
            padding: const EdgeInsets.all(30.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              color: Colors.grey.shade800.withOpacity(0.8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Canister(
                  color: Colors.red,
                  percent: 0.5,
                  tag: 'n-10',
                ),
                Canister(color: Colors.pink, percent: 0.2, tag: 'b-6'),
                Canister(color: Colors.blue, percent: 0.3, tag: 'b- 15'),
                Canister(color: Colors.blue, percent: 0.3, tag: 'g- 46'),
                Canister(color: Colors.purple, percent: 1.0, tag: 'i-6'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
