import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ojos/shared/consts.dart';

class TestGlass extends StatefulWidget {
  @override
  _TestGlassState createState() => _TestGlassState();
}

class _TestGlassState extends State<TestGlass> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            alignment: Alignment.center,
            // width: _screenSize.width * 0.96,
            // color: Colors.deepOrange.shade100,
            child: Column(
              children: [
                SizedBox(height: 20),
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
                                // setState(() {
                                //   Navigator.pop(context);
                                // });
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
                                'جرب النظارة قبل الشراء',
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
                  // color: Colors.redAccent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(60),
                            ),
                            border: Border.all(
                                width: 0.5, color: Color(0xffE8E8E8)),
                          ),
                          child: Container(
                            // width: 120,
                            // height: 40,
                            padding: EdgeInsets.all(3),
                            child: Center(
                              child: Text(
                                '55 - 58',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff9796A1),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Center
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                            border: Border.all(
                                width: 0.5, color: Color(0xff2A357C)),
                          ),
                          child: Container(
                            // width: 120,
                            // height: 40,
                            padding: EdgeInsets.all(3),
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Color(0xffFBFBFB),
                              border: kBorderAll,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '49 - 54',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff2A357C),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(60),
                            ),
                            border: Border.all(
                                width: 0.5, color: Color(0xffE8E8E8)),
                          ),
                          child: Container(
                            // width: 120,
                            // height: 40,
                            padding: EdgeInsets.all(3),
                            child: Center(
                              child: Text(
                                '40 - 48',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff9796A1),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // Faces
                Container(
                  alignment: Alignment.centerRight,
                  width: _screenSize.width * 0.94,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  // color: Colors.red,
                  child: Text(
                    'حدد حجم الوجه',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff484848),
                    ),
                  ),
                ),
                Container(
                  width: _screenSize.width * 0.96,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      buildFaceSelector(
                        img: SvgPicture.asset('images/faces/face1.svg'),
                        isSelected: false,
                        label: 'وجه عريض',
                      ),
                      buildFaceSelector(
                        img: SvgPicture.asset('images/faces/face2.svg'),
                        isSelected: false,
                        label: 'وجه متوسط',
                      ),
                      buildFaceSelector(
                        img: SvgPicture.asset('images/faces/face2.svg'),
                        isSelected: true,
                        label: 'وجه نحيف',
                      ),
                    ],
                  ),
                ),
                // Man Face
                Container(
                  width: _screenSize.width * 0.96,
                  margin: EdgeInsets.all(5),
                  // height: 200,
                  child: Image.asset(
                    'images/faces/man_face.png',
                    fit: BoxFit.cover,
                  ),
                ),

                // Men Faces
                Container(
                  width: _screenSize.width * 0.96,
                  height: 100,
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: kRadiusLarge,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _menFacesBuilder(),
                      _menFacesBuilder(),
                      _menFacesBuilder(),
                      _menFacesBuilder(),
                      _menFacesBuilder(),
                    ],
                  ),
                ),
                // Bottom bar
                Container(
                  width: _screenSize.width,
                  height: 60,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 42,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: kRadiusMedium,
                          border: kBorderAll,
                        ),
                        child: Text(
                          'متابعة التسوق',
                          style: TextStyle(
                            color: Color(0xff484848),
                          ),
                        ),
                      ),
                      Container(
                        height: 42,
                        // alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xff2A357C),
                          borderRadius: kRadiusMedium,
                        ),
                        child: Row(
                          children: [
                            Text(
                              'التقاط صورة',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SvgPicture.asset(
                              'images/camera.svg',
                              color: Colors.white,
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
        ),
      ),
    ));
  }

  Widget _menFacesBuilder() {
    return Container(
      width: 50,
      height: 50,
      padding: EdgeInsets.all(1.3),
      // margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
          width: isSelected ? 1.3 : 0.5,
          color: isSelected ? Color(0xff2A357C) : Color(0xff909090),
        ),
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: ClipOval(
        child: Image.asset(
          'images/faces/man_face.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget buildFaceSelector({Widget img, bool isSelected, String label}) {
    return Expanded(
      child: Container(
        height: 210,
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 7),
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: kRadiusLarge,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // width: 120,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: kRadiusLarge,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xfffef0f0),
                    blurRadius: 7,
                    offset: Offset.zero,
                  )
                ],
                border: kBorderAll,
              ),
              child: Center(
                child: ClipOval(
                  child: img,
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                // color: Colors.greenAccent,
                child: Center(
                  child: Text(
                    label,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 76,
              padding: EdgeInsets.symmetric(horizontal: 1, vertical: 5),
              decoration: BoxDecoration(
                color: Color(0xffFBFBFB),
                borderRadius: kRadiusLarge,
                border: Border.all(
                  width: 0.5,
                  color: Color(0xffE8E8E8),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'اختار',
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(width: 5),
                  isSelected
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
          ],
        ),
      ),
    );
  }
}
