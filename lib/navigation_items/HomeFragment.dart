import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeFragment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeFragmentState();
  }
}

class HomeFragmentState extends State<HomeFragment> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: 300.0,
        width: 200,
        color: Colors.transparent,
        child: new Container(
          decoration: new BoxDecoration(
              color: Color(0xffEFF5F5),
              borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(4.0),
                  topRight: const Radius.circular(4.0),
                  bottomLeft: const Radius.circular(4.0),
                  bottomRight: const Radius.circular(4.0))),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    child: Image(
                      height:150,
                      width:200,
                      image: NetworkImage("https://media.gettyimages.com/photos/woman-dress-picture-id184354439?s=612x612"),

                    ),
                  )
                ]
                ,
              ),
              Row(
                children: <Widget>[
                  Container(
                    height: 150,
                    width: 200,
                    margin: EdgeInsets.all(2),
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Column(

                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
