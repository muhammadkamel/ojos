import 'package:flutter/material.dart';

const kBoxShadow = [
  BoxShadow(
    color: Color(0xffeeeeee),
    blurRadius: 10,
    offset: Offset(0.0, 5.0),
  )
];

const kMainColor = Color(0xff2A357C);
const kFontColor = Color(0xff484848);
const kBorderColor = Color(0xffe8e8e8);
const kBorderAll = Border(
  left: BorderSide(
    width: 1,
    color: kBorderColor,
  ),
  top: BorderSide(
    width: 1,
    color: kBorderColor,
  ),
  right: BorderSide(
    width: 1,
    color: kBorderColor,
  ),
  bottom: BorderSide(
    width: 1,
    color: kBorderColor,
  ),
);

const kRadiusSmall = BorderRadius.all(
  Radius.circular(7),
);

const kRadiusMedium = BorderRadius.all(
  Radius.circular(10),
);

const kRadiusLarge = BorderRadius.all(
  Radius.circular(20),
);
