import 'package:flutter/material.dart';
import 'package:formulario/pages/home_page.dart';
import 'package:formulario/pages/principal_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
        'principal': (BuildContext context) => PrincipalPage(),
      },
    );
  }
}