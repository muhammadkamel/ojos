import 'package:flutter/material.dart';

class CustomEndDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: 200,
        height: 140,
        color: Colors.red,
        child: Text('Home'),
      ),
    );
  }
}
