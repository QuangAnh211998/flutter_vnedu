import 'package:flutter/material.dart';
import 'package:flutter_vnedu/view/dangnhap.dart';
import 'package:flutter_vnedu/view/CapnhatMK.dart';

class khoiphucmkPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<khoiphucmkPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: new IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => dangnhapPage()),
            );
          },
        ),
        elevation: 0,
      ),
      body: Container(
        width: size.width * 0.8,
        margin: EdgeInsets.fromLTRB(size.width*0.1, 20, size.width*0.1, 0),
        child: Column(
          children: <Widget> [
            Row(
            children: <Widget> [
              Text('Khôi phục mật khẩu', style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),),
          ],
        ),

            SizedBox(height: 10),
            Text('Vui lòng nhập email của bạn để tiến hành khôi phục tài khoản:',
              style: TextStyle(
                height: 1.5,
                fontSize: 16.0,
                color: Colors.black87
            ),),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                  hintText: "example@gmail.com",
                  prefixIcon: Icon(Icons.person_outline)
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                InkWell(
                  onTap: openpageHomthu,
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    width: size.width*0.8,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffBB2634),
                    ),
                    child: Text('Gửi email', style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white
                    ),),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
  void openpageHomthu(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => homthuPage()),
    );
  }
}


class homthuPage extends StatefulWidget {
  @override
  _homthuPageState createState() => _homthuPageState();
}

class _homthuPageState extends State<homthuPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: new IconThemeData(color: Colors.black),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              exitKhoiphucMk();
            },
          ),
          elevation: 0,
        ),
        body: Container(
          width: size.width * 0.9,
          margin: EdgeInsets.fromLTRB(size.width*0.05, 30, size.width*0.05, 0),
          child:  Column(
            children: <Widget>[
              Container(
                width: 120,
                height: 120,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xffFFE4E0)),
                child: Icon(Icons.email_outlined,
                    size: 60, color: Color(0xffBB2634)),
              ),
              SizedBox(height: 15),
              Container(
                alignment: AlignmentDirectional.center,
                width: size.width*0.65,
                height: 80,
                child: Text(
                  'Kiểm tra hòm thư của bạn',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                alignment: AlignmentDirectional.center,
                width: size.width*0.85,
                height: 60,
                child: Text(
                    'Chúng tôi đã gửi hưỡng dẫn thay đổi mật khẩu vào email của bạn',
                    style: TextStyle(fontSize: 16.0, color: Colors.black87),
                    textAlign: TextAlign.center),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    onTap: openCapnhatMk,
                    child: Container(
                      alignment: AlignmentDirectional.center,
                      width: size.width*0.85,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffBB2634),
                      ),
                      child: Text(
                        'Gửi lại',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    onTap: exitDangnhap,
                    child: Text(
                      'Thử lại sau',
                      style: TextStyle(fontSize: 18.0, color: Colors.black45),
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    width: size.width*0.9,
                    height: 50,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text('Không nhận được email? Kiểm tra hòm thư spam',
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black87
                          ), textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget> [
                            Text('của bạn hoặc ',style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black87
                            )),
                            InkWell(
                              onTap: exitKhoiphucMk,
                              child: Text('Thử lại với email khác',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffBB2634)
                                  )),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
            ],
          ),
        )

    );
  }
  void openCapnhatMk(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => capnhatmkPage()),
    );
  }
  void exitDangnhap(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => dangnhapPage()),
    );
  }
  void exitKhoiphucMk(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => khoiphucmkPage()),
    );
  }
}

