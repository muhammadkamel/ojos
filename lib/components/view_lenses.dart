import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ViewLenses extends StatefulWidget {
  const ViewLenses({
    Key key,
  }) : super(key: key);

  @override
  _ViewLensesState createState() => _ViewLensesState();
}

class _ViewLensesState extends State<ViewLenses> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      margin: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
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
                                    image: AssetImage('images/lenses1.png'),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                          Container(
                            // height: 80,
                            margin: EdgeInsets.only(top: 10),

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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                Text(
                                  'عدسات لاصقة',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    height: 1.3,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            alignment: Alignment.center,
                            // height: 80,
                            // color: Colors.purple,
                            padding:
                                EdgeInsets.only(right: 14, top: 10, bottom: 10),
                            child: Container(
                              // color: Colors.green,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'الوان متوفرة',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '10',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: 20,
                                    height: 20,
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
                                ],
                              ),
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
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 7),
          Expanded(
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
                                    image: AssetImage('images/lenses2.png'),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                          Container(
                            // height: 80,
                            margin: EdgeInsets.only(top: 10),

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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                Text(
                                  'عدسات لاصقة',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    height: 1.3,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            alignment: Alignment.center,
                            // height: 80,
                            // color: Colors.purple,
                            padding:
                                EdgeInsets.only(right: 14, top: 10, bottom: 10),
                            child: Container(
                              // color: Colors.green,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'الوان متوفرة',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '10',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: 20,
                                    height: 20,
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
                                ],
                              ),
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
