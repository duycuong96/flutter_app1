import 'package:flutter/material.dart';
import 'recomment_info_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    RecommentInfoPage.tag: (context) => RecommentInfoPage(),
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
      home: RecommentInfoPage(),
      routes: routes,
    );
  }
}