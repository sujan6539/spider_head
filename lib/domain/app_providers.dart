import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spider_head/dashboard.dart';
import 'package:spider_head/domain/model/pharma.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:core';

import '../styles/colors.dart';

part 'app_providers.freezed.dart';

@freezed
class GlobalAppState with _$GlobalAppState {
  const factory GlobalAppState({
    required int defaultIndex,
    PharmaZ? selectedPharma,
    @Default(PharmaType.G_46_LAFFODI) PharmaType pharmaType,
    @Default(0) int selectedIndex,
    @Default({}) Map<String, double> pharmaState,
  }) = _GlobalAppState;
}

final appStateProvider =
    StateNotifierProvider<AppStateNotifier, GlobalAppState>((ref) {
  return AppStateNotifier();
});

class AppStateNotifier extends StateNotifier<GlobalAppState> {
  AppStateNotifier()
      : super(GlobalAppState(
            defaultIndex: 0, pharmaState: generatePharmaState()));

  setIndex(int newIndex) {
    newIndex = newIndex.abs() % pharmaZList.length;
    var oldState = state;
    state = state.copyWith(
        selectedIndex: newIndex,
        selectedPharma: pharmaZList[newIndex],
        pharmaType: pharmaZList[newIndex].pharmaType);
    var newState = state;
    debugPrint(oldState.toString());
    debugPrint(newState.toString());
    debugPrint((oldState == newState) ? 'true' : 'false');
  }

  setNewPharmaState(String codeName, double dosage) {
    var newList = state.pharmaState;
    double limit = 0;
    if ((state.pharmaState[codeName] ?? 0) > dosage) {
      limit = state.pharmaState[codeName] ?? 0;
    } else {
      limit = dosage;
    }
    newList[codeName] = limit;
    state = state.copyWith(pharmaState: newList);
  }

  static Map<String, double> generatePharmaState() {
    Map<String, double> canisterGrp = {};
    int start = Random().nextInt(pharmaZList.length);
    for (int i = start; i < pharmaZList.length + start; i++) {
      var codeName = pharmaZList[i % pharmaZList.length].codeName;
      canisterGrp.putIfAbsent(codeName, () {
        return canisterGrp[codeName] = 1.0;
      });
    }

    return canisterGrp;
  }
}
