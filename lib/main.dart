import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spider_head/domain/app_providers.dart';
import 'package:spider_head/styles/colors.dart';
import 'package:spider_head/ui/circular_slider.dart';
import 'package:spider_head/ui/circular_slider_widget.dart';
import 'package:spider_head/ui/circular_slider_wrapper.dart';

import 'dashboard.dart';
import 'domain/model/pharma.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          canvasColor: Colors.black,
          // colorScheme: getColorScheme(
          //     pharmaList[(ref.watch(appStateProvider.notifier).state)].pharmaType),
          textTheme: TextTheme(
              bodyMedium: TextStyle(color: Colors.white),
              bodySmall: TextStyle(color: Colors.white),
              labelSmall: TextStyle(color: Colors.white),
              labelMedium: TextStyle(color: Colors.white))),
      home: Scaffold(body: SafeArea(child: Dashboard())),
    );
  }
}
