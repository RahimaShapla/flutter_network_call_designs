import 'package:ebuy_flutter/container/container_activity.dart';
import 'package:ebuy_flutter/welcome_page/welcome_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
    ));

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: WelcomeActivity(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: new Text(widget.title),
          textTheme: TextTheme(),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          flexibleSpace: Image(
            image: AssetImage('images/bg.png'),
            fit: BoxFit.cover,
          ),
          actions: <Widget>[
            // action button
            IconButton(
              icon: Icon(choices[0].icon),
              padding: EdgeInsets.zero,
              onPressed: () {
                //   _select(choices[0]);
              },
            ),
            // action button

            IconButton(
              icon: Icon(choices[1].icon),
              padding: EdgeInsets.zero,
              //  iconSize: ,
              onPressed: () {
                //_select(choices[1]);
              },
            ),
          ]),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),

      drawer: Drawer(
          child: Container(
        decoration: BoxDecoration(
          // Box decoration takes a gradient
          gradient: LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.topLeft,
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

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // padding: EdgeInsets.zero,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 24),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(16,0, 0, 0),
              alignment: Alignment.topLeft,
              child: Image(
                image: AssetImage("images/ic_cross.png"),
                height: 20,
                width: 20,
              ),
            ),
            Container(
              width: 100,
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("images/default_person.png"),
                      fit: BoxFit.fill)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
            ),
            Text(
              "Lily Gelibi",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "lily@domain.com",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),


            Padding(
              padding: const EdgeInsets.only(top : 16.0),
              child: Container(
                height: 1,
                color: Color(0xff0DD9A3),

              ),
            ),
             ListTile(
                title: new Text("HOME", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold), textAlign: TextAlign.center, ),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                title: new Text("OFFER", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                title: new Text("MY ORDER", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                title: new Text("CATEGORIES", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                title: new Text("BLOG", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                title: new Text("MY ADDRESS", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                title: new Text("SETTINGS", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                title: new Text("LOGOUT", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                onTap: () {
                  Navigator.pop(context);
                }),

            /*   DrawerHeader(
                child: Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage("images/ic_cross.png"),
                      height: 20,
                      width: 20,
                    ),
                    CircleAvatar(
                      radius: 50,
                      backgroundImage:AssetImage('images/default_person.png') ,
                    ),
                  ],
                ),

              )*/
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Bicycle', icon: Icons.search),
  const Choice(title: 'Car', icon: Icons.add_shopping_cart),
];
