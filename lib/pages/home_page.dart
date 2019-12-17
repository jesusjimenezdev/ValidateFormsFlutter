import 'package:flutter/material.dart';
import 'package:formulario/pages/login_page.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulario"),
      ),
      body: LoginPage(),
    );
  }
}