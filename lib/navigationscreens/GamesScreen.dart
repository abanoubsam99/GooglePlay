import 'package:finalgoogleplay/SearchScreen.dart';
import 'package:finalgoogleplay/drawer.dart';
import 'package:finalgoogleplay/navigationscreens/Widgets_items/Games_Widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:avatar_glow/avatar_glow.dart';

class GamesScreen extends StatefulWidget {
  @override
  _GamesScreenState createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  List<String> _tabs = ['For you', 'Top charts', 'Premium','Categories','Family','Editors\'Choice'];
  String title="Search for apps & games";

  stt.SpeechToText _speech;
  bool _isListening = false;
  String _text = 'Try saying something';
  double _confidence = 1.0;

  void _listen() async {
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (val) => print('onStatus: $val'),
        onError: (val) => print('onError: $val'),
      );
      if (available) {
        setState(() => _isListening = true);
        _speech.listen(
          onResult: (val) => setState(() {
            _text = val.recognizedWords;
            if (val.hasConfidenceRating && val.confidence > 0) {
              _confidence = val.confidence;
            }
          }),
        );
      }
    } else {
      setState(() => _isListening = false);
      _speech.stop();
    }
  }

  void showVoice() {
    return setState(() {
      showDialog(
        builder: (context) => StatefulBuilder(builder: (context, setState) {
          return new Dialog(
            backgroundColor: Colors.transparent,
            elevation: 3,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  textDirection: TextDirection.ltr,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text("Google",style: TextStyle(fontSize: 30,color: Colors.black),),
                     AvatarGlow(
                      animate: _isListening,
                      glowColor: Colors.indigoAccent,
                      endRadius: 75.0,
                      duration: const Duration(milliseconds: 2000),
                      repeatPauseDuration: const Duration(milliseconds: 100),
                      repeat: true,
                      child: FloatingActionButton(
                        backgroundColor: Colors.indigoAccent,
                        onPressed: (){setState(() {
                          _listen();
                        });},
                        child: Icon(_isListening ? Icons.mic : Icons.mic_none,color: Colors.white),
                      ),
                    ),
                    SingleChildScrollView(
                      reverse: true,
                      child: Container(
                        child: Text(
                          _text,
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50,),
                    Text("English (United States)",style: TextStyle(fontSize: 14,color: Colors.grey),),
                  ],
                ),
              ),
            ),

          );
        }), context: context,
      );
    });
  }

  void showAlert( ) {
    return setState(() {
      showDialog(
        builder: (context) => StatefulBuilder(builder: (context, setState) {
          return new Dialog(
            elevation: 3,
            child: Container(
              height: MediaQuery.of(context).size.height/2+70,
              width: MediaQuery.of(context).size.width+30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  textDirection: TextDirection.ltr,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.close,size: 25,color: Colors.white,), onPressed: (){Navigator.pop(context);}),
                        SizedBox(width:  50,),
                        Text("Google",style: TextStyle(fontSize: 35,color: Colors.white,fontWeight: FontWeight.bold),)
                      ],),

                    Row(children: <Widget>[
                      Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage('https://img.freepik.com/free-vector/young-man-with-beard-avatar-character-vector-illustration-design_24908-61755.jpg?size=338&ext=jpg&ga=GA1.2.413067361.1576452753'),
                                fit: BoxFit.fill
                            ),
                          )
                      ),
                      SizedBox(width: 15,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Abanoub Samy",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                          Text("abanoubTestApp@gmail.com",style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.bold),),

                        ],)
                    ],),
                    Center(
                      child: OutlineButton(
                        child: Text('Manage your Google Account',
                            style:
                            TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        onPressed: () {},
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),//callback when button is clicked
                        borderSide: BorderSide(
                          color: Colors.grey, //Color of the border
                          style: BorderStyle.solid, //Style of the border
                          width: 1, //width of the border
                        ),
                      ),
                    ),

                    Divider(color: Colors.grey,),

                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Row(children: <Widget>[
                        Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage('https://img.freepik.com/free-vector/cute-unshod-little-girl-character-hat-holding-flower-pastel-blue-background_131817-10.jpg?size=338&ext=jpg&ga=GA1.2.413067361.1576452753'),
                                  fit: BoxFit.fill
                              ),
                            )
                        ),
                        SizedBox(width: 15,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Second Account",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                            Text("abanoubTest2@gmail.com",style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.bold),),
                          ],)
                      ],),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.person_add,color: Colors.grey,size: 20,),
                          SizedBox(width: 15,),
                          Text("Add another account",style: TextStyle(fontSize: 13,color: Colors.white,fontWeight: FontWeight.bold),),
                        ],),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.person_outline,color: Colors.grey,size: 20,),
                          SizedBox(width: 15,),
                          Text("Manage accounts on this device",style: TextStyle(fontSize: 13,color: Colors.white,fontWeight: FontWeight.bold),),
                        ],),
                    ),
                    Divider(color: Colors.grey,),

                    Center(child: Text("Privacy . Terms of Service",style: TextStyle(fontSize: 13,color: Colors.grey,fontWeight: FontWeight.bold),)),
                  ],
                ),
              ),
            ),

          );
        }), context: context,
      );
    });
  }

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
  }

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

    return DefaultTabController(
      length: _tabs.length,
      child: new Scaffold(
        key: _globalKey,
        backgroundColor: Colors.black87.withOpacity(.3),
        drawer: customDrawer(context: context),
        body: new NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              new SliverAppBar(
                title: Center(
                  child: Container(
                    width:MediaQuery.of(context).size.width-50 ,
                    height:50 ,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[800]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8,top: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            IconButton(icon: Icon(Icons.menu,size: 25,color: Colors.grey,), onPressed: (){
                                _globalKey.currentState.openDrawer();
                            }),
                            InkWell(
                                onTap: (){
                                  Navigator.push(context,MaterialPageRoute(builder: (context) => SearchScreen(  titles: title, )), );

                                },
                                child: Text("Search for apps & g...",style: TextStyle(fontSize: 17,color: Colors.grey),)),
                            IconButton(icon: Icon(Icons.mic_none,size: 25,color: Colors.grey,), onPressed: (){
                                showVoice();
                            }),
                            InkWell(
                              onTap: (){
                                showAlert();
                              },
                              child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: NetworkImage('https://img.freepik.com/free-vector/young-man-with-beard-avatar-character-vector-illustration-design_24908-61755.jpg?size=338&ext=jpg&ga=GA1.2.413067361.1576452753'),
                                        fit: BoxFit.fill
                                    ),
                                  )
                              ),
                            )

                  ],),

                    ),),
                ),
                centerTitle: true,
                floating: true,
                automaticallyImplyLeading: false, // Don't show the leading butto
                pinned: true,
                snap:
                true, // <--- this is required if I want the application bar to show when I scroll up
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(50.5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: BoxDecoration(border:Border(bottom: BorderSide(color: Colors.white.withOpacity(0.1),width: 2.0,style: BorderStyle.solid)))
                      ,
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
                          fontWeight: FontWeight.normal,
                        ),
                        unselectedLabelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),

                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorWeight: 2.5,

                      ),
                    ),
                  ),
                ),
              ),
            ];
          },
          body: new TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[Foryou(),Topcharts(),Premium(),Categories(),Family(),EditorsChoice()],
          ),
        ),
      ),
    );
  }
}

