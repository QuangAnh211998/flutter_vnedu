import 'package:flutter/material.dart';
import 'view/Instruction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'vnEdu'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: size.width * 0.9,
        margin: EdgeInsets.fromLTRB(size.width*0.05, size.height*0.1, size.width*0.05, size.height*0.05),
        child:  Column(
          children: <Widget>[
            Container(
              width: size.width*0.5,
              height: size.height*0.35,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Frame.png'),
                ),
              ),
            ),
            SizedBox(height: size.height*0.03),
            Text(
              "Xin chào ! ",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height*0.02),
            Text(
                'Giúp bạn phát triển sự nghiệp và hoàn thiện kiến thức của bản thân với hàng ngàn khóa học Online.'
                    ' Học mọi lúc mọi nơi',
                style: TextStyle(height: 1.5,
                    fontSize: 16.0
                ),
                textAlign: TextAlign.center),
            SizedBox(height: size.height*0.08),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: openReview1Page,
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    width: size.width * 0.9,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xffBB2634),
                    ),
                    child: Text(
                      'Bắt đầu',
                      style: TextStyle(fontSize: 22, color: Colors.white),
//                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: size.height*0.05),
            Container(
              margin: EdgeInsets.fromLTRB(size.width*0.1, 0, size.width*0.1, 0),
              child: Text('Liên hệ giáo viên phụ trách để được cấp tài khoản đăng nhập ',
                style: TextStyle(color: Colors.black45,height: 1.5),
                textAlign: TextAlign.center,),
            )
          ],
        ),
      ),

    );
  }

  void openReview1Page() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Instruction()),
    );
  }
}
