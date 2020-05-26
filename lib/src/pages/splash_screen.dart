import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 10)).then((_) => {
      Navigator.pushReplacementNamed(context, '/welcome'),
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(232, 139, 31, 1.0),
              Color.fromRGBO(116, 70, 16, 1.0),
            ],
            begin: Alignment(1.0,1.0),
            end: Alignment(1.0,1.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            logo(),
            faobaText(),
          ],
        ),
      ),
    );
  }

  Widget logo() {
    return Image(
      image: AssetImage('assets/images/booking_agent_logo.png'),
    );
  }

  Widget faobaText() {
    return Text(
      'From Faoba Technologies',
      style: TextStyle(
        color: Color.fromRGBO(232, 139, 31, 1.0),
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
