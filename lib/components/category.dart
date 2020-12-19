import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      width: _screenSize.width * 0.96,
      margin: EdgeInsets.symmetric(vertical: 12),
      padding: EdgeInsets.symmetric(horizontal: 0),
      // color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Title
          Container(
            alignment: Alignment.center,
            width: _screenSize.width * 0.96,
            margin: EdgeInsets.only(bottom: 5),
            // color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 12,
                    ),
                    Text(
                      'عرض الكل',
                      style: TextStyle(
                        color: Color(0xff9796A1),
                      ),
                      // textAlign: TextAlign.right,
                    ),
                  ],
                ),
                Container(
                  // color: Colors.red,
                  child: Text(
                    'تصنيفات المنتجات',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xff484848),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //
          Container(
            alignment: Alignment.center,
            // width: _screenSize.width * 0.95,
            height: 140,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                width: 0.7,
                color: Color(0xffE8E8E8),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(14),
              ),
            ),
            // Circles
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            // color: Colors.green,
                            border: Border.all(
                              width: 2,
                              color: Color(0xffE6E6E6),
                            )),
                        child: Image.asset(
                          'images/Oval1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Center(
                        child: Text(
                          'اكسسوارات',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            // color: Colors.green,
                            border: Border.all(
                              width: 2,
                              color: Color(0xffE6E6E6),
                            )),
                        child: Image.asset(
                          'images/Oval2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Center(
                        child: Text(
                          'عدسات لاصقه',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            // color: Colors.green,
                            border: Border.all(
                              width: 2,
                              color: Color(0xffE6E6E6),
                            )),
                        child: Image.asset(
                          'images/Oval3.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Center(
                        child: Text(
                          'نظارات طبية',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(
                              width: 2,
                              color: Color(0xffE6E6E6),
                            )),
                        child: Image.asset(
                          'images/Oval4.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Center(
                        child: Text(
                          'نظارات شمسية ',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
