import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ojos/shared/consts.dart';

class CustomEndDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    TextStyle _textStyle = const TextStyle(
      color: Colors.white,
      fontSize: 20,
    );
    SizedBox sizedBox = SizedBox(width: 17);
    return Container(
      alignment: Alignment.centerRight,
      // width: _screenSize.width,
      child: Drawer(
        child: Container(
          alignment: Alignment.centerRight,
          color: kMainColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              DrawerHeader(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: Container(
                  // color: Colors.redAccent,

                  width: _screenSize.width * 0.90,

                  padding: EdgeInsets.only(right: 50),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'اهلاً بك',
                        style: _textStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 14),
                      Text(
                        'عبدالرحمن المطيري',
                        style: _textStyle.copyWith(
                          color: Color(0xffF0B76E),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
              ),

              // Divider(),

              Flexible(
                child: Container(
                  alignment: Alignment.centerRight,

                  width: _screenSize.width * 0.90,

                  // height: 600,

                  padding: EdgeInsets.only(right: 50),

                  // color: Colors.orangeAccent,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'الرئيسية',
                            style: _textStyle.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.right,
                          ),
                          sizedBox,
                          SvgPicture.asset('images/drawer/home.svg'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'البروفايل',
                            style: _textStyle,
                            textAlign: TextAlign.right,
                          ),
                          sizedBox,
                          SvgPicture.asset('images/drawer/user.svg'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'الماركات',
                            style: _textStyle,
                            textAlign: TextAlign.right,
                          ),
                          sizedBox,
                          SvgPicture.asset('images/drawer/mark.svg'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'الرسائل',
                            style: _textStyle,
                            textAlign: TextAlign.right,
                          ),
                          sizedBox,
                          SvgPicture.asset('images/drawer/comment.svg'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'الطلبات',
                            style: _textStyle,
                            textAlign: TextAlign.right,
                          ),
                          sizedBox,
                          SvgPicture.asset('images/drawer/orders.svg'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'الأقسام',
                            style: _textStyle,
                            textAlign: TextAlign.right,
                          ),
                          sizedBox,
                          SvgPicture.asset('images/drawer/sections.svg'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'المحفظة',
                            style: _textStyle,
                            textAlign: TextAlign.right,
                          ),
                          sizedBox,
                          SvgPicture.asset('images/drawer/wallet.svg'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'المفضلة',
                            style: _textStyle,
                            textAlign: TextAlign.right,
                          ),
                          sizedBox,
                          SvgPicture.asset('images/drawer/fav.svg'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'التقييمات',
                            style: _textStyle,
                            textAlign: TextAlign.right,
                          ),
                          sizedBox,
                          SvgPicture.asset('images/drawer/star.svg'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'العروض',
                            style: _textStyle,
                            textAlign: TextAlign.right,
                          ),
                          sizedBox,
                          SvgPicture.asset('images/drawer/offers.svg'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'الاعدادات',
                            style: _textStyle,
                            textAlign: TextAlign.right,
                          ),
                          sizedBox,
                          SvgPicture.asset('images/drawer/settings.svg'),
                        ],
                      ),
                      SizedBox(height: 3),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
