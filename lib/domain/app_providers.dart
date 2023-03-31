import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spider_head/dashboard.dart';
import 'package:spider_head/domain/model/pharma.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:core';

part 'app_providers.freezed.dart';

@freezed
class GlobalAppState with _$GlobalAppState {
  const factory GlobalAppState({
    required int defaultIndex,
    PharmaZ? selectedPharma,
    @Default(PharmaType.G_46_LAFFODI) PharmaType pharmaType,
    @Default(0) int selectedIndex,
  }) = _GlobalAppState;
}

final appStateProvider = StateNotifierProvider<AppStateNotifier, GlobalAppState>((ref) {
  return AppStateNotifier();
});

class AppStateNotifier extends StateNotifier<GlobalAppState> {
  AppStateNotifier() : super(const GlobalAppState(defaultIndex: 0));

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
}
