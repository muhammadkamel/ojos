import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'pages/shopping/select_style.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  checkLang() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Almarai',
      ),
      title: 'Ojos',
      home: MySplash(),
    );
  }
}

class MySplash extends StatefulWidget {
  @override
  _MySplashState createState() => new _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: SelectStyle(),
      // image: Image.asset('images/splash_ojos.png'),
      imageBackground: AssetImage('images/splash.png'),
      backgroundColor: Color(0xff2A357C),
      styleTextUnderTheLoader: TextStyle(),
      photoSize: 200.0,
      useLoader: false,
      loaderColor: Colors.white,
    );
  }
}
