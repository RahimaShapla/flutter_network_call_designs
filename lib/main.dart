import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,));

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MyHomePage(title: 'Home'),
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
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(

                decoration: BoxDecoration(

              // Box decoration takes a gradient
              gradient: LinearGradient(
                // Where the linear gradient begins and ends
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                // Add one stop for each color. Stops should increase from 0 to 1
                stops: [0.1, 0.5, 0.7, 1],
                colors: [
                  // Colors are easy thanks to Flutter's Colors class.
                  Colors.indigo[800],
                  Colors.indigo[700],
                  Colors.indigo[600],
                  Colors.indigo[400],
                ],
              ),
            ), child: null,)
          ],
        ),
      ),
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
