import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ojos/pages/sun_glas/page_view_sun.dart';
import 'package:ojos/shared/consts.dart';
import 'package:ojos/widgets/buy_lens.dart';

class ViewDetailsSun extends StatefulWidget {
  @override
  _ViewDetailsSunState createState() => _ViewDetailsSunState();
}

class _ViewDetailsSunState extends State<ViewDetailsSun> {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    var _textStyle = const TextStyle(
      color: const Color(0xff9796A1),
      fontSize: 24,
      fontWeight: FontWeight.bold,
    );
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                Center(
                  child: Container(
                    width: _screenSize.width * 0.96,
                    // color: Colors.greenAccent,
                    child: Stack(
                      children: [
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
                                'تفاصيل المنتج',
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
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: _screenSize.width * 0.96,
                  // height: 700,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1,
                      color: Color(0xffE1E1E1),
                    ),
                    borderRadius: kRadiusMedium,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      PageViewSun(),
                      Container(
                        // color: Colors.yellow,
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: _screenSize.width * 0.32,
                              // height: 60,
                              // color: Colors.green,
                              child: OutlineButton(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: kRadiusLarge,
                                ),
                                onPressed: () {},
                                child: Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '89',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: kMainColor,
                                        ),
                                      ),
                                      Text('ريال'),
                                      Text(
                                        '30%',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: kMainColor,
                                        ),
                                      ),
                                      Text('خصم'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              // color: Colors.deepOrangeAccent,
                              alignment: Alignment.centerRight,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('عدسات لاصقة ايطالية'),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          'شركة ليفونوس',
                                          style: TextStyle(
                                            color: const Color(0xff757575),
                                          ),
                                        ),
                                        Icon(
                                          Icons.local_offer_outlined,
                                          size: 20,
                                          color: kMainColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(color: Color(0xffE1E1E1)),
                      Container(
                        width: _screenSize.width * 0.90,
                        height: 60,
                        decoration: BoxDecoration(
                          border: kBorderAll,
                          borderRadius: kRadiusMedium,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: _screenSize.width * 0.40,
                              // margin: EdgeInsets.only(left: 20),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              // color: Colors.red,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_outlined,
                                      size: 30,
                                      color: Color(0xff2B2D3D),
                                    ),
                                  ),
                                  Container(
                                    // color: Colors.green,
                                    child: Text(
                                      'ازرق',
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: kRadiusMedium,
                                      border: Border.all(
                                        width: 1,
                                        color: Color(0xffe8e8e8),
                                      ),
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                      child: Container(
                                        width: 38,
                                        height: 38,
                                        decoration: BoxDecoration(
                                          color: Color(0xff5085C2),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              child: Text(
                                'لون العدسة',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff343536),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      // Lens size - Right eye
                      buildLensSize(
                          _screenSize, _textStyle, 'مقاس العدسة للعين اليمنى'),
                      // Lens size - Left eye
                      buildLensSize(
                          _screenSize, _textStyle, 'مقاس العدسة للعين اليسرى'),
                      buildSizeSelector(_screenSize, _textStyle, 'ادخل مقاسات'),

                      Divider(color: Color(0xffE1E1E1)),

                      Container(
                        // color: Colors.orangeAccent,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                'ضمان استعادة الأموال والشحن المجاني  بعد عملية الشراء',
                                style: TextStyle(
                                  color: Color(0xff343536),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 22,
                              height: 22,
                              decoration: BoxDecoration(
                                color: const Color(0xffF0B76E),
                                border: Border.all(
                                  width: 1,
                                  color: Color(0xff2A357C),
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.check,
                                size: 16,
                                color: const Color(0xff2A357C),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Divider(color: Color(0xffE1E1E1)),

                      Container(
                        width: _screenSize.width * 0.96,
                        // color: Colors.teal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomButton(
                              title: 'إضافة للسلة',
                              svgIcon: SvgPicture.asset(
                                'images/shoping_cart.svg',
                                color: Colors.black87,
                              ),
                            ),
                            CustomButton(
                              title: 'مفضلة',
                              svgIcon: SvgPicture.asset(
                                'images/fav.svg',
                                color: Colors.black87,
                              ),
                            ),
                            CustomButton(
                              title: 'مراسلة المتجر',
                              svgIcon: SvgPicture.asset(
                                'images/chat.svg',
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // End of column
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                Container(
                  width: _screenSize.width * 0.96,
                  child: Column(
                    children: [
                      SizedBox(height: 18),
                      Container(
                        // color: Colors.indigo,
                        width: _screenSize.width * 0.96,
                        child: Row(children: [
                          Icon(
                            Icons.keyboard_arrow_left,
                          ),
                          Text(
                            'عرض الكل',
                            style: TextStyle(color: kFontColor),
                          ),
                          Spacer(),
                          Text(
                            'منتجات مشابهة',
                            textAlign: TextAlign.right,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ]),
                      ),
                      SizedBox(height: 7),
                      Row(
                        children: [
                          BuyLens(
                            assetImage: AssetImage('images/lenses1.png'),
                          ),
                          SizedBox(width: 7),
                          BuyLens(
                            assetImage: AssetImage('images/lenses2.png'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          BuyLens(
                            assetImage: AssetImage('images/lenses3.png'),
                          ),
                          SizedBox(width: 7),
                          BuyLens(
                            assetImage: AssetImage('images/lenses4.png'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildLensSize(Size _screenSize, TextStyle _textStyle, String title) {
    return Container(
      // height: 100,
      padding: EdgeInsets.symmetric(vertical: 5),
      margin: EdgeInsets.only(top: 10),
      // color: Colors.redAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            title,
            textAlign: TextAlign.right,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.center,
            width: _screenSize.width * 0.90,
            // color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    // width: 100,
                    height: 50,
                    margin: EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: kBorderAll,
                      borderRadius: kRadiusMedium,
                    ),
                    child: Center(
                      child: Text(
                        'CPH',
                        style: _textStyle,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    // width: 100,
                    height: 50,
                    // margin: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: kBorderAll,
                      borderRadius: kRadiusMedium,
                    ),
                    child: Center(
                      child: Text(
                        'CYI',
                        style: _textStyle,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    // width: 100,
                    height: 50,
                    margin: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: kBorderAll,
                      borderRadius: kRadiusMedium,
                    ),
                    child: Center(
                      child: Text(
                        'AXIS',
                        style: _textStyle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSizeSelector(
      Size _screenSize, TextStyle _textStyle, String title) {
    return Container(
      // height: 100,
      padding: EdgeInsets.symmetric(vertical: 5),
      margin: EdgeInsets.only(top: 10),
      // color: Colors.redAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            title,
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.center,
            width: _screenSize.width * 0.90,
            // color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    // width: 100,
                    height: 50,
                    margin: EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: kBorderAll,
                      borderRadius: kRadiusMedium,
                    ),
                    child: Center(
                      child: Text(
                        'IPD',
                        style: _textStyle,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    // width: 100,
                    height: 50,
                    margin: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: kBorderAll,
                      borderRadius: kRadiusMedium,
                    ),
                    child: Center(
                      child: Text(
                        'ADD',
                        style: _textStyle,
                      ),
                    ),
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

class CustomButton extends StatelessWidget {
  const CustomButton({
    @required this.title,
    @required this.svgIcon,
  });

  final SvgPicture svgIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 1),
      child: OutlineButton.icon(
        // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
        borderSide: BorderSide(
          width: 0.5,
          color: Color(0xffE8E8E8),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        onPressed: () {
          print('Tettt');
        },
        icon: Text(
          // 'إضافة للسلة',
          title,
          style: TextStyle(
            color: Color(0xff2A357C),
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
        label: svgIcon,
      ),
    );
  }
}
