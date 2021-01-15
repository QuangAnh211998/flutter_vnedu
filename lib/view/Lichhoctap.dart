import 'package:flutter/material.dart';
import 'package:flutter_vnedu/view/HomePage.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class LichhoctapPage extends StatefulWidget {
  @override
  _LichhoctapPageState createState() => _LichhoctapPageState();
}

class _LichhoctapPageState extends State<LichhoctapPage> {
  CalendarController _calendarController;
  String date = DateFormat.yMMMd().format(DateTime.now());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: new IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
        title: new Text('Lịch học tập', style: TextStyle(color: Colors.black)),
        elevation: 0,
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      '$date',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(width: 20),
                  IconButton(
                      icon: Icon(Icons.event, color: Color(0xffBB2634)),
                      onPressed: () {
                        DatePicker.showDateTimePicker(context,
                            showTitleActions: true, onChanged: (date) {
                          print('change $date in time zone ' +
                              date.timeZoneOffset.inHours.toString());
                        }, onConfirm: (date) {
                          print('confirm $date');
                        }, currentTime: DateTime(2020, 12, 31, 23, 12, 34));
                      })
                ],
              ),

              // table Calendar
              TableCalendar(
                calendarController: _calendarController,
                initialCalendarFormat: CalendarFormat.week,
                startingDayOfWeek: StartingDayOfWeek.monday,
//              formatAnimation: FormatAnimation.slide,
                headerVisible: false,
                builders: CalendarBuilders(
                  dayBuilder: (context, date, events) => Container(
                      margin: const EdgeInsets.all(5.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFEBE9),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        date.day.toString(),
                        style:
                            TextStyle(color: Color(0xFFBB2643), fontSize: 18),
                      )),
                  selectedDayBuilder: (context, date, events) => Container(
                      margin: const EdgeInsets.all(5.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        date.day.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                  todayDayBuilder: (context, date, events) => Container(
                      margin: const EdgeInsets.all(5.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0xFFBB2643),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        date.day.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Column(
                      children: [
                        dayTask(
                            "10:00 AM",
                            "10:30 AM",
                            "Môn hóa",
                            "H2 + O2 => HOHO ? Công thức huyền thoại này đúng hay sai?",
                            "85%",
                            "Số học liệu: 12",
                            "Hoàn thành: 8",
                            "Khảo sát"),
                        dayTask(
                            "11:00 AM",
                            "11:30 AM",
                            "Môn hóa",
                            "H2 + O2 => HOHO ? Công thức huyền thoại này đúng hay sai?",
                            "85%",
                            "Số học liệu: 12",
                            "Hoàn thành: 8",
                            "Khảo sát"),
                        dayTask(
                            "12:00 AM",
                            "12:30 AM",
                            "Môn vật lý",
                            "Kiểm tra môn vật lý",
                            "",
                            "Thời lượng: 1h",
                            "Bài thi giới hạn tg",
                            "Khảo sát"),
                        dayTask(
                            "13:00 AM",
                            "13:30 AM",
                            "Môn hóa",
                            "H2 + O2 => HOHO ? Công thức huyền thoại này đúng hay sai?",
                            "85%",
                            "Số học liệu: 12",
                            "Hoàn thành: 8",
                            "Khảo sát"),
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

  Container dayTask(String time1, String time2, String name, String noidung,
      String pt, String sohl, String tiendo, String khaosat) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  width: size.width * 0.2,
                  child: Text(
                    time1,
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Expanded(
                    child: Divider(
                  height: 2,
                  color: Colors.grey[500],
                ))
              ],
            ),
          ),
          SizedBox(height: 5),
          Container(
              height: 180,
              child: Row(
                children: <Widget>[
                  Container(
                    width: size.width * 0.2,
                    child: Text(
                      time2,
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.76,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: size.width * 0.76,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 5),
                                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xffFFE4E0)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 130,
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              width: size.width * 0.55,
                                              child: Column(
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        width: 40,
                                                        height: 40,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            color: Color(
                                                                0xffFFADA7)),
                                                        child: Icon(
                                                            Icons
                                                                .cast_for_education,
                                                            size: 25,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      SizedBox(width: 10),
                                                      Text(
                                                        name,
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      noidung,
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 16,
                                                          height: 1.5),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: AlignmentDirectional
                                                    .centerEnd,
                                                child: Text(
                                                  pt,
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color(0xffBB2634)),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                          child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            sohl,
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Expanded(
                                            child: Container(),
                                          ),
                                          Text(
                                            tiendo,
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          )
                                        ],
                                      ))
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          width: size.width * 0.76,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 5),
                                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xffE0CEDD)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 130,
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              width: size.width * 0.55,
                                              child: Column(
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        width: 40,
                                                        height: 40,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            color: Color(
                                                                0xff833B78)),
                                                        child: Icon(
                                                            Icons
                                                                .cast_for_education,
                                                            size: 25,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      SizedBox(width: 10),
                                                      Text(
                                                        khaosat,
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      'Khảo sát ý kiến học sinh',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 16,
                                                          height: 1.5),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                          child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "Thời lượng 1h",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Expanded(
                                            child: Container(),
                                          ),
                                          Text(
                                            "Bài thi mở",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          )
                                        ],
                                      ))
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
