import 'package:flutter/material.dart';
import 'package:Demo/widget/list_item.dart';

class IndexPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Page();
}

class Page extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DX前端 - Flutter每周一组件'),
      ),
      body: Container(
        child: SingleChildScrollView(
            child: Column(
          children: [
            ListItem(title: 'InkWell', url: '/inkwell'),
            ListItem(title: 'SingleChildScrollView', url: '/inkwell'),
            ListItem(title: 'ListTile', url: '/listtile'),
            ListItem(title: 'Icon', url: '/inkwell'),
            ListItem(title: 'Container', url: '/inkwell'),
            ListItem(title: 'AppBar', url: '/inkwell'),
            ListItem(title: 'Scaffold', url: '/inkwell'),
            ListItem(title: 'Center', url: '/center'),
            ListItem(title: 'Divider', url: '/divider'),
          ],
        )),
      ),
    );
  }
}
