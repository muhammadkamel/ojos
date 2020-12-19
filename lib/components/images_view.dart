import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_2 = new Paint()
      ..color = Color(0xff2A357C)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_2 = Path();
    path_2.moveTo(0, size.height * 0.15);
    path_2.quadraticBezierTo(
        0, size.height * 0.01, size.width * 0.32, size.height * 0.012);
    path_2.lineTo(size.width * 0.90, 0);
    path_2.lineTo(size.width * 0.40, size.height);
    path_2.quadraticBezierTo(
        size.width * 0.20, size.height, size.width * 0.12, size.height);
    path_2.quadraticBezierTo(size.width * 0.00, size.height * 0.99,
        size.width * 0.01, size.height * 0.80);
    path_2.quadraticBezierTo(size.width * 0.01, size.height * 0.65, 0, 0);
    path_2.quadraticBezierTo(size.width * 0.01, size.height * 0.65, 0, 0);
    path_2.close();

    canvas.drawPath(path_2, paint_2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class ImagesView extends StatefulWidget {
  @override
  _ImagesViewState createState() => _ImagesViewState();
}

class _ImagesViewState extends State<ImagesView> {
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
        color: isActive ? Color(0xffF0B76E) : Colors.white,
        border: Border.all(
          width: 2,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
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
      // padding: EdgeInsets.zero,
      width: _screenSize.width * 0.96,
      // color: Colors.black,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(14),
              ),
            ),
            child: PageView(
              controller: _pageViewController,
              onPageChanged: (value) {
                isActive = true;
                index = value;
              },
              children: [
                Container(
                  width: _screenSize.width * 0.96,
                  height: 200,
                  margin: EdgeInsets.all(5),
                  // color: Colors.teal,
                  child: Stack(
                    children: [
                      Container(
                        width: _screenSize.width * 0.96,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Image.asset(
                            'images/woman_with_glass.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        child: Container(
                          width: 100,
                          // height: 170,
                          decoration: BoxDecoration(
                            color: Color(0xff2A357C),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'خصم',
                                style: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 12),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'ريال',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    '99',
                                    style: TextStyle(
                                      fontSize: 26,
                                      color: Color(0xffF0B76E),
                                      fontWeight: FontWeight.bold,
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
                ),
                Container(
                  // width: _screenSize.width * 0.80,
                  height: 200,
                  margin: EdgeInsets.all(5),
                  // color: Colors.teal,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'images/woman_with_glass.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  // width: _screenSize.width * 0.80,
                  height: 200,
                  margin: EdgeInsets.all(5),
                  // color: Colors.teal,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(22),
                    child: Image.asset(
                      'images/woman_with_glass.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  // width: _screenSize.width * 0.80,
                  height: 200,
                  margin: EdgeInsets.all(5),
                  // color: Colors.teal,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(22),
                    child: Image.asset(
                      'images/woman_with_glass.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Indicator
          Positioned(
            bottom: 20,
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
