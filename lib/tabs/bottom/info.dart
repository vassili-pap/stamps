import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
        'Tab 2', 
        style: TextStyle(fontSize: 24)
        ),
      ),
    );
  }
}
