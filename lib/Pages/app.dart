import "package:flutter/material.dart";
import 'package:flutter_assignment/Pages/settingpage.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter demo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SettingPage(),
    );
  }
}
