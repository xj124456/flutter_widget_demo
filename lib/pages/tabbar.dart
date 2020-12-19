import 'package:flutter/material.dart';

class TabbarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Page();
}

class Page extends State<TabbarPage> with SingleTickerProviderStateMixin {
  List tabs = ['认购', '已认购', '未认购'];
  TabController _tabController;

  void initState() {
    super.initState(); //调用父类的initState
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StatefullWidget演示页',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tabbar'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          bottom: TabBar(
            controller: _tabController,
            tabs: tabs
                .map((e) => Tab(
                      text: e,
                    ))
                .toList(),
          ),
        ),
        body: TabBarView(
            controller: _tabController,
            children: tabs.map((e) {
              return Container(
                child: Text(e),
              );
            }).toList()),
      ),
    );
  }
}
