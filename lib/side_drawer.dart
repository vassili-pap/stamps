import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('test@gmail.com'),
              accountEmail: Text('Vassili'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Kodak_Black%2C_arrest_photo%2C_May_2016.png/170px-Kodak_Black%2C_arrest_photo%2C_May_2016.png'),
            ),
          ),
          ListTile(
            title: Text('Home'),
            leading: Icon(Icons.home),
            onTap: () => Navigator.pushReplacementNamed(context, 'home'),
          ),
          ListTile(
            title: Text('Videos'),
            leading: Icon(Icons.personal_video),
            onTap: () => Navigator.pushNamed(context, 'videos'),
          ),
          ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings),
            onTap: () => Navigator.pushNamed(context, 'settings'),
          ),
        ],
       ),
      )
     ),
    );
  }
}
