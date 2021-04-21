import 'package:finalgoogleplay/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  int _currentIndex = 1;
  bool isSwitched = true;
  bool isSwitched2 = true;

  void showAlert(
      {String title,
      String titleR1,
      String titleR2,
      String titleR3,
      String actionTitle}) {
    return setState(() {
      showDialog(
        builder: (context) => StatefulBuilder(builder: (context, setState) {
          return new Dialog(
            backgroundColor: Colors.transparent,
            elevation: 3,
            child: Container(
                height: 285,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:  Colors.grey[800],

                ),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    textDirection: TextDirection.ltr,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(title,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                     Column(
                       textDirection: TextDirection.ltr,
                       crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       RadioListTile(
                         title: Text(
                           titleR1,
                           style: TextStyle(color: Colors.white, fontSize: 18),
                         ),
                         groupValue: _currentIndex,
                         subtitle: Text("Data charges may apply",
                             style: TextStyle(color: Colors.grey, fontSize: 15)),
                         value: 1,
                         activeColor: Colors.teal,
                         onChanged: (val) {
                           setState(() {
                             _currentIndex = val;
                           });
                         },
                       ),
                       RadioListTile(
                         title: Text(
                           titleR2,
                           style: TextStyle(color: Colors.white, fontSize: 18),
                         ),
                         groupValue: _currentIndex,
                         value: 2,
                         activeColor: Colors.teal,
                         onChanged: (val) {
                           setState(() {
                             _currentIndex = val;
                           });
                         },
                       ),
                       RadioListTile(
                         title: Text(
                           titleR3,
                           style: TextStyle(color: Colors.white, fontSize: 18),
                         ),
                         groupValue: _currentIndex,
                         value: 3,
                         activeColor: Colors.teal,
                         onChanged: (val) {
                           setState(() {
                             _currentIndex = val;
                           });
                         },
                       ),
                     ],
                     ),

               Row(
                   textDirection: TextDirection.rtl,
                   children: <Widget>[
                     FlatButton(
                              child: new Text(
                                actionTitle,
                                style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                   ],
               ),
                    ],
                  ),
                ),
              ),

          );
        }), context: context,
      );
    });
  }

  void showAlert2(
      {String title,
      String content1,
      String actionTitle,
      String action2Title}) {
    return setState(() {
      showDialog(
        builder: (context) => StatefulBuilder(builder: (context, setState) {
          return new AlertDialog(
            title: new Text(title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            content: new Text(content1,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal)),
            elevation: 1,
            actions: <Widget>[
              FlatButton(
                child: new Text(
                  actionTitle,
                  style: TextStyle(
                      color: Colors.teal,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: new Text(
                  action2Title,
                  style: TextStyle(
                      color: Colors.teal,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        }), context: context,
      );
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

  Widget _itemsset2(
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
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.13),
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "Settings",
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
              _itemsset2(
                title: "Notifications",
                body: "Manage notification settings",
              ),
              SizedBox(
                height: 20,
              ),
              _itemsset2(
                  title: "App download Preference",
                  body: "Over Wi-Fi only",
                  function: () {
                    showAlert(
                        title: "App download Preference",
                        titleR1: "Over any network",
                        titleR2: "Over Wi-Fi only",
                        titleR3: "Ask me every time",
                        actionTitle: "Done");
                  }),
              SizedBox(
                height: 20,
              ),
              _itemsset2(
                  title: "Auto-update apps",
                  body: "Auto-update apps over Wi-fi only",
                  function: () {
                    showAlert(
                        title: "Auto-update apps",
                        titleR1: "Over any network",
                        titleR2: "Over Wi-Fi only",
                        titleR3: "Don\'t auto-update apps",
                        actionTitle: "Done");
                  }),
              SizedBox(
                height: 20,
              ),
              _itemsset2(
                  title: "Auto-play videos",
                  body: "Auto-play videos over at any time.",
                  function: () {
                    showAlert(
                        title: "Auto-play videos",
                        titleR1: "Auto-play videos at any time",
                        titleR2: "Auto-play videos over Wi-Fi only",
                        titleR3: "Don\'t Auto-play videos",
                        actionTitle: "Done");
                  }),
              SizedBox(
                height: 20,
              ),
              _itemsset2(
                  title: "Theme",
                  body: "Dark",
                  function: () {
                    showAlert(
                        title: "Theme",
                        titleR1: "Light",
                        titleR2: "Dark",
                        titleR3: "Set by Battery Saver",
                        actionTitle: "CANCEL");
                  }),
              SizedBox(
                height: 20,
              ),
              _itemsset1(
                  title: "Add icon to Home Screen",
                  body: "For new apps",
                  isSwitched: isSwitched2,
                  function: () {
                    _onchangeswitch2();
                  }),
              SizedBox(
                height: 20,
              ),
              _itemsset2(
                title: "Clear local search history ",
                body: "Remove searches you have performed from this\ndevice ",
              ),
              SizedBox(
                height: 20,
              ),
              _itemsset2(
                title: "Google Play performances",
                body:
                    "Remove history in your Wishlist, the Beta program,\nand other lists",
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Text("User controls",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              _itemsset2(
                title: "Parental control",
                body: "off",
              ),
              SizedBox(
                height: 20,
              ),
              _itemsset2(
                title: "Require authentication for purchases",
                body: "For all purchases through Google Play on this device",
              ),
              SizedBox(
                height: 20,
              ),
              _itemsset2(
                title: "Google Play Instant",
                body: "Use apps and games without installation",
              ),
              SizedBox(
                height: 20,
              ),
              _itemsset1(
                  title: "Internal app sharing ",
                  body:
                      "Download and install test versions of apps\nthat are shared with you",
                  isSwitched: isSwitched2,
                  function: () {
                    showAlert2(
                        title: "Turn on internal app sharing",
                        content1:
                            "You\'ll be able to download and install versions of apps that are shared with you.Apps Shared in this way may not conform with Google Play policies or Terms of Service.",
                        actionTitle: "CANCEL",
                        action2Title: "TURN ON ");
                  }),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Text("About",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              _itemsset2(
                title: "Open source Licenses",
                body: "License details for open source software",
              ),
              SizedBox(
                height: 20,
              ),
              _itemsset2(
                title: "Play Store version",
                body: "Version:21.6.13-21 [0] [PR] 327913455",
              ),
              SizedBox(
                height: 20,
              ),
              _itemsset2(
                title: "Play protect certification",
                body: "Device is certified",
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
