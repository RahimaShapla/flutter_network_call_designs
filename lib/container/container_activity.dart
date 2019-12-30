import 'dart:math';

import 'package:ebuy_flutter/navigation_items/CategoryActivity.dart';
import 'package:ebuy_flutter/navigation_items/HomeFragment.dart';
import 'package:ebuy_flutter/navigation_items/SettingFragment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerItem {
  String title;
  IconData icon;

  DrawerItem(this.title);
}

class ContainerActivity extends StatefulWidget {
  final drawerItem = [
    DrawerItem("Home"),
    DrawerItem("Categories"),
    DrawerItem("My Address"),
    DrawerItem("My order"),
    DrawerItem("Offer"),
    DrawerItem("Blog "),
    DrawerItem("Settigs "),
    DrawerItem("Sign Out")
  ];

  @override
  State<StatefulWidget> createState() {
    return ContainerActivityState();
  }
}

class ContainerActivityState extends State<ContainerActivity> {
  int _selectedDrawerIndex = 0;
  int _bottomFragmentCount = 0;
  bool _isBottomBar = false;

  _getDrawerItemWidget(int position) {
    if (!_isBottomBar) {
      switch (position) {
        case 0:
          return HomeFragment();
        case 1:
          return CategoryActivity();
        case 2:
          return HomeFragment();
        case 3:
          return HomeFragment();
        case 4:
          return HomeFragment();
        case 5:
          return HomeFragment();
        case 6:
          return SettingFragment();
        case 7:
          return HomeFragment();
        case 8:
          return CategoryActivity();

        default:
          return HomeFragment();
      }
    } else {
      switch (position) {
        case 0:
          return HomeFragment();
        case 1:
          return CategoryActivity();
        case 2:
          return HomeFragment();
        default:
          return HomeFragment();
      }
    }
  }

  _onSelectItem(int index) {
    setState(() {
      _isBottomBar = false;
      _selectedDrawerIndex = index;
    });
    Navigator.of(context).pop();
  }

  _onBottomBarTap(int index) {
    setState(() {
      _bottomFragmentCount = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOption = [];
    for (var i = 0; i < widget.drawerItem.length; i++) {
      var navItem = widget.drawerItem[i];
      drawerOption.add(ListTile(
        //leading: Icon(navItem.icon),
        title: Text(
          navItem.title,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        selected: i == _selectedDrawerIndex,
        onTap: () {
          _onSelectItem(i);
        },
      ));
    }

    return Scaffold(
      appBar: AppBar(
          title: new Text(widget.drawerItem[_selectedDrawerIndex].title),
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
              onPressed: () {
                //_select(choices[1]);
              },
            ),
          ]),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              stops: [0.1, 1],
              colors: [Color(0xff00BFA5), Color(0xff0DD9A3)],
            ),
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // padding: EdgeInsets.zero,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 24),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(16, 10, 0, 0),
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
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Container(
                        height: 1,
                        color: Color(0xff0DD9A3),
                      ),
                    ),
                    Column(
                      children: drawerOption,
                      mainAxisAlignment: MainAxisAlignment.center,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedDrawerIndex,
        onTap: (int index) {
          setState(() {
            _isBottomBar = true;
            _selectedDrawerIndex = index;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail, size: 30),
            title: Text(''),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 30), title: Text(''))
        ],
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
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
