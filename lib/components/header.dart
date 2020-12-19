import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      width: _screenSize.width * 0.96,
      // color: Colors.redAccent,
      margin: EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            overflow: Overflow.visible,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.9,
                    color: Color(0xffE8E8E8),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(14),
                  ),
                  color: Colors.white,
                ),
                child: Icon(
                  Icons.notifications_none_outlined,
                  color: Color(0xff484848),
                  size: 37,
                ),
              ),
              Positioned(
                top: -3,
                left: -3,
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    color: Color(0xffF0B76E),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      '5',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SvgPicture.asset(
            'images/brand logo.svg',
            fit: BoxFit.cover,
            width: 80,
            height: 34,
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.9,
                color: Color(0xffE8E8E8),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(14),
              ),
              color: Colors.white,
            ),
            child: Icon(
              Icons.dehaze,
              size: 30,
              color: Color(0xff484848),
            ),
          ),
        ],
      ),
    );
  }
}
