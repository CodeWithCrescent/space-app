import 'package:flutter/material.dart';
import 'package:space_app/core/notifier.dart';
import 'package:space_app/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (BuildContext context, dynamic isDark, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Space Hub',
          theme: ThemeData(
            brightness: isDark ? Brightness.dark : Brightness.light,
            primarySwatch: Colors.blue,
            useMaterial3: true,
          ),
          home: WidgetTree(),
        );
      },
    );
  }
}
