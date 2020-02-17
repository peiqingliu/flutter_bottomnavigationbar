import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bottomnavigationbar/pages/home_screen.dart';
import 'package:flutter_bottomnavigationbar/pages/airPlay_screen.dart';
import 'package:flutter_bottomnavigationbar/pages/email_screen.dart';
import 'package:flutter_bottomnavigationbar/pages/pages_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {

  List<Widget> pages = List<Widget>();
  final _BottomNavigationColor = Colors.blue;
  int _currentIndex = 0;

  @override
  void initState() {
    pages.add(HomeScreen());
    pages.add(EmailScreen());
    pages.add(AirPlayScreen());
    pages.add(PagesScreen());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color:_BottomNavigationColor),
            title: Text('HOME',style:TextStyle(color:_BottomNavigationColor))
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.email,color:_BottomNavigationColor),
            title: Text('Email',style:TextStyle(color:_BottomNavigationColor))
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.pages,color:_BottomNavigationColor),
            title: Text('PAGES',style:TextStyle(color:_BottomNavigationColor))
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.airplay,color:_BottomNavigationColor),
            title: Text('AIRPLAY',style:TextStyle(color:_BottomNavigationColor))
            ),
        ],
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.shifting,
        ),
        body: pages[_currentIndex],
    );
  }
}