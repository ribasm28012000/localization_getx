import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';
import 'values.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: ChangeLanguage(),
      locale: const Locale('en', 'US'),
      title: 'Localization',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
