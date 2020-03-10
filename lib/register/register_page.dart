import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RegisterPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _RegisterPageState createState() => new _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  @override
  Widget build(BuildContext context) {

    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Image.asset('images/logo_0df4d96d6f.png'),
      ),
    );

    final switchLanguage = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(

            onPressed: () {
              //          Navigator.of(context).pushNamed(HomePage.tag);
            },
            color: Colors.white,
            child: Image.asset(
                'images/vi-big.png',
            ),

          ),
          RaisedButton(

            onPressed: () {
              //          Navigator.of(context).pushNamed(HomePage.tag);
            },
            color: Colors.white,
            child: Image.asset(
              'images/en-big.png',
            ),

          ),
        ],
      ),
    );
    final formRegister = Container(
      child: Column(
        children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Đăng ký / Đăng nhập',
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            TextFormField(
            autofocus: false,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              labelText: 'Nhập số điện thoại',
              labelStyle: TextStyle(fontSize: 16.0),
              hintText: 'Nhập số điện thoại',
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                onPressed: () {
      //          Navigator.of(context).pushNamed(HomePage.tag);
                },
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 36.0),
                color: Colors.blue,
                child: Text('Nhận mã OTP', style: TextStyle(color: Colors.white, fontSize: 20.0)),
              ),
            ),
        ],
      ),
    );

    final verificationCodes = Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Mã xác thực OTP',
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          TextFormField(
            autofocus: false,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              labelText: 'Nhập số điện thoại',
              labelStyle: TextStyle(fontSize: 16.0),
              hintText: 'Nhập số điện thoại',
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              onPressed: () {
                //          Navigator.of(context).pushNamed(HomePage.tag);
              },
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 36.0),
              color: Colors.blue,
              child: Text('Xác nhận', style: TextStyle(color: Colors.white, fontSize: 20.0)),
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 25.0, right: 25.0),
          children: <Widget>[
            logo,

            switchLanguage,

            formRegister,

          ],
        ),
      ),
    );
  }
}