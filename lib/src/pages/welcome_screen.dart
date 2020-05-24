import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            imageWelcome(),
            stackWelcome(),
          ],
        ),
      ),
    );
  }

  Widget imageWelcome() {
    return Image(
      image: AssetImage('assets/images/welcome.png'),
    );
  }

  Widget stackWelcome() {
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 360.0,
        ),
        Positioned(
          child: containerWelcome(),
          bottom: -30.0,
          left: -10.0,
          right: -10.0,
        ),
      ],
    );
  }

  Widget containerWelcome() {
    return Container(
      width: 360.0,
      height: 350.0,
      decoration: ShapeDecoration(
        shape: BeveledRectangleBorder(
          side: BorderSide(
            color: Color.fromRGBO(232, 139, 31, 1.0),
            width: 3.0,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30.0,
          ),
          textWelcome(),
          SizedBox(
            height: 30.0,
          ),
          buttomAccountLogin(
              Colors.white, 
              Color.fromRGBO(232, 139, 31, 1.0),
              Color.fromRGBO(232, 139, 31, 1.0),
              'Crear Cuenta',
          ),
          SizedBox(
            height: 30.0,
          ),
          textAccount(),
          SizedBox(
            height: 30.0,
          ),
          buttomAccountLogin(
            Color.fromRGBO(232, 139, 31, 1.0), 
            Colors.white,
            Color.fromRGBO(232, 139, 31, 1.0),
            'Iniciar Sesión',
          ),
              
        ],
      ),
    );
  }

  Widget textWelcome() {
    return Text(
      'Bienvenidos',
      style: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(116, 70, 16, 1.0),
      ),
    );
  }

  Widget buttomAccountLogin(Color textColor, Color buttomColor,Color borderColor,String textButtom) {
    return RaisedButton(
      color: buttomColor,
      padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
        side: BorderSide(
          color: borderColor,
        ),
      ),
      child: Text(
        textButtom,
        style: TextStyle(
          fontSize: 17.0,
          color: textColor,
        ),
      ),
      onPressed: () {
        if(textButtom == 'Iniciar Sesión'){
          Navigator.pushNamed(context, '/login');
        }
      },
    );
  }

  Widget textAccount() {
    return Text(
      '¿Tienes una cuenta?',
      style: TextStyle(
        fontSize: 12.0,
        color: Color.fromRGBO(166, 169, 170, 1.0),
      ),
    );
  }
}
