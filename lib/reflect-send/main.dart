import 'package:flutter/material.dart';
import 'reflect_send_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    ReflectSendPage.tag: (context) => ReflectSendPage(),
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
      home: ReflectSendPage(),
      routes: routes,
    );
  }
}