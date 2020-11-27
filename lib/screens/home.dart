import 'package:flutter/material.dart';
import 'package:flutter_universe/tabs/bottom/about.dart';
import 'package:flutter_universe/tabs/bottom/info.dart';
import 'package:flutter_universe/tabs/bottom/welcome.dart';
import '../side_drawer.dart';



class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
      appBar: AppBar(title: Text('Coding w V'),
      bottom: TabBar(
        tabs: [
          Tab(
            text: 'Welcome', 
            icon: Icon(Icons.home)
          ),
          Tab(
            text: 'Info', 
            icon: Icon(Icons.info)
          ),
          Tab(
            text: 'About', 
            icon: Icon(Icons.fastfood)
          ),

         ],
        )
      ),
      drawer: SideDrawer(),
      body: TabBarView(children: [
        Welcome(),
        Info(),
        About(),
      ])
      ),
    );
  }
}