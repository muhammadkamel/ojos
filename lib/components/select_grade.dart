import 'package:flutter/material.dart';

class SelectGrade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      width: _screenSize.width * 0.96,
      margin: EdgeInsets.symmetric(vertical: 10),

      // height: 220,
      // color: Colors.amber,
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 5),
              padding: EdgeInsets.only(bottom: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                // color: Colors.green,
                // color: Colors.white,
                border: Border.all(
                  width: 1.5,
                  color: Color(0xffE8E8E8),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/woman_wearing_glasses.png',
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: _screenSize.width * 0.40,
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 75,
                          height: 30,
                          padding: EdgeInsets.symmetric(horizontal: 3.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 1,
                              color: Color(0xffE8E8E8),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'اختيار',
                                textAlign: TextAlign.center,
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Color(0xffE5E5E5),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text('ستايل النساء'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 5),
              padding: EdgeInsets.only(bottom: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                // color: Colors.green,
                // color: Colors.white,
                border: Border.all(
                  width: 1.5,
                  color: Color(0xffE8E8E8),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/man_wearing_glasses.png',
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: _screenSize.width * 0.43,
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 75,
                          height: 30,
                          padding: EdgeInsets.symmetric(horizontal: 3.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 1,
                              color: Color(0xffE8E8E8),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'اختيار',
                                textAlign: TextAlign.center,
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Color(0xffF0B76E),
                                  border: Border.all(
                                    width: 0.5,
                                    color: Color(0xff2A357C),
                                  ),
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.check,
                                    size: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text('ستايل الرجال'),
                      ],
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
