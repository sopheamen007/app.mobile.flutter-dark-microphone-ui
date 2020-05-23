import 'package:dark_microphone_app/pages/detail_page.dart';
import 'package:dark_microphone_app/theme/constant.dart';
import 'package:dark_microphone_app/widgets/microphone_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homeBackground,
      appBar: AppBar(
        title: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Microphones",
                style: appSubTitle,
              ),
            )),
        backgroundColor: homeBackground,
        elevation: 0,
        actions: <Widget>[
          FlatButton(
              onPressed: () {},
              child: SvgPicture.asset("assets/images/burger_icon.svg",))
        ],
      ),
      body: getBody(context),
    );
  }

  Widget getBody(context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Text(
                "Large Diapghragm Microphones".toUpperCase(),
                style: TextStyle(
                    color: textWhite.withOpacity(0.8),
                    fontSize: 17,
                    letterSpacing: 1),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
                  },
                  child: MicrophoneCard(imgScr: "assets/images/microphone.png",title: "Neumann TLM 103 \nStudio Bundle",)),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
                  },
                  child: MicrophoneCard(imgScr: "assets/images/microphone.png",title: "Neumann TLM 103 \nStudio Bundle",)),
                  GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
                  },
                  child: MicrophoneCard(imgScr: "assets/images/microphone.png",title: "Neumann TLM 103 \nStudio Bundle",)),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Text(
                "Vocal Microhones".toUpperCase(),
                style: TextStyle(
                    color: textWhite.withOpacity(0.8),
                    fontSize: 17,
                    letterSpacing: 1),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
               GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
                  },
                  child: MicrophoneCard(imgScr: "assets/images/microphone.png",title: "Neumann TLM 103 \nStudio Bundle",)),
                  GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
                  },
                  child: MicrophoneCard(imgScr: "assets/images/microphone.png",title: "Neumann TLM 103 \nStudio Bundle",)),
                  GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
                  },
                  child: MicrophoneCard(imgScr: "assets/images/microphone.png",title: "Neumann TLM 103 \nStudio Bundle",)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

