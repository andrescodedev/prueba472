import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            arrowLeft(context),
            imageLogin(),
            SizedBox(height: 30.0,),
            textLogin('Iniciar Sesión',30.0,FontWeight.bold,Color.fromRGBO(116, 70, 16, 1.0),),
            SizedBox(height: 150.0,),
            buttomLogin(),
          ],
        ),
      ),
    );
  }

  Widget arrowLeft(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Icon(
          Icons.arrow_back_ios,
          color: Color.fromRGBO(232, 139, 31, 1.0),
          size: 20.0,
        ),
      ),
      alignment: Alignment.topLeft,
    );
  }

  Widget imageLogin() {
    return Image(
      image: AssetImage('assets/images/login.png'),
    );
  }

  Widget textLogin(String text,double fontSize,FontWeight weightText,Color colorText) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: weightText,
        color: colorText,
      ),
    );
  }

  Widget buttomLogin() {
    return RaisedButton(
      child: textLogin('Iniciar sesión', 17.0, null, Colors.white),
      color: Color.fromRGBO(232, 139, 31, 1.0),
      padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      onPressed: (){},
    );
  }
}
