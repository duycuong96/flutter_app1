import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'register_page.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    RegisterPage.tag: (context) => RegisterPage(),
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
      home: RegisterPage(),
      routes: routes,
    );
  }
}