import 'package:ebuy_flutter/utility/dotted_rectangle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:dotted_border/dotted_border.dart';

class LogIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
    ));
    return LogInState();
  }
}

class LogInState extends State<LogIn> {
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
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                        height: 20,
                        width: 20,
                        child: Image(
                          image: AssetImage("images/ic_back.png"),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 40),
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    fontFamily: "roboto_bold",
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 40),
                              child: Text(
                                "Sign in to your account",
                                style: TextStyle(
                                    fontFamily: "roboto_medium",
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(32, 50, 32, 10),
                    height: 47,
                    width: width,
                    child: new Stack(
                      //alignment:new Alignment(x, y)
                      children: <Widget>[
                        Positioned(
                          child: Container(
                            height: 47,
                            width: width,
                            child: DashedRect(
                              color: Colors.white,
                              strokeWidth: 1.0,
                              gap: 1.0,
                            ),
                          ),
                        ),
                        Positioned(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(10, 18, 0, 0),
                            child: TextField(
                              cursorColor: Colors.white,
                              keyboardType: TextInputType.emailAddress,

                              style: TextStyle(color: Colors.white, fontFamily: "roboto_regular", fontSize: 14),
                              decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: TextStyle(fontSize: 14, color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      const Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                    height: 47,
                    width: width,
                    child: new Stack(
                      //alignment:new Alignment(x, y)
                      children: <Widget>[
                        Positioned(
                          child: Container(
                            height: 47,
                            width: width,
                            child: DashedRect(
                              color: Colors.white,
                              strokeWidth: 1.0,
                              gap: 1.0,
                            ),
                          ),
                        ),
                        Positioned(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(10, 18, 0, 0),
                            child: TextField(
                              cursorColor: Colors.white,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              style: TextStyle(color: Colors.white, fontFamily: "roboto_regular", fontSize: 14),
                              decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(fontSize: 14, color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      const Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 16,
                          top: 13,
                          child: Container(
                            height: 20,
                            width: 20,
                            child: Image(
                              image: AssetImage("images/ic_view.png"),
                            )
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(

                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
