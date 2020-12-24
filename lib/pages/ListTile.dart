import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Flutter ListTile'),
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
          ListTile(
            leading: Icon(Icons.graphic_eq),
            title: Text('这是主标题'),
            trailing: Icon(Icons.chevron_right),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.waves),
            title: Text('这是主标题'),
            subtitle: Text('这是副标题'),
            trailing: Icon(Icons.chevron_right),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.ballot),
            title: Text('这是主标题'),
            // isThreeLine: true, //文字超出后会默认换行
            subtitle: Text('这是副标题两行，这是副标题两行，这是副标题两行，这是副标题两行，这是副标题两行'),
            trailing: Icon(Icons.chevron_right),
          ),
          Divider(),
        ],
      )),
    );
  }
}
