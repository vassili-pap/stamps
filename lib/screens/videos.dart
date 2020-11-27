import 'package:flutter/material.dart';
import 'package:flutter_universe/constants.dart';
import 'package:flutter_universe/tabs/top/tab1.dart';
import 'package:flutter_universe/tabs/top/tab2.dart';
import 'package:flutter_universe/tabs/top/tab3.dart';

class Videos extends StatefulWidget {
  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {

  int _index = 0;

  final List<Widget> _tabs = [HomePage(), MapPage(), Tab3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        backgroundColor: gradientStartColor,
        
        onTap: (index) => setState((){
          _index = index;
        }),
        items: [
          new BottomNavigationBarItem(
            icon:Icon(Icons.storage, color: Colors.black),
            title: Text('Meine Stempel', 
              style: TextStyle(
                color: Colors.black
                )
              ),
          ),
          new BottomNavigationBarItem(
            icon:Icon(Icons.map, color: Colors.black),
            title: Text('Karte', 
              style: TextStyle(
                color: Colors.black
                )
              ),
          ),
          new BottomNavigationBarItem(
            icon:Icon(Icons.supervised_user_circle, color: Colors.black),
            title: Text('Mein Profil', 
              style: TextStyle(
                color: Colors.black
                )
              ),
          ),
        ]
      ),
    );
  }
}