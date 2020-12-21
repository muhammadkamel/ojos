import 'package:flutter/material.dart';
import 'package:ojos/shared/consts.dart';

class PageViewSun extends StatefulWidget {
  @override
  PageViewSunState createState() => PageViewSunState();
}

class PageViewSunState extends State<PageViewSun> {
  PageController _pageViewController;

  bool isActive = true;

  int index = 0;

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController(
        // viewportFraction: 1,
        );
    _pageViewController.addListener(() {
      setState(() {
        print(_pageViewController.page);
      });
    });
  }

  AnimatedContainer _customIndicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: 15,
      height: 15,
      margin: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: isActive ? Color(0xff2A357C) : Colors.grey[300],
        border: Border.all(
          width: 2,
          color: Colors.white,
        ),
        borderRadius: kRadiusMedium,
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < 4; i++) {
      list.add(i == index ? _customIndicator(true) : _customIndicator(false));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      width: _screenSize.width * 0.96,
      // color: Colors.black,
      // padding: EdgeInsets.zero,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 235,
            // margin: EdgeInsets.only(right: 10),
            // padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                // color: Colors.red,

                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[100],
                    blurRadius: 10,
                  )
                ], borderRadius: kRadiusMedium),
            child: PageView(
              controller: _pageViewController,
              onPageChanged: (value) {
                isActive = true;
                index = value;
              },
              children: [
                Container(
                  width: _screenSize.width * 0.96,
                  // height: 200,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  // color: Colors.teal,
                  child: Stack(
                    children: [
                      Container(
                        width: _screenSize.width * 0.96,
                        height: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: kRadiusMedium,
                          border: Border.all(
                            width: 0.7,
                            color: Color(0xffE8E8E8),
                          ),
                        ),
                        // color: Colors.red,
                        child: ClipRRect(
                          borderRadius: kRadiusMedium,
                          child: Image.asset(
                            'images/sun_glass.png',
                            height: 300,
                            fit: BoxFit.fitHeight,
                            // color: Colors.orange,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 7,
                        right: 7,
                        child: Container(
                          // width: 100,
                          // height: 170,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xffFBFBFB),
                            borderRadius: kRadiusLarge,
                            boxShadow: kBoxShadow,
                            border: kBorderAll,
                          ),
                          child: Center(
                            child: Text(
                              'عدسات نظارة',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff484848),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          alignment: Alignment.center,
                          width: 60,
                          height: 26,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.0,
                              color: Color(0xffE8E8E8),
                            ),
                            color: Color(0xff2A357C),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'جديد',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              Icon(
                                Icons.local_fire_department_sharp,
                                color: Color(0xffF0B76E),
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 73,
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          // width: 46,
                          // height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.0,
                              color: Color(0xffE8E8E8),
                            ),
                            color: Colors.white,
                            borderRadius: kRadiusMedium,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '4',
                                style: TextStyle(
                                  color: Color(0xff484848),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xffFECA00),
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: _screenSize.width * 0.96,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: kRadiusMedium,
                    border: Border.all(
                      width: 0.7,
                      color: Color(0xffE8E8E8),
                    ),
                  ),
                  // color: Colors.red,
                  child: ClipRRect(
                    borderRadius: kRadiusMedium,
                    child: Image.asset(
                      'images/sun_glass.png',
                      height: 300,
                      fit: BoxFit.fitHeight,
                      // color: Colors.orange,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Container(
                  width: _screenSize.width * 0.96,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: kRadiusMedium,
                    border: Border.all(
                      width: 0.7,
                      color: Color(0xffE8E8E8),
                    ),
                  ),
                  // color: Colors.red,
                  child: ClipRRect(
                    borderRadius: kRadiusMedium,
                    child: Image.asset(
                      'images/sun_glass.png',
                      height: 300,
                      fit: BoxFit.fitHeight,
                      // color: Colors.orange,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Container(
                  width: _screenSize.width * 0.96,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: kRadiusMedium,
                    border: Border.all(
                      width: 0.7,
                      color: Color(0xffE8E8E8),
                    ),
                  ),
                  // color: Colors.red,
                  child: ClipRRect(
                    borderRadius: kRadiusMedium,
                    child: Image.asset(
                      'images/sun_glass.png',
                      height: 300,
                      fit: BoxFit.fitHeight,
                      // color: Colors.orange,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Indicator
          Positioned(
            bottom: 10,
            // right: 10,
            // left: 10,
            child: Container(
              alignment: Alignment.center,
              // width: 60,
              // height: 20,
              // color: Colors.orangeAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ..._buildPageIndicator(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
