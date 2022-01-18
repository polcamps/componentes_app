import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://www.lavanguardia.com/r/GODO/LV/p5/WebSite/2018/11/12/Recortada/_20181112201155927-609-kDjH-U452887637319pOC-992x558@LaVanguardia-Web.jpg'),
              radius: 25,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right:10),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://www.lavanguardia.com/r/GODO/LV/p5/WebSite/2018/11/12/Recortada/_20181112201155927-609-kDjH-U452887637319pOC-992x558@LaVanguardia-Web.jpg'),
          placeholder: AssetImage('assets/original.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}