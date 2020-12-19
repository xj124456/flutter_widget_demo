import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InkWellPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter InkWell'),
      ),
      body: Container(
          child: InkWell(
        onTap: () {
          print('点击了');
        },
        child: Text('data'),
      )),
    );
  }
}
