import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String title;
  final String url;
  const ListItem({Key key, @required this.title, @required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, url);
          },
          child: ListTile(
            title: Text(title),
            trailing: Icon(Icons.chevron_right),
          ),
        ),
        Divider(
          height: 0,
        ),
      ],
    );
  }
}
