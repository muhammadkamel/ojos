import 'package:flutter/material.dart';
import 'package:ojos/widgets/glas_glas.dart';

class ViewGlasses extends StatefulWidget {
  @override
  _ViewGlassesState createState() => _ViewGlassesState();
}

class _ViewGlassesState extends State<ViewGlasses> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      margin: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GlasGlass(assetImage: AssetImage('images/woman-with-beret.png')),
          SizedBox(width: 7),
          GlasGlass(assetImage: AssetImage('images/woman-with-sungalss.png')),
        ],
      ),
    );
  }
}
