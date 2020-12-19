import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    double _mainSize = _screenSize.width * 0.96;
    String testLine = 'قمنا بتنفيذ اختبار يقوم بفحص المتطلبات الخاصة بك،';
    String testLine2 = 'ويعرض لك افضل نتائج حسب طلبك قم بتقديم الاختبار الان.';
    return Container(
      width: _mainSize,
      height: 130,
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 0),
      decoration: BoxDecoration(
        color: Color(0xff2A357C),
        borderRadius: BorderRadius.all(
          Radius.circular(14),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              // width: _mainSize * 0.75,
              padding: EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // color: Colors.green,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // SizedBox(width: 14),
                        Icon(
                          Icons.arrow_back_ios,
                          size: 18,
                          color: Colors.white,
                        ),
                        Spacer(),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: Text(
                            'سجل الاختبار لعرض افضل النتائج لك',
                            style: TextStyle(
                              fontFamily: 'Almarai',
                              fontSize: 13,
                              color: Color(0xffF0B76E),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    // padding: EdgeInsets.all(10),
                    // color: Colors.red,
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        '$testLine $testLine2',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontFamily: 'Almarai',
                          fontSize: 12,
                          color: Colors.white,
                          height: 1.7,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              // width: _mainSize * 0.17,
              // height: 200,
              // color: Colors.orange,
              child: Image.asset(
                'images/note.png',
                width: 60,
                // height: 50,
                // fit: BoxFit.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
