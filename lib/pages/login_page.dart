import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
        key: formkey,
        child: Column(
          children: <Widget>[
            emailField(),
            passWordField(),
            SizedBox(height: 20),
            submitField()
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "email@email.com"
      ),
      validator: (value) {
        if(!value.contains('@')) {
          return "Email invalido";
        }
      },
      onSaved: (value) {

      },
    );
  }

  Widget passWordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Password"
      ),
      validator: (value) {
        if(value.length < 6) {
          return "Password invalida";
        }
      },
      onSaved: (value) {
        
      },
    );
  }

  Widget submitField() {
    return RaisedButton(
      color: Colors.blue,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(18.0),
      ),
      child: Text("Enviar"),
      onPressed: () {
        if(formkey.currentState.validate()) {
          Navigator.pushNamed(context, 'principal');
        }
      },
    );
  }
}