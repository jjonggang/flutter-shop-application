import 'package:flutter/material.dart';

import 'navigation_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Accessory Shop',
      theme: ThemeData(
        primaryColor: const Color(0xFFF3F6F8),
      ),
      home: NavigationContainer(),
    );
  }
}
