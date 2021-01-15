import 'package:flutter/material.dart';
import 'package:flutter_vnedu/view/HomePage.dart';
import 'package:flutter_vnedu/view/Resetmatkhau.dart';
import 'package:flutter_vnedu/view/Instruction.dart';

class dangnhapPage extends StatefulWidget {
  @override
  _dangnhapPageState createState() => _dangnhapPageState();
}

class _dangnhapPageState extends State<dangnhapPage> {
  bool _secureText = true;

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
              Navigator.of(context).pop();
            },
          ),
          title: new Text('Đăng Nhập', style: TextStyle(color: Colors.black)),
          elevation: 0,
        ),
        body: Container(
          width: size.width * 0.8,
          margin:
              EdgeInsets.fromLTRB(size.width * 0.1, size.height*0.03, size.width * 0.1, 0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: size.height*0.25,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/logo1.png'))),
                ),
                SizedBox(height: size.height*0.05),
                InkWell(
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    width: size.width * 0.8,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          style: BorderStyle.solid,
                          color: Color(0xff0767B1),
                          width: 2),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Đăng nhập',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff0767B1)),
                        ),
                        Container(
                          height: 30,
                          width: 60,
                          margin: EdgeInsets.fromLTRB(3, 0, 0, 2),
                          child:
                              Image(image: AssetImage('assets/logovnEdu.png')),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: size.height*0.02),
                Text('hoặc sử dụng tài khoản được cấp'),
                SizedBox(height: size.height*0.04),
                TextField(
                  decoration: InputDecoration(
                      hintText: "example@gmail.com",
                      prefixIcon: Icon(Icons.person_outline)),
                ),
                SizedBox(height: size.height*0.02),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Mật khẩu",
                    prefixIcon: Icon(Icons.https_outlined),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.visibility_outlined),
                      onPressed: () {
                        setState(() {
                          _secureText = !_secureText;
                        });
                      },
                    ),
                  ),
                  obscureText: _secureText,
                ),
                SizedBox(height: size.height*0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: showDialogTruong,
                      child: Container(
                        alignment: AlignmentDirectional.center,
                        width: size.width * 0.8,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffBB2634),
                        ),
                        child: Text(
                          'Đăng nhập',
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: size.height*0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    InkWell(
                      onTap: openPagekhoiphucmk,
                      child: Text(
                        'Quên mật khẩu tài khoản được cấp?',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xffBB2634)),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }

  void showDialogTruong() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          Size size = MediaQuery.of(context).size;
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: Row(
              children: <Widget>[
                Text('Chọn trường học',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                Expanded(child: Container()),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pop();
                    });
                  },
                ),
              ],
            ),
            content: Container(
              width: size.width * 0.7,
              height: 300,
              child: ListView(
                children: <Widget>[
                  DsTruong("THPT Đặng Thúc Hứa", "voquanganh12@gmail.com"),
                  DsTruong("THPT Thanh Chương I", "voquanganh12@gmail.com"),
                  DsTruong("THPT Nguyễn Sỹ Sách", "voquanganh12@gmail.com"),
                ],
              ),
            ),
          );
        });
  }

  Container DsTruong(String name, String email) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: openHomePage,
        child: Container(
//                            alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(size.width * 0.05, 9, 0, 9),
            width: size.width * 0.63,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[200],
            ),
            child: Column(
//                              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Text(
                      name,
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      email,
                      style: TextStyle(color: Color(0xffBB2634)),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }

  void openPagekhoiphucmk() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => khoiphucmkPage()),
    );
  }

  void openHomePage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }
}
