import 'package:flutter/material.dart';
import 'package:flutter_vnedu/view/Lichhoctap.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        selectedItemColor: Color(0xffBB2634),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.cast_for_education), label: 'Khóa học'),
          BottomNavigationBarItem(
              icon: Icon(Icons.lightbulb_outline), label: 'Cuộc thi'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'Tôi'),
        ],
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  width: size.width * 0.9,
                  margin: EdgeInsets.fromLTRB(
                      size.width * 0.05, 15, size.width * 0.05, 0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            width: size.width * 0.4,
                            height: 60,
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: [
                                    Text(
                                      'Xin chào,',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
//                                textAlign: TextAlign.start,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Text('Thùy Trang',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: 20)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: AlignmentDirectional.centerEnd,
                            width: size.width * 0.35,
                            height: 60,
                            child: Icon(Icons.notifications_none_outlined),
                          ),
                          Container(
                            alignment: AlignmentDirectional.center,
                            width: size.width * 0.15,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/trang.jpg'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Image(image: AssetImage('assets/logo2011.png')),
                    ],
                  )),
              SizedBox(height: 20),
              Container(
                height: 10,
                color: Colors.grey[100],
              ),
              Danhsachcuatoi(size),
              Container(
                height: 10,
                color: Colors.grey[100],
              ),

              // Đang học
              Container(
                height: 230,
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Text(
                        'Đang học',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      height: 170,
                      child: new ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: <Widget>[
                          Danghoc(
                              "H2 + O2 => HOHO ? Công thức huyền thoại này đúng hay sai?",
                              "Môn hóa"),
                          Danghoc(
                              "H2 + O2 => HOHO ? Công thức huyền thoại này đúng hay sai?",
                              "Môn hóa"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Khóa học của tôi
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 10, 10),
                height: 320,
                child: Column(
                  children: <Widget>[
                    Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.fromLTRB(20, 0, 0, 20),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Khóa học mới nhất',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Expanded(
                              child: Container(
                                  alignment: Alignment.centerRight,
                                  child: Text('Tất cả',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xffBB2634),
                                          fontWeight: FontWeight.bold))),
                            )
                          ],
                        )),
                    Container(
                      margin: EdgeInsets.fromLTRB(size.width * 0.05, 0, 0, 0),
                      height: 270,
                      child: new ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: <Widget>[
                          Khoahocmoinhat(
                              "H2 + O2 => HOHO ? Công thức huyền thoại này đúng hay sai?",
                              "Môn hóa"),
                          Khoahocmoinhat(
                              "H2 + O2 => HOHO ? Công thức huyền thoại này đúng hay sai?",
                              "Môn hóa"),
                          Khoahocmoinhat(
                              "H2 + O2 => HOHO ? Công thức huyền thoại này đúng hay sai?",
                              "Môn hóa"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Bảng tin
              Container(
                margin: EdgeInsets.fromLTRB(
                    size.width * 0.05, 10, size.width * 0.05, 20),
                child: Column(
                  children: <Widget>[
                    Row(children: <Widget>[
                      Text(
                        'Bảng tin',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ]),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Bangtin("24/11", "năm 2020",
                              "Sửa tập huấn theo chương trình mới bằng trực tuyến"),
                          Bangtin("24/11", "năm 2020",
                              "Sửa tập huấn theo chương trình mới bằng trực tuyến"),
                          Bangtin("24/11", "năm 2020",
                              "Sửa tập huấn theo chương trình mới bằng trực tuyến"),
                          Bangtin("24/11", "năm 2020",
                              "Sửa tập huấn theo chương trình mới bằng trực tuyến"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container Danhsachcuatoi(Size size) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 15),
      width: size.width * 0.9,
      height: 230,
      child: GridView.count(
        primary: false,
        crossAxisCount: 3,
        children: <Widget>[
          Column(
            children: <Widget>[
              InkWell(
                onTap: openLichhoc,
                child: Container(
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffFFE4E0)),
                  child: Icon(Icons.date_range,
                      size: 30, color: Color(0xffBB2634)),
                ),
              ),
              SizedBox(height: 10),
              Text('Lịch học tập',
                  style: TextStyle(fontSize: 15, color: Color(0xff000000))),
            ],
          ),
          Column(
            children: <Widget>[
              InkWell(
                child: Container(
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xfff3e5f5)),
                  child: Icon(Icons.cast_for_education,
                      size: 30, color: Color(0xffC32C6D)),
                ),
              ),
              SizedBox(height: 10),
              Text('Khóa học của tôi',
                  style: TextStyle(fontSize: 15, color: Color(0xff000000))),
            ],
          ),
          Column(
            children: <Widget>[
              InkWell(
                child: Container(
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xfff3e5f5)),
                  child: Icon(
                    Icons.lightbulb_outline,
                    size: 30,
                    color: Color(0xff833B78),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Cuộc thi của tôi',
                style: TextStyle(fontSize: 15, color: Color(0xff000000)),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              InkWell(
                child: Container(
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffd7ccc8)),
                  child: Icon(Icons.subtitles_outlined,
                      size: 30, color: Color(0xff57477D)),
                ),
              ),
              SizedBox(height: 10),
              Text('Tin tức',
                  style: TextStyle(fontSize: 15, color: Color(0xff000000))),
            ],
          ),
          Column(
            children: <Widget>[
              InkWell(
                child: Container(
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffcfd8dc)),
                  child: Icon(Icons.stars_outlined,
                      size: 30, color: Color(0xff2F4858)),
                ),
              ),
              SizedBox(height: 10),
              Text('Sự kiện',
                  style: TextStyle(fontSize: 15, color: Color(0xff000000))),
            ],
          ),
        ],
      ),
    );
  }

  // Đang học
  Container Danghoc(String cauhoi, String mon) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: AlignmentDirectional.center,
      width: size.width * 0.9,
      margin: EdgeInsets.fromLTRB(size.width * 0.05, 10, 0, 0),
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              style: BorderStyle.solid, color: Colors.grey[100], width: 10)),
      child: Container(
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Row(
          children: <Widget>[
            Container(
                height: 120,
                width: size.width * 0.37,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/image1.png'),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                )),
            Container(
              margin: EdgeInsets.fromLTRB(size.width * 0.02, 5, 0, 10),
              width: size.width * 0.38,
              child: Column(
                children: <Widget>[
                  Text(
                    cauhoi,
                    style: TextStyle(
                        fontSize: 15, color: Colors.black, height: 1.5),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                    alignment: AlignmentDirectional.bottomStart,
                    child: Row(
                      children: <Widget>[
                        Text(
                          mon,
                          style:
                              TextStyle(fontSize: 14, color: Color(0xffBB2634)),
                        ),
                        Expanded(child: Container()),
                        Stack(
                          children: <Widget>[
                            Container(
                              width: size.width * 0.15,
                              height: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey[300]),
                            ),
                            Container(
                              width: size.width * 0.1,
                              height: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xffBB2634)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container Khoahocmoinhat(String cauhoi, String mon) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: AlignmentDirectional.center,
      width: size.width * 0.75,
      height: 140,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              style: BorderStyle.solid, color: Colors.grey[100], width: 10)),
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('assets/image2.png')),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
            ),
            SizedBox(height: 5),
            Text(
              cauhoi,
              style: TextStyle(fontSize: 15, color: Colors.black, height: 1.5),
            ),
            Expanded(
              child: Container(
                alignment: AlignmentDirectional.bottomStart,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: size.width * 0.43,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                mon,
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xffBB2634)),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: <Widget>[
                              Container(
                                alignment: AlignmentDirectional.bottomStart,
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      size: 16,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 16,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 16,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 16,
                                      color: Colors.yellow,
                                    ),
                                    Icon(Icons.star,
                                        size: 16, color: Colors.grey[300]),
                                    SizedBox(width: 3),
                                    Text(
                                      '4.5',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff828282),
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: size.width * 0.20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            height: 27,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffBB2634)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.alarm_on,
                                    color: Colors.white, size: 15),
                                SizedBox(width: 5),
                                Text(
                                  '1:40 hr',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container Bangtin(String ngay, String nam, String noidung) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 100,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xffFFE4E0),
      ),
      child: Row(
        children: <Widget>[
          Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffE04A4F),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    ngay,
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Text(
                    nam,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              )),
          SizedBox(width: 10),
          Expanded(
              child: Container(
            child: Text(
              noidung,
              style: TextStyle(
                  fontSize: 16, color: Color(0xffBB2634), height: 1.5),
            ),
          ))
        ],
      ),
    );
  }

  void openLichhoc() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LichhoctapPage()),
    );
  }
}
