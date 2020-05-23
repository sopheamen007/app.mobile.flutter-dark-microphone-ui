import 'package:dark_microphone_app/theme/constant.dart';
import 'package:dark_microphone_app/widgets/microphone_card.dart';
import 'package:dark_microphone_app/widgets/slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: detailBackground,
      appBar: AppBar(
        elevation: 0,
        leading: FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset(
              "assets/images/back_icon.svg",
              fit: BoxFit.scaleDown,
            )),
        backgroundColor: detailBackground,
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(
      // padding: EdgeInsets.all(30),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: SliderWidget(),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Container(
            decoration: BoxDecoration(
                color: homeBackground,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.only(left: 45, top: 50,right: 45,bottom: 45),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "DPA 4018V-B-B01",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                        color: textWhite),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Vocal Microphone",
                    style: TextStyle(
                        color: textWhite.withOpacity(0.8),
                        fontSize: 20,
                        letterSpacing: 1),
                  ),
                  SizedBox(height: 40,),
                  Row(
                    children: <Widget>[
                      StarWidget(sizeStar: 20,),
                      SizedBox(width: 10,),
                      Text("27 ratings",style: TextStyle(color: textWhite,fontSize: 17),)
                    ],
                  ),
                  SizedBox(height: 30,),
                  Text("Natural sound, High level stability, Adaptable capsule to use with wireless, optional suitable thread adapter for Sennheiser.",style: TextStyle(fontSize: 
                  18,height: 1.6,color: textWhite),)
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
