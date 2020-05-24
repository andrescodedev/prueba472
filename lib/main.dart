import 'package:flutter/material.dart';
import 'package:prueba472/src/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(232, 139, 31, 1.0),
        cursorColor: Color.fromRGBO(232, 139, 31, 1.0),
      ),
      initialRoute: '/',
      routes: Routes().getRoutes(),
    );
  }
}
