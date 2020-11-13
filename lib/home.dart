import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theemsoutheast/register.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: RadialGradient(
          center: Alignment(0, -0.5),
          radius: 1.0,
          colors: [Colors.white, Colors.lime],
        )),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildlogo(),
              buildText(),
              buildTextFieldUser(),
              buildTextFieldPassword(),
              buildButtomLogin(),
              buildTextButton()
            ],
          ),
        ),
      ),
    );
  }

  TextButton buildTextButton() =>
      TextButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Register(),)), child: Text('New Register'));

  Container buildButtomLogin() {
    return Container(
      width: 250,
      margin: EdgeInsets.only(top: 20),
      child: ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.cloud_upload),
          label: Text('Login')),
    );
  }

  Container buildTextFieldUser() => Container(
        margin: EdgeInsets.only(top: 20),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.contact_mail),
            labelText: 'user',
            border: OutlineInputBorder(),
          ),
        ),
        width: 250,
      );

  Container buildTextFieldPassword() => Container(
        margin: EdgeInsets.only(top: 20),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock),
            labelText: 'Password',
            border: OutlineInputBorder(),
          ),
        ),
        width: 250,
      );

  Text buildText() => Text('theem southeast',
      style: GoogleFonts.montserrat(
        textStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400,
            color: Colors.blueGrey[500],
            fontStyle: FontStyle.italic),
      ));

  Container buildlogo() {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      width: 120,
      child: Image.asset('images/Logo.png'),
    );
  }
}
