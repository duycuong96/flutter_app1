import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(EasyLocalization(child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;

    return EasyLocalizationProvider(
      data: data,
      child: MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          EasyLocalizationDelegate(
            locale: data.locale,
            path: "lang/vi.json",
          ),
        ],
        locale: data.locale,
        supportedLocales: [
          Locale('vi'),
          Locale("en"),
        ],
        title: 'Cuong',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }}

  class MyHomePage extends StatefulWidget{
    MyHomePage({Key key, this.title}) : super(key: key);
    final String title;

    @override
    _MyHomePageState createState() => _MyHomePageState();
  }

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var dataLocal = EasyLocalizationProvider.of(context).data;
    return EasyLocalizationProvider(
      data: dataLocal,
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                FlatButton(onPressed: (){
                  setState(() {
//                    dataLocal.changeLocale(Locale('vi'))
                  });
                }, child: Image.asset("images/vi-big.png")),
                FlatButton(onPressed: (){
                  setState(() {
//                    dataLocal.changeLocale(Locale('en'));
                  });
                }, child: Image.asset("images/en-big.png")),
              ],
            ),
            Container(
              child: Text(tr("hello"),style: TextStyle(fontSize: 40, color: Colors.red),),
            ),
          ],
        ),
      ),
    );
  }
}