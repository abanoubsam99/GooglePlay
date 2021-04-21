import 'package:finalgoogleplay/drawer.dart';
import 'package:flutter/material.dart';

class PlayProtectSettingsScreen extends StatefulWidget {
  @override
  _PlayProtectSettingsScreenState createState() =>
      _PlayProtectSettingsScreenState();
}

class _PlayProtectSettingsScreenState extends State<PlayProtectSettingsScreen> {
  bool isSwitched = true;
  bool isSwitched2 = true;

  void _onchangeswitch1() {
    return setState(() {
      if (isSwitched == false) {
        isSwitched = true;
      } else {
        showDialog(
            builder: (context) => Container(
              decoration:
                  BoxDecoration(
                      borderRadius: BorderRadius.circular(50)),
              child: new AlertDialog(
                title: new Text("Turn off app scanning?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                content: new Text(
                    "Play Protect won\'t be able to scan apps form outside of play",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal)),
                backgroundColor: Colors.white.withOpacity(0.13),
                elevation: 1,
                actions: <Widget>[
                  FlatButton(
                    child: new Text("CANCEL",
                        style: TextStyle(
                            color: Colors.teal,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  FlatButton(
                    child: new Text(
                      "TURN OFF",
                      style: TextStyle(
                          color: Colors.teal,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      setState(() {
                        return isSwitched = false;
                      });
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ), context: context);
      }
    });
  }

  void _onchangeswitch2() {
    return setState(() {
      if (isSwitched2 == false) {
        isSwitched2 = true;
      } else {
        isSwitched2 = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    Widget _itemsset1(
        {String title, String body, Function function, bool isSwitched}) {
      return InkWell(
        splashColor: Colors.grey.withOpacity(.3),
        highlightColor: Colors.grey.withOpacity(.2),
        onTap: function,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(body,
                        style: TextStyle(fontSize: 13, color: Colors.grey)),
                  ],
                )
              ],
            ),
            Switch(
              activeColor: Colors.teal,
              activeTrackColor: Colors.teal.withOpacity(.3),
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.grey.withOpacity(.7),
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  function();
                });
              },
            )
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.13),
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "Play Protect settings",
            style: TextStyle(
                fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          leading:IconButton(icon: Icon(Icons.arrow_back,size: 25,color: Colors.grey,),onPressed: (){Navigator.pop(context);},) ,

        ),
        drawer: customDrawer(context: context),
        body: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Row(
                children: <Widget>[
                  Text("General",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              _itemsset1(
                  title: "Scan apps with Play Protect",
                  body:
                      "Play Protect can scan this device\n and warn you about harmful apps",
                  isSwitched: isSwitched,
                  function: () {
                    _onchangeswitch1();
                  }),
              SizedBox(
                height: 30,
              ),
              _itemsset1(
                  title: "Improve harmful app detection",
                  body: "Send unKnown apps to Google for\n better detection  ",
                  isSwitched: isSwitched2,
                  function: () {
                    _onchangeswitch2();
                  }),
            ],
          ),
        ));
  }
}
