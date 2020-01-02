import 'package:ebuy_flutter/authentication/login/log_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomeActivity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
    ));
    return WelcomeState();
  }
}

class WelcomeState extends State<WelcomeActivity> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Container(
          decoration: BoxDecoration(
            // Box decoration takes a gradient
            gradient: LinearGradient(
              // Where the linear gradient begins and ends
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,

              // Add one stop for each color. Stops should increase from 0 to 1
              stops: [0.1, 1],
              colors: [
                // Colors are easy thanks to Flutter's Colors class.
                /*Colors.indigo[400],
                Colors.indigo[800],*/
                Color(0xff00BFA5),
                Color(0xff0DD9A3)
              ],
            ),
          ),
          child: ListView(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    height: 200,
                    width: 100,
                    child: Image(
                      image: AssetImage("images/app_logo.png"),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => LogIn()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 50),
                      padding: EdgeInsets.fromLTRB(60, 15, 60, 15),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.rectangle,
                        border: Border.all(
                            color: Colors.white,
                            style: BorderStyle.solid,
                            width: 2),
                      //  boxShadow: [BoxShadow(color: Colors.grey[500], blurRadius: 4)],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0),
                          bottomLeft: Radius.circular(25.0),
                          bottomRight: Radius.circular(25.0),
                        ),
                      ),
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Roboto",
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.fromLTRB(60, 15, 60, 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      boxShadow: [BoxShadow(color: Colors.grey[500], blurRadius: 4)],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0),
                        bottomLeft: Radius.circular(25.0),
                        bottomRight: Radius.circular(25.0),
                      ),
                    ),
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "roboto_bold",
                          color: Colors.grey[600]),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          height: height - 270,
                          child: Image(
                            image: AssetImage("images/footer_shape.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
