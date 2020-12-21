import 'package:flutter/material.dart';
import 'package:ojos/shared/consts.dart';

class StartShopping extends StatefulWidget {
  @override
  _StartShoppingState createState() => _StartShoppingState();
}

class _StartShoppingState extends State<StartShopping> {
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
                          Navigator.pop(context);
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
                  _buildShoppingIndicator(stepOne: false, borderActive: false),
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
                      alignment: Alignment.topCenter,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: kRadiusMedium,
                        border: kBorderAll,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.all(5),
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: kRadiusMedium,
                              border: kBorderAll,
                            ),
                            child: Image.asset(
                              'images/shopping/brown_glass.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          //
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: 76,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 1, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Color(0xffFBFBFB),
                                    borderRadius: kRadiusLarge,
                                    border: Border.all(
                                      width: 0.5,
                                      color: Color(0xffE8E8E8),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'اختار',
                                        textAlign: TextAlign.right,
                                      ),
                                      SizedBox(width: 5),
                                      isSelected == true
                                          ? Container(
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
                                            )
                                          : Container(
                                              width: 22,
                                              height: 22,
                                              decoration: BoxDecoration(
                                                color: Color(0xffE5E5E5),
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                    ],
                                  ),
                                ),
                                Text('نظارات طبية'),
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
                      alignment: Alignment.topCenter,
                      // padding: EdgeInsets.all(0),
                      height: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: kRadiusMedium,
                        border: kBorderAll,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.all(5),
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: kRadiusMedium,
                              border: kBorderAll,
                            ),
                            child: Image.asset(
                              'images/shopping/black_glass.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: 76,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 1, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Color(0xffFBFBFB),
                                    borderRadius: kRadiusLarge,
                                    border: Border.all(
                                      width: 0.5,
                                      color: Color(0xffE8E8E8),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'اختار',
                                        textAlign: TextAlign.right,
                                      ),
                                      SizedBox(width: 5),
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
                                Text('نظارات شمسية'),
                              ],
                            ),
                          ),
                          SizedBox(height: 7),
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
