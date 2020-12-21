import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ojos/shared/consts.dart';

class GlasGlass extends StatefulWidget {
  GlasGlass({@required this.assetImage});
  final ImageProvider assetImage;

  @override
  _GlasGlassState createState() => _GlasGlassState();
}

class _GlasGlassState extends State<GlasGlass> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // width: _screenSize.width * 0.96,
        // height: 650,
        decoration: BoxDecoration(
          // color: Colors.purpleAccent,
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(14),
          ),
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                  // color: Colors.green,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(
                  children: [
                    // Yellow - Glasses
                    Stack(
                      overflow: Overflow.visible,
                      children: [
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                            // color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(14),
                            image: DecorationImage(
                              image: widget.assetImage,
                              // image:
                              //     AssetImage('images/woman-with-sungalss.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 5,
                          left: 7,
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
                              borderRadius: BorderRadius.circular(50),
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
                          top: 34,
                          left: 10,
                          child: Container(
                            alignment: Alignment.center,
                            // width: 46,
                            // height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1.0,
                                color: Color(0xffE8E8E8),
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 3),
                                  child: Text(
                                    '4',
                                    style: TextStyle(
                                      color: Color(0xff484848),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
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
                        Positioned(
                          bottom: -16,
                          right: 5,
                          child: Container(
                            alignment: Alignment.center,
                            // width: 90,
                            height: 30,
                            padding: EdgeInsets.symmetric(horizontal: 7.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1.0,
                                color: Color(0xffE8E8E8),
                              ),
                              color: Colors.white,
                              boxShadow: kBoxShadow,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'خصم',
                                  style: TextStyle(
                                    color: Color(0xff484848),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  '30%',
                                  style: TextStyle(
                                    color: Color(0xff2A357C),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                Icon(
                                  Icons.local_offer_sharp,
                                  color: Color(0xff293644),
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -16,
                          right: 100,
                          child: Container(
                            alignment: Alignment.center,
                            width: 80,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1.0,
                                color: Color(0xffE8E8E8),
                              ),
                              color: Colors.white,
                              boxShadow: kBoxShadow,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'نسائية',
                                  style: TextStyle(
                                    color: Color(0xff484848),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                Icon(
                                  Icons.account_circle_outlined,
                                  color: Color(0xff293644),
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 80,
                          // color: Colors.blue,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 70,
                                height: 34,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 7.0,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.0,
                                    color: Color(0xffE8E8E8),
                                  ),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'ريال',
                                      style: TextStyle(
                                        color: Color(0xff484848),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      '89',
                                      style: TextStyle(
                                        color: Color(0xff2A357C),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 19,
                        ),
                        Expanded(
                          child: Container(
                            height: 80,
                            // color: Colors.red,
                            padding: EdgeInsets.only(right: 14, top: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'نظارات جلاس طبية',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(height: 1.3),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'عدسات مجانية',
                                      style: TextStyle(
                                        color: Color(0xff757575),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 14,
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: 24,
                                        height: 24,
                                        decoration: BoxDecoration(
                                          color: Color(0xffF0B76E),
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            width: 1,
                                            color: Color(0xff2A357C),
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.check,
                                          size: 12,
                                          color: Color(0xff2A357C),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // width: _screenSize.width * 0.95,
              height: 80,
              color: Colors.greenAccent,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffFBFBFB),
                  border: Border.all(
                    width: 0.7,
                    color: Color(0xffE8E8E8),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 5),
                      child: Text(
                        'الألوان المتوفرة',
                        textAlign: TextAlign.right,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color(0xff0C0D34),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 2,
                              color: Color(0xffE3E3E7),
                            ),
                          ),
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color(0xffFF0058),
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 2,
                                color: Colors.white,
                              ),
                            ),
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 2,
                              color: Color(0xffE3E3E7),
                            ),
                          ),
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color(0xff50B9DE),
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 2,
                                color: Colors.white,
                              ),
                            ),
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 2,
                              color: Color(0xffE3E3E7),
                            ),
                          ),
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color(0xff00D99A),
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 2,
                                color: Colors.white,
                              ),
                            ),
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color(0xffFE5E33),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // color: Colors.orange,
              child: OutlineButton.icon(
                borderSide: BorderSide.none,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(0),
                  ),
                ),
                onPressed: () {
                  print('Tettt');
                },
                label: Align(
                  alignment: Alignment.centerRight,
                  child: SvgPicture.asset('images/camera.svg'),
                ),
                icon: Text(
                  'جرب النظارة قبل الشراء',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xff2A357C),
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                color: Color(0xffFBFBFB),
                border: Border.all(
                  width: 0.7,
                  color: Color(0xffE8E8E8),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 5),
                    child: Text(
                      'الاحجام المتوفرة',
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          // width: 50,
                          // height: 30,
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Color(0xfffbfbfb),
                            border: Border.all(
                              width: 0.7,
                              color: Color(0xffE8E8E8),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(22),
                            ),
                          ),
                          child: Center(
                            child: Text('55 - 58', textAlign: TextAlign.center),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          // width: 55,
                          // height: 35,
                          decoration: BoxDecoration(
                            color: Color(0xfffbfbfb),
                            border: Border.all(
                              width: 1.3,
                              color: Color(0xff2A357C),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(22),
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            // width: 66,
                            // height: 30,
                            padding: EdgeInsets.all(3.0),

                            margin: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              color: Color(0xfffbfbfb),
                              border: Border.all(
                                width: 1.3,
                                color: Color(0xffE8E8E8),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(22),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '49 - 54',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff2A357C),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          // width: 50,
                          // height: 30,
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Color(0xfffbfbfb),
                            border: Border.all(
                              width: 1.3,
                              color: Color(0xffE8E8E8),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(22),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '40 - 48',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: OutlineButton.icon(
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
                      icon: SvgPicture.asset(
                        'images/shoping_cart.svg',
                        color: Colors.black87,
                      ),
                      label: Text(
                        'إضافة للسلة',
                        style: TextStyle(
                          color: Color(0xff2A357C),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // width: 60,
                    // height: 60,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                        width: 0.5,
                        color: Color(0xffE8E8E8),
                      ),
                    ),
                    child: SvgPicture.asset('images/fav.svg'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
