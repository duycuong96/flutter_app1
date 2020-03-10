import 'package:flutter/material.dart';
import 'tutorial_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    TutorialPage.tag: (context) => TutorialPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homepage VHV',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: TutorialPage(),
      routes: routes,
    );
  }
}