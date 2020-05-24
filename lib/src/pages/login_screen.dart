import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FocusNode _focusNodePassword = FocusNode();
  GlobalKey<FormState> _formKey = GlobalKey();

  String _email = '';
  String _password = '';

  @override
  void dispose() {
    _focusNodePassword.dispose();
    super.dispose();
  }

  void _dataSubmit() {
    FocusScope.of(context).unfocus();
    final bool isValid = _formKey.currentState.validate();
    if(isValid){
      print('Email: $_email , password: $_password');
    }
  }

  String validateEmail(String email) {
    if (email.isNotEmpty && email.contains('@')) {
      _email = email;
      return null;
    } else {
      return 'Invalid email';
    }
  }

  String validatePassword(String password) {
    if (password.isNotEmpty && password.length > 4) {
      _password = password;
      return null;
    } else {
      return 'Invalid pasword';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: baseContainer(),
      ),
    );
  }

  Widget baseContainer() {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                arrowLeft(context),
                imageLogin(),
                SizedBox(
                  height: 30.0,
                ),
                textLogin(
                  'Iniciar Sesión',
                  30.0,
                  FontWeight.bold,
                  Color.fromRGBO(116, 70, 16, 1.0),
                ),
                SizedBox(
                  height: 30.0,
                ),
                validateForm(),
                SizedBox(
                  height: 30.0,
                ),
                buttomLogin(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget validateForm() {
    return ConstrainedBox(
      constraints: BoxConstraints(minWidth: 200.0, maxWidth: 300.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            emailTextField(),
            SizedBox(
              height: 20.0,
            ),
            passwordTextField(),
          ],
        ),
      ),
    );
  }

  Widget emailTextField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      keyboardAppearance: Brightness.dark,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: 'example@domain.com',
        labelText: 'Email',
      ),
      onFieldSubmitted: (String text) {
        _focusNodePassword.nextFocus();
      },
      validator: validateEmail,
    );
  }

  Widget passwordTextField() {
    return TextFormField(
      obscureText: true,
      focusNode: _focusNodePassword,
      keyboardAppearance: Brightness.dark,
      textInputAction: TextInputAction.send,
      decoration: InputDecoration(
        hintText: '*******',
        labelText: 'Password',
      ),
      onFieldSubmitted: (String text) {
        _dataSubmit();
      },
      validator: validatePassword,
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

  Widget textLogin(
      String text, double fontSize, FontWeight weightText, Color colorText) {
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
      onPressed: _dataSubmit,
    );
  }
}
