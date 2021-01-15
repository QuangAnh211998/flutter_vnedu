import 'package:flutter/material.dart';

class SliderModel extends StatelessWidget {
  final String image;
  final String title1;
  final String title2;
  final String title3;
  final String title4;
  final String title5;

  SliderModel({this.image, this.title1, this.title2, this.title3, this.title4, this.title5});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            image,
            height: size.height*0.8,
          ),
          Container(
            height: size.height*0.2,
            width: size.width*0.8,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: title1 ,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  height: 1.5
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: title2 ,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.w800
                    ),
                  ),
                  TextSpan(
                    text: title3 ,
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xffBB2634),
                        fontWeight: FontWeight.w800
                    ),
                  ),
                  TextSpan(
                      text: title4 ,
                      style: TextStyle(fontSize: 16,
                        color: Colors.black)),
                  TextSpan(
                    text: title5 ,
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xffBB2634),
                        fontWeight: FontWeight.w800
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
