import 'package:flutter/material.dart';
import 'package:login/dua.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black),
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String value;
  String value1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        color: Colors.cyan[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.lightGreen, shape: BoxShape.circle),
              child: Center(
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Selamat Datang, Silahkan Masuk",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87),
                ),
                prefixIcon: Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.cyan,
                ),
                hintText: "Masukan Username",
                hintStyle: TextStyle(color: Colors.black87),
                labelText: "Username",
                labelStyle: TextStyle(color: Colors.black87),
              ),
              onChanged: (text) {
                value = text;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87),
                ),
                prefixIcon: Icon(
                  Icons.lock,
                  size: 40,
                  color: Colors.cyan,
                ),
                hintText: "Masukan Password",
                hintStyle: TextStyle(color: Colors.black87),
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.black87),
              ),
              onChanged: (text) {
                value1 = text;
              },
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              color: Colors.lightBlue,
              elevation: 5,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => dua(value: value, value1: value1),
                ));
              },
              child: Container(
                height: 50,
                child: InkWell(
                  splashColor: Colors.white,
                  child: Center(
                    child: Text(
                      "masuk",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
