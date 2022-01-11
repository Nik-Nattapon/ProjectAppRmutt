import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'สมัครสมาชิก',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                emailForm(),
                SizedBox(
                  height: 16.0,
                ),
                passwordForm(),
                SizedBox(
                  height: 16.0,
                ),
                passwordConfirmForm(),
                SizedBox(
                  height: 16.0,
                ),
                submitButton(),
              ],
            ),
          ),
        ));
  }

  Widget emailForm() => Container(
        width: 250.0,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.account_box),
            labelStyle: TextStyle(color: MyStyle().darkColor),
            labelText: 'อีเมล :',
            hintText: 'กรอกอีเมล',
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().darkColor)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().primaryColor)),
          ),
        ),
      );
  Widget passwordForm() => Container(
        width: 250.0,
        child: TextField(
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock),
            labelStyle: TextStyle(color: MyStyle().darkColor),
            labelText: 'รหัสผ่าน :',
            hintText: 'กรอกรหัสผ่าน',
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().darkColor)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().primaryColor)),
          ),
        ),
      );
  Widget passwordConfirmForm() => Container(
        width: 250.0,
        child: TextField(
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock),
            labelStyle: TextStyle(color: MyStyle().darkColor),
            labelText: 'ยืนยันรหัสผ่าน :',
            hintText: 'กรอกรหัสผ่านอีกครั้ง',
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().darkColor)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().primaryColor)),
          ),
        ),
      );
  Widget submitButton() => Container(
        width: 250.0,
        child: RaisedButton(
          color: Colors.red.shade900,
          onPressed: () {},
          child: Text(
            'ยืนยัน',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
}

class MyStyle {
  Color darkColor = Colors.blue.shade900;
  Color primaryColor = Colors.green;
}
