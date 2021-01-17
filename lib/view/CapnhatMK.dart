import 'package:flutter/material.dart';
import 'package:flutter_vnedu/view/Resetmatkhau.dart';
import 'package:flutter_vnedu/view/dangnhap.dart';


class capnhatmkPage extends StatefulWidget {
  @override
  _capnhatmkPageState createState() => _capnhatmkPageState();
}

class _capnhatmkPageState extends State<capnhatmkPage> {
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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => homthuPage()),
            );
          },
        ),
        elevation: 0,
      ),
      body: Container(
        width: size.width * 0.8,
        margin: EdgeInsets.fromLTRB(size.width*0.1, size.height*0.04, size.width*0.1, 0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    'Cập nhật mật khẩu',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: size.height*0.015),
              Text(
                'Mật khẩu mới của bạn cần khác so với mật khẩu cũ.',
                style: TextStyle(fontSize: 16.0, color: Colors.black87),
              ),
              SizedBox(height: size.height*0.06),
              Container(
//              margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: Column(
                  children: <Widget>[
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
                    SizedBox(height: size.height*0.015),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Nhập lại mật khẩu",
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
                    SizedBox(height: size.height*0.02),
                    Row(
                      children: <Widget>[
                        Text(
                          'Mật khẩu phải trùng khớp',
                          style: TextStyle(fontSize: 16.0, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height*0.05),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        InkWell(
                          onTap: openPageKetqua,
                          child: Container(
                            alignment: AlignmentDirectional.center,
                            width: size.width*0.8,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffBB2634),
                            ),
                            child: Text(
                              'Cập nhật',
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void openPageKetqua() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Ketqua()),
    );
  }
}

class Ketqua extends StatefulWidget {
  @override
  _KetquaState createState() => _KetquaState();
}

//trang thông báo cập nhật thành công
class _KetquaState extends State<Ketqua> {
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
              MaterialPageRoute(builder: (context) => capnhatmkPage()),
            );
          },
        ),
        elevation: 0,
      ),
      body: Container(
        width: size.width * 0.8,
        margin: EdgeInsets.fromLTRB(size.width*0.1, size.height*0.04, size.width*0.1, 0),
        child: Column(
          children: <Widget>[
            Container(
              width: 120,
              height: 120,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xffFFE4E0)),
              child: Icon(Icons.https_outlined,
                  size: 60, color: Color(0xffBB2634)),
            ),
            SizedBox(height: size.height*0.025),
            Container(
              child: Text(
                'Cập nhật mật khẩu thành công',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: size.height*0.08),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: exitPageDangnhap,
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    width: size.width*0.8,
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
          ],
        ),
      ),
    );
  }
  void exitPageDangnhap(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => dangnhapPage()),
    );
  }
}
