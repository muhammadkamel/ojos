import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ojos/components/custom_search.dart';
import 'package:ojos/shared/consts.dart';
import 'package:ojos/widgets/custom_drawer.dart';

import '../components/category.dart';
import '../components/images_view.dart';
import '../components/new_products.dart';
import '../components/result.dart';
import '../components/select_grade.dart';
import '../components/view_glasses.dart';
import '../components/view_lenses.dart';
import '../components/view_videos.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  int index = 4;

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // Init
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 3,
      ),
    )
      ..forward()
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;

    double animValue = _animationController.value;
    // final slideAmount = maxSlide * animValue;
    final contentScale = 1.0 - (0.3 * animValue);

    //
    TextStyle _textStyle = const TextStyle(
      color: Colors.white,
      fontSize: 20,
    );
    SizedBox sizedBox = SizedBox(width: 17);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF8F8F8),
        // appBar: AppBar(),
        key: _scaffoldKey,
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 35),
                Container(
                  width: _screenSize.width * 0.96,
                  // color: Colors.redAccent,
                  margin: EdgeInsets.only(bottom: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        overflow: Overflow.visible,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.9,
                                color: Color(0xffE8E8E8),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(14),
                              ),
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.notifications_none_outlined,
                              color: Color(0xff484848),
                              size: 37,
                            ),
                          ),
                          Positioned(
                            top: -3,
                            left: -3,
                            child: Container(
                              width: 18,
                              height: 18,
                              decoration: BoxDecoration(
                                color: Color(0xffF0B76E),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                  '5',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        'images/brand logo.svg',
                        fit: BoxFit.cover,
                        width: 80,
                        height: 34,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.9,
                            color: Color(0xffE8E8E8),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(14),
                          ),
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              _scaffoldKey.currentState.openEndDrawer();
                            });
                          },
                          icon: Icon(
                            Icons.dehaze,
                            size: 30,
                            color: Color(0xff484848),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                CustomSearch(),

                ImagesView(),

                Category(),

                Result(),

                SelectGrade(),

                ViewVideos(),

                // Title

                Container(
                  width: _screenSize.width * 0.96,

                  // color: Colors.blue,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
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
                          ),
                        ],
                      ),
                      Text(
                        'أحدث المنتجات',
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 5),

                NewProducts(),

                ViewGlasses(),

                // SizedBox(height: 20),

                ViewLenses(),

                // End
                Container(
                  color: Colors.purple,
                  height: 30,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Center(child: Text('Text')),
                      Container(
                        width: 100,
                        height: 20,
                        color: Colors.green,
                      ),
                      Container(
                        width: 100,
                        height: 20,
                        color: Colors.orange,
                      ),
                      Container(
                        width: 100,
                        height: 20,
                        color: Colors.redAccent,
                      ),
                      Container(
                        width: 100,
                        height: 20,
                        color: Colors.green,
                      ),
                      Container(
                        width: 100,
                        height: 20,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          // height: 100,
          decoration: BoxDecoration(
            color: Colors.green,
            border: Border(
              top: BorderSide(
                width: 1.3,
                color: Color(0xffE8E8E8),
              ),
            ),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: index,
            selectedItemColor: Color(0xff2A357C),
            type: BottomNavigationBarType.fixed,
            onTap: (val) {
              setState(() {
                index = val;
              });
              print('I am here $index');
            },
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'images/profile.svg',
                  color: index == 0 ? Color(0xff2A357C) : Color(0xff484848),
                ),
                label: 'حسابي',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'images/deps.svg',
                  color: index == 1 ? Color(0xff2A357C) : Color(0xff484848),
                ),
                label: 'الأقسام',
              ),
              BottomNavigationBarItem(
                icon: Center(
                  child: Container(
                    // margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: kBoxShadow,
                      border: Border.all(
                        width: 5,
                        color: Colors.white,
                      ),
                    ),
                    child: Center(
                      child: Container(
                        width: 70,
                        height: 70,
                        // margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          color: Color(0xff2A357C),
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 1,
                            color: Color(0xffF0B76E),
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          width: 20,
                          height: 20,
                          child: SvgPicture.asset(
                            'images/shoping_cart.svg',
                            // fit: BoxFit.cover,
                            width: 26,
                            // height: 10,
                            color: Color(0xffF0B76E),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                label: index == 2 ? '' : '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'images/marks.svg',
                  color: index == 3 ? Color(0xff2A357C) : Color(0xff484848),
                ),
                label: 'الماركات',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'images/home_flat.svg',
                  color: index == 4 ? Color(0xff2A357C) : Color(0xff484848),
                ),
                label: 'الرئيسية',
              ),
            ],
          ),
        ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        endDrawer: CustomEndDrawer(),
      ),
    );
  }
}
