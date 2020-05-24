import 'package:flutter/cupertino.dart';
import 'package:prueba472/src/pages/login_screen.dart';
import 'package:prueba472/src/pages/splash_screen.dart';
import 'package:prueba472/src/pages/welcome_screen.dart';

class Routes {
  Map<String,WidgetBuilder> getRoutes(){
    return <String,WidgetBuilder>{
      '/'        : (BuildContext context) => SplashScreen(),
      '/welcome' : (BuildContext context) => WelcomeScreen(),
      '/login'   : (BuildContext context) => LoginScreen(),
    };
  }
}