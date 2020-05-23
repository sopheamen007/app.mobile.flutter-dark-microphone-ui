import 'package:dark_microphone_app/theme/constant.dart';
import 'package:flutter/material.dart';

class MicrophoneCard extends StatelessWidget {
  final String imgScr;
  final String title;
  const MicrophoneCard({
    Key key, this.imgScr, this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(
        right: 30,
        top: 10,
      ),
      width: size.width - 60,
      height: 420,
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 50),
            // width: double.isnfinity,
            height: 350,
            decoration: BoxDecoration(
                color: cardBackground, borderRadius: BorderRadius.circular(20)),
          ),
          Positioned(
              top: 0,
              left: 80,
              child: Container(
                child: Image.asset(imgScr),
              )),
          Positioned(
              top: 290,
              left: 80,
              child: Column(
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: textWhite,
                        height: 1.6),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  StarWidget(),
                ],
              ))
        ],
      ),
    );
  }
}

class StarWidget extends StatelessWidget {
  final double sizeStar;
  const StarWidget({
    Key key, this.sizeStar = 15,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List star = [
      {"active": true},
      {"active": true},
      {"active": true},
      {"active": false},
      {"active": false}
    ];
    return Row(
        children: List.generate(star.length, (index) {
      return Opacity(
        opacity: star[index]['active'] == true ? 1 : 0.2,
        child: Padding(
          padding: const EdgeInsets.only(right: 5, left: 5),
          child: Icon(
            Icons.star,
            size: sizeStar,
            color: primary,
          ),
        ),
      );
    }));
  }
}
