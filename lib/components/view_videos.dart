import 'package:flutter/material.dart';

class ViewVideos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      width: _screenSize.width * 0.96,
      height: 230,
      margin: EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(
          Radius.circular(14),
        ),
      ),
      child: Center(
        child: Text(
          'Play a Video',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
