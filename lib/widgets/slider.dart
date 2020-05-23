import 'package:carousel_slider/carousel_slider.dart';
import 'package:dark_microphone_app/theme/constant.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  
  const SliderWidget({
    Key key,
  }) : super(key: key);

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  List items = [1,2,3,4,5,6,7];

  int _current;

  @override
  void initState() {
    super.initState();
    _current = 0;
  }

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        CarouselSlider(
          onPageChanged: (idx) {
            setState(() {
              _current = idx;
            });
          },
          height: 400,
          autoPlayCurve: Curves.fastLinearToSlowEaseIn,
          aspectRatio: 16/7,
          viewportFraction: 1.0,
          items:items.map((item) {
           
            return Builder(
              builder: (BuildContext context) {
                return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Image.asset("assets/images/microphone.png",fit: BoxFit.fitHeight),
              ));
            
              },
            );
          }).toList(),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: 
              List.generate(items.length, (idx) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    width: idx == _current ? 12 : 10,
                    height: idx == _current ? 12 : 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: idx == _current ? primary : homeBackground
                    ),
                  ),
                );
              }).toList()
          ),
        )
      ],
    );
  }
}