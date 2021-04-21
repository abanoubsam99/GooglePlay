import 'package:finalgoogleplay/drawerscreen/Myapps/Installed.dart';
import 'package:finalgoogleplay/drawerscreen/Myapps/Library.dart';
import 'package:finalgoogleplay/drawerscreen/Myapps/Updates.dart';
import 'package:finalgoogleplay/drawer.dart';
import 'package:flutter/material.dart';

class MyApps extends StatefulWidget {
  @override
  _MyAppsState createState() => _MyAppsState();
}

class _MyAppsState extends State<MyApps> with SingleTickerProviderStateMixin {
  List<String> _tabs = ['Updates', 'Installed', 'Library'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: new Scaffold(
        backgroundColor: Colors.white.withOpacity(0.13),
        drawer: customDrawer(context: context),
        body: new NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              new SliverAppBar(
                title: Text("My apps & games"),
                leading:IconButton(icon: Icon(Icons.arrow_back,size: 25,color: Colors.grey,),onPressed: (){
                  Navigator.pop(context);
                  },) ,
                floating: true,
                pinned: true,
                snap:
                true, // <--- this is required if I want the application bar to show when I scroll up
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(50),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(border:Border(bottom: BorderSide(color: Colors.white.withOpacity(0.1),width: 2.0,style: BorderStyle.solid))),
                      child: TabBar(
                        tabs:
                        _tabs.map((String name) => Tab(text: name)).toList(),
                        labelColor: Colors.teal,
                        indicatorColor: Colors.teal,
                        unselectedLabelColor: Colors.grey,
                        isScrollable: true,
                        labelStyle: TextStyle(
                          color: Colors.teal,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        unselectedLabelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        indicatorSize: TabBarIndicatorSize.tab,
                      ),
                    ),
                  ),
                ),
              ),
            ];
          },
          body: new TabBarView(
            children: <Widget>[Updates(context: context), Installed(context: context), Library(context: context)],
          ),
        ),
      ),
    );
  }
}
