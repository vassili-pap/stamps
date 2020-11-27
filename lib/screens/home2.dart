import 'package:flutter/material.dart';
import 'package:flutter_universe/tabs/bottom/about.dart';
import 'package:flutter_universe/tabs/bottom/info.dart';
import 'package:flutter_universe/tabs/bottom/welcome.dart';
import '../side_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_universe/tabs/top/tab1.dart';
import 'package:flutter_universe/tabs/top/tab2.dart';
import 'package:flutter_universe/tabs/top/tab3.dart';

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;

  final List<Widget> _tabs = [Tab1(), Tab2(), Tab3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Videos'),
      ),
      body: _tabs[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (index) => setState((){
          _index = index;
        }),
        items: [
          new BottomNavigationBarItem(
            icon:Icon(Icons.camera),
            title: Text('Camera'),
          ),
          new BottomNavigationBarItem(
            icon:Icon(Icons.map),
            title: Text('Map'),
          ),
          new BottomNavigationBarItem(
            icon:Icon(Icons.mail),
            title: Text('Mail'),
          ),                
        ]
      ),
    );
  }
}