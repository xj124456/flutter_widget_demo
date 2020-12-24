import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Flutter Icon'),
            Text(
              'Flutter每周一组件(by DX前端)',
              style: TextStyle(
                fontSize: 12.0,
              ),
            )
          ],
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.ac_unit),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('带点击事件的Icon'),
              Divider(),
              InkWell(
                child: Icon(Icons.baby_changing_station),
                onTap: () {
                  print('点击了');
                },
              )
            ],
          ),
          Icon(Icons.baby_changing_station),
          Icon(Icons.cached_outlined),
          Icon(Icons.dangerous),
          Icon(Icons.east),
          Icon(Icons.face),
          Icon(Icons.g_translate),
          Icon(Icons.hail),
          Icon(Icons.icecream),
          Icon(Icons.format_align_justify),
        ],
      )),
    );
  }
}
