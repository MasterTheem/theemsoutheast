import 'package:flutter/material.dart';
import 'package:theemsoutheast/normal_dialog.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String name, user, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('name = $name, user = $user, password = $password');
          if (name == null ||
              name.isEmpty ||
              user == null ||
              user.isEmpty ||
              password == null ||
              password.isEmpty) {
            normailDialog(context, 'มีช่องว่าง ? กรุณากรอก');
          } else {}
        },
        child: Icon(Icons.cloud_upload),
      ),
      appBar: AppBar(
        title: Text('สมัครสมาชิก'),
      ),
      body: Center(
        child: Column(
          children: [
            buildTextFieldName(),
            buildTextFieldUser(),
            buildTextFieldPassword()
          ],
        ),
      ),
    );
  }

  Container buildTextFieldName() => Container(
        margin: EdgeInsets.only(top: 20),
        child: TextField(
          onChanged: (value) => name = value.trim(),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.contact_mail),
            labelText: 'name',
            border: OutlineInputBorder(),
          ),
        ),
        width: 250,
      );

  Container buildTextFieldUser() => Container(
        margin: EdgeInsets.only(top: 20),
        child: TextField(
          onChanged: (value) => user = value.trim(),
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
          onChanged: (value) => password = value.trim(),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.contact_mail),
            labelText: 'password',
            border: OutlineInputBorder(),
          ),
        ),
        width: 250,
      );
}
