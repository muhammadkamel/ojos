import 'package:flutter/material.dart';
import 'package:ojos/pages/home_page.dart';

import 'package:ojos/shared/consts.dart';

class SelectStyle extends StatefulWidget {
  @override
  _SelectStyleState createState() => _SelectStyleState();
}

class _SelectStyleState extends State<SelectStyle> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 33),
            // AppBar
            Container(
              alignment: Alignment.center,
              width: _screenSize.width * 0.96,
              // color: Colors.greenAccent.shade100,
              child: Stack(children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    alignment: Alignment.center,
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: kRadiusMedium,
                    ),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => HomePage(),
                            ),
                          );
                        });
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff111719),
                        size: 18,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    width: 200,
                    height: 50,
                    // color: Colors.blue,
                    child: Center(
                      child: Text(
                        'ابدأ الاختبار',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: kFontColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),

            // Shopping stepper
            SizedBox(height: 22),
            Container(
              width: _screenSize.width * 0.96,
              // height: 300,
              // color: Colors.yellow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildShoppingIndicator(stepOne: false, borderActive: false),
                  _buildShoppingIndicator(stepOne: false, borderActive: false),
                  _buildShoppingIndicator(stepOne: false, borderActive: false),
                  _buildShoppingIndicator(stepOne: false, borderActive: false),
                  _buildShoppingIndicator(stepOne: false, borderActive: true),
                  _buildShoppingIndicator(stepOne: false, borderActive: true),
                  _buildShoppingIndicator(stepOne: true, borderActive: false),
                ],
              ),
            ),

            // Select the type
            SizedBox(height: 14),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text('حدد نوع النظارة'),
            ),

            // View Cart
            Container(
              width: _screenSize.width * 0.96,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 5),
                      padding: EdgeInsets.only(bottom: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        // color: Colors.green,
                        // color: Colors.white,
                        border: Border.all(
                          width: 1.5,
                          color: Color(0xffE8E8E8),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/woman_wearing_glasses.png',
                            fit: BoxFit.cover,
                          ),
                          Container(
                            width: _screenSize.width * 0.40,
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(horizontal: 3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: 75,
                                  height: 30,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 3.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 1,
                                      color: Color(0xffE8E8E8),
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'اختيار',
                                        textAlign: TextAlign.center,
                                      ),
                                      Container(
                                        alignment: Alignment.centerRight,
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          color: Color(0xffE5E5E5),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text('ستايل النساء'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 7),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 5),
                      padding: EdgeInsets.only(bottom: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        // color: Colors.green,
                        // color: Colors.white,
                        border: Border.all(
                          width: 1.5,
                          color: Color(0xffE8E8E8),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/man_wearing_glasses.png',
                            fit: BoxFit.cover,
                          ),
                          Container(
                            width: _screenSize.width * 0.40,
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(horizontal: 3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: 75,
                                  height: 30,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 3.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 1,
                                      color: Color(0xffE8E8E8),
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'اختيار',
                                        textAlign: TextAlign.center,
                                      ),
                                      Container(
                                        width: 22,
                                        height: 22,
                                        decoration: BoxDecoration(
                                          color: Color(0xffF0B76E),
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            width: 0.5,
                                            color: Color(0xff2A357C),
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.check,
                                          size: 14,
                                          color: Color(0xff2A357C),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text('ستايل الرجال'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // End
          ],
        ),
      ),
      bottomNavigationBar: // Bottom Nav Bar
          Container(
        alignment: Alignment.bottomCenter,
        width: _screenSize.width,
        height: 60,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OutlineButton(
              onPressed: () {},
              child: Text('الغاء'),
            ),
            FlatButton(
              onPressed: () {},
              color: kMainColor,
              child: Text(
                'إستمرار',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Widget _buildShoppingIndicator({bool stepOne, bool borderActive}) {
    return Row(children: [
      Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: stepOne ? Color(0xffF0B76E) : Colors.white,
          border: Border.all(
            width: 1,
            color: stepOne ? kMainColor : Color(0xffE8E8E8),
          ),
        ),
      ),
      !stepOne
          ? Container(
              width: 30,
              height: 1.9,
              color: borderActive ? kMainColor : Color(0xffEAE1DF),
            )
          : Text(''),
    ]);
  }
}
