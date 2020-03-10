import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RecommentInfoPage extends StatefulWidget {
  static String tag = 'recomment-info-page';
  @override
  _RecommentInfoPageState createState() => new _RecommentInfoPageState();
}

class _RecommentInfoPageState extends State<RecommentInfoPage> {

  @override
  Widget build(BuildContext context) {

    final titleRecommentInfo = Center(
        child: Column(
          children: <Widget>[
            Text(
              'Số liệu thống kê trong vòng bán kính 500 m',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        )
    );


    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 25.0, right: 25.0),
          children: <Widget>[
            titleRecommentInfo,
          ],
        ),
      ),
    );
  }
}