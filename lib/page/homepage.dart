import 'package:flutter/material.dart';
import 'package:wathsapp_clone/page/thems.dart';
import 'package:wathsapp_clone/data/menu_items.dart';
import 'package:wathsapp_clone/model/menu_items.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Themes appTheme = Themes();
  PopupMenuItem<MenuItem> buildItem(MenuItem item) => PopupMenuItem(value: item ,child: Text(item.text, style: TextStyle(color: Colors.white),),);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              padding: const EdgeInsets.all(0),
              icon: Icon(Icons.search, color: Color(appTheme.inActionButtonColor),),
              onPressed: () {
                // handle the press
              },
            ),
            PopupMenuButton<MenuItem>(
              color: const Color(0xFF374248),
              itemBuilder: (context) => [
                ...MenuItems.items.map(buildItem)
              ]
            )
          ],
          title: Text(
            "WhatsApp",
            style: TextStyle(
              color: Color(appTheme.inActionButtonColor),
              fontSize: appTheme.header1
            ),
          ),
          backgroundColor: Color(appTheme.appBarColor),
          bottom: TabBar(
            indicatorWeight: 3,
            indicatorColor: Color(appTheme.actionButtonColor),
            labelColor: Color(appTheme.actionButtonColor),
            unselectedLabelColor: Color(appTheme.inActionButtonColor),
            padding: EdgeInsets.all(0),
            tabs: [
              ...CscTabs.itmes.map((e) => Tab(child: Text(e.text),))
            ],
          )
        ),
        body: TabBarView(
          children: [
            Container(color: Colors.red,),
            Container(color: Colors.green,),
            Container(
              color: Colors.yellow,
            ),

          ],
        ),
      ),
    );
     
    
  }
}