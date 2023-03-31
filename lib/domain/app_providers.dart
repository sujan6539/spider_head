import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spider_head/dashboard.dart';
import 'package:spider_head/domain/model/pharma.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

@Freezed
class AppState {
  final int defaultIndex ;
  late int selectedItem;
  late Pharma selectedPharma;
  late PharmaType pharmaType;

  AppState({required this.defaultIndex}) {
    selectedItem = defaultIndex;
    selectedPharma = pharmaList[selectedItem];
    pharmaType = selectedPharma.pharmaType;
  }

  void setIndex(int index) {
    selectedItem = index;
    selectedPharma = pharmaList[index];
    pharmaType = selectedPharma.pharmaType;
  }
}

final appStateProvider = StateNotifierProvider((ref) {
  return AppStateNotifier();
});

class AppStateNotifier extends StateNotifier<AppState> {
  AppStateNotifier() : super(AppState(defaultIndex: 0));

  setIndex(int newIndex) {
    newIndex = newIndex % pharmaList.length;
    debugPrint("Sujan " + newIndex.toString());
    state = state;
  }
}
