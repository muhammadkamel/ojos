import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ojos/components/custom_search.dart';
import 'package:ojos/shared/consts.dart';

import '../components/category.dart';
import '../components/header.dart';
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

class _HomePageState extends State<HomePage> {
  int index = 3;

  // Init

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF8F8F8),
        body: SingleChildScrollView(
          child: Container(
            // color: Colors.red,
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(height: 35),
                Header(),
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
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
                  'images/home.svg',
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
                icon: Container(
                  // margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: kBoxShadow,
                    border: Border.all(
                      width: 5,
                      color: Colors.white,
                    ),
                  ),
                  child: Container(
                    width: 50,
                    height: 50,
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
                label: index == 2 ? 'Cart' : '',
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
      ),
    );
  }
}
