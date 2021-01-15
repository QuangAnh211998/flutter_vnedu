import 'package:flutter/material.dart';
import 'package:flutter_vnedu/view/dangnhap.dart';
import 'SliderModel.dart';

class Instruction extends StatefulWidget {
  @override
  _InstructionState createState() => _InstructionState();
}

class _InstructionState extends State<Instruction> {
  int _currentPage = 0;
  PageController _controller = PageController();
  List<Widget> _pages = [
    SliderModel(
      image: "assets/dangnhap.png",
      title1: "Sử dụng tài khoản ",
      title2: "vnEdu Connect ",
      title3: "",
      title4: "để đăng nhập nếu như bạn đã có từ trước",
      title5: "",
    ),
    SliderModel(
      image: "assets/dnvnedu.png",
      title1: "Hoặc liên hệ với giáo viên phụ trách để được cấp ",
      title2: "",
      title3: "tài khoản  ",
      title4: "và ",
      title5: "mật khẩu.",
    ),
  ];

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: _onchanged,
            controller: _controller,
            itemCount: _pages.length,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Container(
            width: size.width*0.9,
            margin: EdgeInsets.fromLTRB(size.width*0.05, 0, size.width*0.05, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  child: Text(""),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        _controller.nextPage(
                            duration: Duration(milliseconds: 800),
                            curve: Curves.easeInOutQuint);
                      },
                      child: AnimatedContainer(
                          alignment: Alignment.center,
                          duration: Duration(milliseconds: 300),
                          height: 50,
                          width: size.width * 0.4,
                          decoration: BoxDecoration(
                              color: Color(0xFFBB2634),
                              borderRadius: BorderRadius.circular(10)),
                          child: (_currentPage == (_pages.length - 1))
                              ? GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                dangnhapPage()));
                                  },
                                  child: Text("Đăng nhập",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      )),
                                )
                              : Text(
                                  "Tiếp theo",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                )),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                            List<Widget>.generate(_pages.length, (int index) {
                          return AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              height: 10,
                              width: (index == _currentPage) ? 30 : 10,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 30),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: (index == _currentPage)
                                      ? Color(0xFFBB2634)
                                      : Color(0xFFBB2634).withOpacity(0.2)));
                        })),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//import 'package:flutter/material.dart';
//import 'package:flutter_vnedu/view/dangnhap.dart';
//import 'package:intro_slider/slide_object.dart';
//import 'package:intro_slider/intro_slider.dart';
//import 'package:intro_slider/dot_animation_enum.dart';
//
//
//class review1page extends StatefulWidget {
//  @override
//  _review1pageState createState() => _review1pageState();
//}
//
//class _review1pageState extends State<review1page> {
//
//  List<Slide> slides = new List();
//
////  @override
////  void initState(){
////    super.initState();
////
////    slides.add(
////      new Slide(
////        pathImage:"assets/dangnhap.png",
////        description: "Sử dụng tài khoản vnEdu Connect để đăng nhập nếu như bạn đã có từ trước",
////      ),
////    );
////    slides.add(
////      new Slide(
////        pathImage:"assets/dnvnedu.png",
////        description: "Sử dụng tài khoản vnEdu Connect để đăng nhập nếu như bạn đã có từ trước",
////      ),
////    );
////  }
//
//  @override
//  Widget build(BuildContext context) {
//    Size size = MediaQuery.of(context).size;
//    return
////      IntroSlider(
////      slides: this.slides,
////    );
//      Scaffold(
//      backgroundColor: Colors.white,
//      body: Container(
//        width: size.width * 0.9,
//        margin: EdgeInsets.fromLTRB(size.width*0.05, 0, size.width*0.05, 0),
//        child:  Column(
//          children: <Widget>[
//            Container(
//              height: 480,
//              margin: EdgeInsets.only(top: 40),
//              decoration: BoxDecoration(
//                  image: DecorationImage(
//                    image: AssetImage('assets/dangnhap.png'),
//                  )),
//            ),
//            Row(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                Text('Sử dụng tài khoản ',style: TextStyle(fontSize: 16.0)),
//                Text('vnEdu Connect ',
//                  style: TextStyle(
//                    color: Colors.blue,
//                    fontWeight: FontWeight.w800,
//                  ),
//                ),
//                Text('để đăng',style: TextStyle(fontSize: 16.0)),
//              ],
//            ),
//            SizedBox(height: 5),
//            Text('nhập nếu như bạn đã có từ trước',style: TextStyle(fontSize: 16.0)),
//            SizedBox(height: 40),
//            Row(
//              mainAxisAlignment: MainAxisAlignment.start,
//              children: <Widget> [
//                InkWell(
//                  onTap: openReview2Page,
//                  child: Container(
//                    alignment: AlignmentDirectional.center,
//                    height: 50,
//                    width: size.width*0.4,
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(10)),
//                      color: Color(0xffBB2634),
//                    ),
//                    child: Text('Tiếp theo', style: TextStyle(
//                      fontSize: 20,
//                      color: Colors.white,
//                    ),),
//                  ),
//                ),
//              ],
//            ),
//          ],
//        ),
//      ),
//    );
//  }

//}
//
//// trang review2
//class review2page extends StatefulWidget {
//  @override
//  _review2pageState createState() => _review2pageState();
//}
//
//class _review2pageState extends State<review2page> {
//  @override
//  Widget build(BuildContext context) {
//    Size size = MediaQuery.of(context).size;
//    return Scaffold(
//      backgroundColor: Colors.white,
//      body: Container(
//        width: size.width * 0.9,
//        margin: EdgeInsets.fromLTRB(size.width*0.05, 0, size.width*0.05, 0),
//        child: Column(
//          children: <Widget>[
//            Container(
//              height: 480,
//              margin: EdgeInsets.only(top: 40),
//              decoration: BoxDecoration(
//                  image: DecorationImage(
//                    image: AssetImage('assets/dnvnedu.png'),
//                  )),
//            ),
//            Text('Hoặc liên hệ với giáo viên phụ trách để được'),
//            SizedBox(height: 5),
//            Row(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                Text('cấp '),
//                Text('tài khoản ',
//                  style: TextStyle(
//                    color: Colors.red,
//                    fontWeight: FontWeight.w500,
//                  ),
//                ),
//                Text('và '),
//                Text('mật khẩu',
//                  style: TextStyle(
//                    color: Colors.red,
//                    fontWeight: FontWeight.w500,
//                  ),
//                ),
//              ],
//            ),
//            SizedBox(height: 40),
//            Row(
//              mainAxisAlignment: MainAxisAlignment.start,
//              children: <Widget> [
//                InkWell(
//                  onTap: DangnhapPage,
//                  child: Container(
//                    alignment: AlignmentDirectional.center,
//                    height: 50,
//                    width: size.width*0.4,
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(10)),
//                      color: Color(0xffBB2634),
//                    ),
//                    child: Text('Đăng nhập', style: TextStyle(
//                        fontSize: 20,
//                        color: Colors.white
//                    ),),
//                  ),
//                ),
//              ],
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
