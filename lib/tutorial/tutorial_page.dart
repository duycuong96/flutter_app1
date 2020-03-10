import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TutorialPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _TutorialPageState createState() => new _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {

  @override
  Widget build(BuildContext context) {

    final titleTutorial = Center(
      child: Column(
        children: <Widget>[
          Text(
            'HƯỚNG DẪN KHAI BÁO Y TẾ BẰNG HÌNH THỨC ĐIỆN TỬ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            '( Dành cho khách hàng )',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      )
    );

    final textTutorialFirst = Text(
      'Theo yêu cầu của Việt Nam, tất cả các hành khách nhập cảnh vào Việt Nam phải'
          ' thực hiện khai báo y tế. Để thực hiện khai báo y tế hành khách thực hiện theo các bước sau:'
    );

    final imageTutorialFirst = Center(
      child: Image.asset(
        'images/huong-dan-khai-bao-y-te-1.png',
      ),
    );

    final textTutorialSecond = Text(
      'Bước 1: Truy cập vào Hệ thống quản lý tờ khai y tế theo địa chỉ website: '
          'https://suckhoetoandan.vn/khaiyte '
          'hoặc quét mã QRcode ở cửa khẩu để vào biểu mẫu khai báo y tế. '
    );

    final imageTutorialSecond = Center(
      child: Image.asset(
        'images/huong-dan-khai-bao-y-te-2.png',
      ),
    );

    final textTutorialThird = Text(
      'Bước 3: Đọc kỹ và điền chính xác các thông tin vào các ô trong  biểu mẫu '
          'khai báo y tế ( ô có dấu sao “*” biểu thị việc bắt buộc phải nhập.'
    );

    final textTutorialFourth = Text(
      'Bước 4: Nhập mã xác thực vào ô cuối cùng của biểu mẫu khai báo'
    );

    final imageTutorialThird = Center(
      child: Image.asset(
        'images/huong-dan-khai-bao-y-te-3.png',
      ),
    );

    final textTutorialFifth = Text(
      'Bước 5: Nhấn nút “Gửi tờ khai”, chờ cho đến khi màn hình sẽ xuất hiện thông báo'
          ' “Trân trọng cảm ơn quý khách đã hoàn thành việc khai báo y tế”'
          ' và hướng dẫn “quý khách cần đến nơi làm việc của nhân viên kiểm dịch y tế '
          'để lấy bản xác nhận trước khi qua quầy làm thủ tục xuất nhập cảnh”'
    );

    final imageTutorialFourth = Center(
      child: Image.asset(
        'images/huong-dan-khai-bao-y-te-4.png',
      ),
    );

    final textTutorialSixth = Text(
      'Hiển thị màn hình thông báo',
    );

    final imageTutorialFifth = Center(
      child: Image.asset(
        'images/huong-dan-khai-bao-y-te-5.png',
      ),
    );

    final textTutorialSeventh = Text(
      'Bước 6: Đến nơi làm việc của kiểm dịch y tế để nhận bản xác nhận khai báo y tế '
          '(trước khi làm thủ tục xuất nhập cảnh)'
    );



    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(top:20.0 ,left: 25.0, right: 25.0, bottom: 20.0),
          children: <Widget>[
            titleTutorial,
            SizedBox(
              height: 10.0,
            ),
            textTutorialFirst,
            imageTutorialFirst,
            textTutorialSecond,
            SizedBox(
              height: 10.0,
            ),
            imageTutorialSecond,
            textTutorialThird,
            SizedBox(
              height: 10.0,
            ),
            textTutorialFourth,
            SizedBox(
              height: 10.0,
            ),
            imageTutorialThird,
            textTutorialFifth,
            SizedBox(
              height: 10.0,
            ),
            imageTutorialFourth,
            SizedBox(
              height: 10.0,
            ),
            textTutorialSixth,
            SizedBox(
              height: 10.0,
            ),
            imageTutorialFifth,
            textTutorialSeventh,
            SizedBox(
              height: 10.0,
            ),

            Text(
              'Nếu cần biết thêm chi tiết về việc khai báo y tế , '
                  'quý khách hãy liên hệ với kiểm dịch viên y tế tại cửa khẩu nhập cảnh.',
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Hành động khai báo y tế của quý khách đã giúp bảo vệ sức khoẻ cho cộng đồng.'
                  ' Xin được cám ơn quý khách và chào đón quý khách đã đến Việt Nam.'
            ),

          ],
        ),
      ),
    );
  }
}