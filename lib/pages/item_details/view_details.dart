import 'package:flutter/material.dart';
import 'package:ojos/pages/item_details/page_view_items.dart';

class ViewDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
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
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff111719),
                              size: 18,
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
                                  color: Color(0xff484848),
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
                  height: 600,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(14),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      PageViewItems(),
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
}
