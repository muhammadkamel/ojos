import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      width: _screenSize.width * 0.96,
      height: 54,
      // padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(14),
        ),
        border: Border.all(
          width: 0.7,
          color: Color(0xffE8E8E8),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 90,
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  width: 0.7,
                  color: Color(0xffE1E1E1),
                ),
              ),
            ),
            child: Icon(Icons.tune, size: 30),
          ),
          Text('...ابحث عن منتجك من هنا'),
          Container(
            height: 90,
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  width: 0.7,
                  color: Color(0xffE1E1E1),
                ),
              ),
            ),
            child: Icon(
              Icons.search,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
