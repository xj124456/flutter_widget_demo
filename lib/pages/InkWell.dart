import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InkWellPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Flutter InkWell'),
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
          InkWell(
            onTap: () {
              print('点击了');
            },
            child: ListTile(
              title: Text('InkWell的子组件是ListTile'),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
          Divider(),
          InkWell(
            onTap: () {
              print('点击了');
            },
            highlightColor: Colors.blue,
            autofocus: true,
            child: Text('InkWell的子组件是Text'),
          ),
          Divider(),
          InkWell(
            onTap: () {
              print('必须要绑定事件，不然没效果');
            },
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            splashColor: Colors.red,
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: 200.0,
                height: 200.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(300.0))),
                padding: EdgeInsets.all(10.0),
                child: Text('InkWell的子组件是Container'),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
