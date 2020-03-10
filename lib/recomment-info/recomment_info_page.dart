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

    final boxInfo = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Card(
          child: Container(
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text('Phản ánh',
                      style: TextStyle(fontSize: 20.0),),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text('38',style: TextStyle(color: Colors.redAccent,fontSize: 20,fontWeight: FontWeight.bold)),
                  ],
                ),],
            ),
          ),
        ),
        Card(
          child: Container(
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text('Nghi ngờ',
                      style: TextStyle(fontSize: 20.0),),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text('0',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                  ],
                ),],
            ),
          ),
        ),
        Card(
          child: Container(
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text('Kiểm dịch',
                      style: TextStyle(fontSize: 20.0),),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text('2',style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold)),
                  ],
                ),],
            ),
          ),
        ),
      ],
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          children: <Widget>[
            titleRecommentInfo,
            boxInfo,
          ],
        ),
      ),
    );
  }
}