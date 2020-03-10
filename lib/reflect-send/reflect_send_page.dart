import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp1/widget/dropdown_formfield.dart';

class ReflectSendPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _ReflectSendPageState createState() => new _ReflectSendPageState();
}

class _ReflectSendPageState extends State<ReflectSendPage> {

  String _myActivity;
  String _myActivityResult;
  final formKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _myActivity = '';
    _myActivityResult = '';
  }

  _saveForm() {
    var form = formKey.currentState;
    if (form.validate()) {
      form.save();
      setState(() {
        _myActivityResult = _myActivity;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final title = Row(
      children: <Widget>[

      ],
    );

    final textReflectSend = Text(
      'Khuyến cáo: Khai báo thông tin sai là vi phạm pháp luật Việt Nam và có thể xử lý hình sự',
      style: TextStyle(fontSize: 16.0, color: Colors.red),
    );

    final labeldetectionTime = Text(
      'Thời gian phát hiện (*)',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      ),
    );
    final detectionTime = Column(
      children: <Widget>[
        SizedBox(
          height: 8.0,
        ),
        TextFormField(
          autofocus: false,
          keyboardType: TextInputType.datetime,
          decoration: InputDecoration(
            hintText: 'Ngày tháng năm',
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
        ),

      ],
    );

    final province = Column(
      children: <Widget>[
        SizedBox(
          height: 8.0,
        ),
        TextFormField(
          autofocus: false,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            hintText: 'Chọn tỉnh thành',
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
        ),

      ],
    );


    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 25.0, right: 25.0),
          children: <Widget>[
            title,
            textReflectSend,
            SizedBox(
              height: 16.0,
            ),
            labeldetectionTime,
            detectionTime,
          ],
        ),
      ),
    );
  }
}