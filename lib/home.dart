import 'package:finalgoogleplay/drawer.dart';
import 'package:finalgoogleplay/navigationscreens/AppsScreen.dart';
import 'package:finalgoogleplay/navigationscreens/BookScreen.dart';
import 'package:finalgoogleplay/navigationscreens/GamesScreen.dart';
import 'package:finalgoogleplay/navigationscreens/MovieScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool iswificonnected = false;
  bool isInternetOn = false;
  @override
  void initState() {
    super.initState();
  }
  int _currentIndex = 0;
 List _pages = [GamesScreen(), AppsScreen(), MovieScreen(), BookScreen()];
  @override
  Widget build(BuildContext context) {
    return
     Scaffold(
      drawer: customDrawer(context: context),
      body:   _pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(border:Border(top: BorderSide(color: Colors.white.withOpacity(0.1),width: 2.0,style: BorderStyle.solid)))
        ,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle( fontSize: 15,),
          unselectedLabelStyle: TextStyle( fontSize: 15,),
          unselectedItemColor: Colors.grey,
          selectedItemColor:((){
            if(_currentIndex<2){
              return Colors.teal;
            }
            else if(_currentIndex==2) {
              return Colors.pink;
            }
            else{
              return Colors.blueAccent;
            }
          }()),
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.videogame_asset,
                  size: 30,
                ),
                title: Text(
                  'Games',
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.apps,
                  size: 30,
                ),
                title: Text("Apps"
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.local_movies,
                  size: 30,
                ),
                title: Text("Movies"
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.book,
                  size: 30,
                ),
                title: Text("Books"
                ))
          ],
        ),
      ),
    );

  }

}


