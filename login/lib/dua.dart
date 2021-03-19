import 'package:flutter/material.dart';

class dua extends StatelessWidget {
  String value;
  String value1;
  dua({this.value, this.value1});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "screen two",
        ),
      ),
      body: Center(
        child: Text("Anda Login Sebagai : $value \n  Password : $value1,"),
      ),
    );
  }
}
