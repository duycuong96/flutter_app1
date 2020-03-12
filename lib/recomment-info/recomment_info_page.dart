
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flutterapp1/widget/chewie_list_item.dart';


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
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Card(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Bình thường',
                        style: TextStyle(
                            fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('0',style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold)),
                    ],
                  ),],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Card(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Nghi ngờ',
                        style: TextStyle(fontSize: 16.0),),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('0',style: TextStyle(color: Colors.amber,fontSize: 20,fontWeight: FontWeight.bold)),
                    ],
                  ),],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Card(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Cách ly',
                        style: TextStyle(fontSize: 16.0),),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('0',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
                    ],
                  ),],
              ),
            ),
          ),
        ),

      ],
    );

    final videoInfo = ChewieListItem(
      videoPlayerController: VideoPlayerController.network(
        'videos/video003.mp4',
      ),
    );


    final guideYourseft1 = Text(
      '1. Thông tin chung về bệnh',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      ),
    );

    final guideYourseft2 = Text(
      '- Bệnh viêm đường hô hấp cấp do chủng mới của vi rút Corona là bệnh truyền nhiễm'
          ' cấp tính thuộc nhóm A với các biểu hiện sốt, ho, có thể khó thở,…;',
      style: TextStyle(
        fontSize: 15.0,
      ),
    );

    final guideYourseft3 = Text(
      '- Bệnh lây truyền qua đường hô hấp do tiếp xúc với các giọt nước bọt hay dịch tiết mũi họng của người bệnh hoặc với đồ vật bị nhiễm virus rồi đưa lên mũi, miệng của người lành;',
      style: TextStyle(
        fontSize: 15.0,
      ),
    );

    final guideYourseft4 = Text(
      '- Bệnh có thời gian ủ bệnh từ 02-14 ngày;',
      style: TextStyle(
        fontSize: 15.0,
      ),
    );

    final guideYourseft5 = Text(
      '- Đến nay chưa có thuốc điều trị đặc hiệu và vắc xin phòng bệnh.',
      style: TextStyle(
        fontSize: 15.0,
      ),
    );


    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 10.0, right:10.0),
          children: <Widget>[
            titleRecommentInfo,
            boxInfo,
            videoInfo,
            Card(
              child: Column(
                children: <Widget>[
                  guideYourseft1,
                  guideYourseft2,
                  guideYourseft3,
                  guideYourseft4,
                  guideYourseft5,
                ],
              ),
            ),




          ],
        ),
      ),
    );
  }
}