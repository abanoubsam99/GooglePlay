import 'dart:io';

import 'package:finalgoogleplay/Game%20Details/aboutGameScreen.dart';
import 'package:finalgoogleplay/Game%20Details/eventsScreen.dart';
import 'package:finalgoogleplay/Game%20Details/moreButtonScreen.dart';
import 'package:finalgoogleplay/Game%20Details/ratingScreen.dart';
import 'package:finalgoogleplay/Game%20Details/reviewsScreen.dart';
import 'package:finalgoogleplay/Gridviewapps.dart';
import 'package:finalgoogleplay/Search/similarApps.dart';
import 'package:finalgoogleplay/SearchScreen.dart';
import 'package:finalgoogleplay/home.dart';
import 'package:finalgoogleplay/navigationscreens/Widgets_items/Containers_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:expandable/expandable.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';


class GameScreen extends StatefulWidget {
  final double star;
  GameScreen({this.star=0});
  @override
  _GameScreenState createState() => _GameScreenState();
}
class _GameScreenState extends State<GameScreen> {
  bool isinstall;

  List<Map<String, dynamic>> _datasmall = [
    {
      'title': 'Candy Crush Saga',
      'imageUrl': "https://lh3.googleusercontent.com/RUwaKZyft2lCAQ_SAKIsq1eRZ4qayMB3_kMv_nftJjgY78LywAOD9QpEn9VWolIywWRZ=s360",
      'MB':'35'
    },
    {
      'title': 'Akinator',
      'imageUrl': "https://lh3.googleusercontent.com/rjX8LZCV-MaY3o927R59GkEwDOIRLGCXFphaOTeFFzNiYY6SQ4a-B_5t7eUPlGANrcw=s180",
      'MB':'204'
    },
    {
      'title': 'Tiles Hop',
      'imageUrl': "https://lh3.googleusercontent.com/mYXRvkAN-NgcdiJu1owpVtGPYKyAZTo1AaIflJ7qlkLDBtpkBw2W_bytIwg9I5m4826f=s360",
      'MB':'14'
    },
    {
      'title': 'PUBG MOBILE LITE',
      'imageUrl': "https://lh3.googleusercontent.com/rx0ZCsJKclk51Am-NRHOgCgcOpQu5qoWxMsRiRxZpA425wXpMgiQ_RdjfyD6OcQ2RUcS=s360",
      'MB':'300'
    },
    {
      'title': '8 Ball Pool',
      'imageUrl': "https://lh3.googleusercontent.com/bPz1guJ6FHF3oIOEy3KqwpaDDKO-hLRaZoyzmM8bLFLN8fWm6L0_EuUnkwv9iqPo3Ag=s360",
      'MB':'12'
    },
    {
      'title': 'Call of Duty',
      'imageUrl': "https://lh3.googleusercontent.com/6lEEhm2WZojAbZ1uqRJb-KEmT24xydDd5I0QjABtlNOeDr9NrNxztXe67AArHUFuqSI=s360",
      'MB':'240'
    },

  ];

  ScrollController scrollController =  ScrollController();
  ScrollController _scrollController =  ScrollController();
  bool _isVisible = true;
  bool isVisible = true;
  _launchURL({String url}) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  List <Map<String,dynamic>> _buttons1=[
    {
      'text':'No',
      'isSelected': false,
    },
    {
      'text':'Yes',
      'isSelected': false,
    }
  ];
  List <Map<String,dynamic>> _buttons2=[
    {
      'text':'No',
      'isSelected': false,
    },
    {
      'text':'Yes',
      'isSelected': false,
    }
  ];
  List <Map<String,dynamic>> _buttons3=[
    {
      'text':'No',
      'isSelected': false,
    },
    {
      'text':'Yes',
      'isSelected': false,
    }
  ];
  List <Map<String,dynamic>> _texts=[
    {
      'text':"From my experience, I think a lot of my opponents are app generated fakes. I say this because we can shoot the exact same shot, and somehow theirs will fall in the pocket even when they miss. It never happened untill i made my first purchase! Now i lose games where i'm blowing them away but my last couple balls just won't fall and the opponents then suddenly run the table on me. I guss this is all a scam to get me to buy more. Coins don't waste your money\n"
    },
    {
      'text':"From my experience, I think a lot of my opponents are app generated fakes. I say this because we can shoot the exact same shot, and somehow theirs will fall in the pocket even when they miss. It never happened untill i made my first purchase! Now i lose games where i'm blowing them away but my last couple balls just won't fall and the opponents then suddenly run the table on me. I guss this is all a scam to get me to buy more. Coins don't waste your money\n"
    },
    {
      'text':"From my experience, I think a lot of my opponents are app generated fakes. I say this because we can shoot the exact same shot, and somehow theirs will fall in the pocket even when they miss. It never happened untill i made my first purchase! Now i lose games where i'm blowing them away but my last couple balls just won't fall and the opponents then suddenly run the table on me. I guss this is all a scam to get me to buy more. Coins don't waste your money\n"
    }
  ];
  List <Map<String,dynamic>> _progressBarData=[
    {
      'num':'5',
      'value':70
    },
    {
      'num':'4',
      'value':10
    },
    {
      'num':'3',
      'value':5
    },
    {
      'num':'2',
      'value':5
    },
    {
      'num':'1',
      'value':7
    }
  ];
  @override
  initState() {
    super.initState();
    isinstall=false;

    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (isVisible)
          setState(() {
            isVisible = false;
          });
      }
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (!isVisible)
          setState(() {
            isVisible = true;
          });
      }
    });
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (_isVisible)
          setState(() {
            _isVisible = false;
          });
      }
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (!_isVisible)
          setState(() {
            _isVisible = true;
          });
      }
    });
  }
  int buttonIndex=0;
  Widget _buttons({int index,List buttonList,bool buttonSelected}){
    return Container(
      width: 70,
      child: RaisedButton(
          padding: EdgeInsets.all(0),
          onPressed: (){
            setState(() {
              buttonList[buttonIndex]['isSelected']=false;
              buttonIndex=index;
              buttonList[buttonIndex]['isSelected']=true;
            });
          },
          elevation: 0,
          color: Colors.transparent,
          child:  Container(
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            height: 25,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: buttonSelected?Colors.teal.withOpacity(0.5): Colors.white.withOpacity(0.5),width: 1,style: BorderStyle.solid)
            ),
            child: Center(
              child: Text(buttonList[index]['text'],style: TextStyle(fontSize: 11,color: buttonSelected?Colors.teal: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
            ),
          )
      ),
    );
  }
  Widget _reviews({String text,int reviewIndex,bool buttonSelected,List buttonList}){
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width:200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.purple
                      ),
                      child: Center(
                        child: Text('W',style: TextStyle(fontSize: 30,color: Colors.white,decoration: TextDecoration.none),),
                      ),
                    ),
                    Text('Wade Searle',style: TextStyle(fontSize: 17,color: Colors.white,decoration: TextDecoration.none),)
                  ],
                ),
              ),
              Container(
                width: 40,
                child: Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: PopupMenuButton(
                      padding: EdgeInsets.all(20),
                      icon: Icon(Icons.more_vert,color: Colors.white.withOpacity(0.5),),
                      itemBuilder: (ctx) {
                        return [
                          PopupMenuItem(
                              enabled: true,
                              child: Text('View edit history',style: TextStyle(color: Colors.white),)),
                          PopupMenuItem(
                              enabled: true,
                              child: Text('Flag as inappropriate',style: TextStyle(color: Colors.white))),
                          PopupMenuItem(
                              enabled: true,
                              child: Text('Flag as spam',style: TextStyle(color: Colors.white)))
                        ];
                      }),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RatingBar(onRatingUpdate: null,
                itemCount: 5,
                allowHalfRating: true,
                itemSize: 17,
                initialRating: 1,
                unratedColor: Colors.white.withOpacity(0.5),
                direction: Axis.horizontal,
                ratingWidget: RatingWidget(
                    full: Icon(Icons.star,color: Colors.teal,),
                    half: Icon(Icons.star_half,color: Colors.teal,),
                    empty: Icon(Icons.star_border,color: Colors.white.withOpacity(0.5),)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text('9/14/20',style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: ExpandableText(text,style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),maxLines: 4,collapseText:'Show less',expandText:'Show more',expanded: false,),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Was this review helpful?",style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
              SizedBox(
                width: 150,
                height: 35,
                child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                itemBuilder:(ctx,index){
                  return _buttons(
                    buttonSelected: buttonList[index]['isSelected'],
                    index: index,
                    buttonList: buttonList
                  );}
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  Widget _progressBars({String num,int value}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(num,style: TextStyle(fontSize: 12,color: Colors.white,decoration: TextDecoration.none),),
        Container(
          width: MediaQuery.of(context).size.width/2,
          height: 10,
          margin:EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.white.withOpacity(0.09)
          ),
          child: Center(
            child: FAProgressBar(
              size: 20,
              borderRadius: 20,
              direction: Axis.horizontal,
              backgroundColor: Colors.white.withOpacity(0.09),
              changeProgressColor: Colors.teal,
              currentValue: value,
              maxValue: 100,
              progressColor: Colors.teal,
            ),
          ),
        )
      ],
    );
  }
  Widget _catCard(String title,int index){
    return InkWell(
      onTap: (){
        if(index>2){
          Navigator.push(context,MaterialPageRoute(builder: (context) => SimilarApps(titles: title,Type_gridview: 5,)),);
        }
        else{
          Navigator.push(context,MaterialPageRoute(builder: (context) => Gridviewapps(titles: title,Type_gridview: 5,)),);
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(width: 1,color: Colors.white.withOpacity(0.5)),
            color: Colors.transparent
          ),
          child: Center(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            child: Text(title,style: TextStyle(fontSize: 11,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
          )),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.13),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 100),
              height: _isVisible?70:0,
              width: MediaQuery.of(context).size.width,
              child: !_isVisible?null:Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(Icons.arrow_back,color: Colors.white.withOpacity(0.5),),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (ctx)=>HomeScreen()));
                      }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(icon: Icon(Icons.search,color: Colors.grey,), onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => SearchScreen()),);
                      }),
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: PopupMenuButton(
                                  onSelected: (value){
                                    setState(() {
                                      value!=1?null:Share.share('https://play.google.com/store/apps/details?id=com.miniclip.eightballpool');
                                    });
                                  },
                                    icon: Icon(Icons.more_vert,color: Colors.white.withOpacity(0.5),),
                                    itemBuilder: (ctx) {
                                      return [
                                        PopupMenuItem(
                                          value: 1,
                                            enabled: true,
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 10),
                                                  child: Icon(Icons.share,color: Colors.white.withOpacity(0.5),),
                                                ),
                                                Text('Share',style: TextStyle(color: Colors.white.withOpacity(0.5)),),
                                              ],
                                            )),
                                        PopupMenuItem(
                                            enabled: true,
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 10),
                                                  child: Icon(Icons.bookmark_border,color: Colors.white.withOpacity(0.5)),
                                                ),
                                                Text('Add to wishlist',style: TextStyle(color: Colors.white.withOpacity(0.5))),
                                              ],
                                            )),
                                        PopupMenuItem(
                                            enabled: true,
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 10),
                                                  child: Icon(Icons.outlined_flag,color: Colors.white.withOpacity(0.5)),
                                                ),
                                                Text('Flag as inappropriate',style: TextStyle(color: Colors.white.withOpacity(0.5))),
                                              ],
                                            ))
                                      ];
                                    }),
                              )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                controller: _scrollController,
                scrollDirection: Axis.vertical,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[

                            isinstall==true?

                        Container(
                          width: 100,
                          height: 100,
                          child: CircularProgressIndicator(
                            strokeWidth: 3,
                            valueColor: AlwaysStoppedAnimation<Color>
                              (Colors.teal),
                          ),
                        )

                        :  Container(),

                             Container(
                              width: isinstall==true?  50 :  70 ,
                              height: isinstall==true?  50 :  70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://is4-ssl.mzstatic.com/image/thumb/Purple124/v4/43/cc/f6/43ccf6b2-d3af-7287-cb9b-69b1dce7c579/AppIcon-0-0-1x_U007emarketing-0-0-0-7-0-0-85-220.png/246x0w.png'))),
                            ),

                         ]
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              '8 Ball Pool ',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  decoration: TextDecoration.none),
                            ),
                          ),
                          Text(
                            'Miniclup.com',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.teal,
                                decoration: TextDecoration.none),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                              children: [
                                Text(
                                  'Contains ads',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white.withOpacity(0.5),
                                      decoration: TextDecoration.none),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 5, left: 5, right: 5),
                                  child: Center(
                                    child: Text(
                                      '.',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white.withOpacity(0.5),
                                          decoration: TextDecoration.none),
                                    ),
                                  ),
                                ),
                                Text(
                                  'In-app purchases',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white.withOpacity(0.5),
                                      decoration: TextDecoration.none),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5,top: 20,bottom: 20),
                    child: SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border(right: BorderSide(color: Colors.white.withOpacity(0.5),width: 0.5,style: BorderStyle.solid)),
                            ),
                            child: RaisedButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (ctx)=>ReviewsScreen()));
                              },
                              elevation: 0,
                              color: Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text('4.4',style: TextStyle(color: Colors.white,fontSize: 15,decoration: TextDecoration.none),),
                                        Icon(Icons.star,size: 15,color: Colors.white,)
                                      ],

                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text('19M reviews',style: TextStyle(fontSize: 12,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border(right: BorderSide(color: Colors.white.withOpacity(0.5),width: 0.5,style: BorderStyle.solid)),
                            ),
                            child: RaisedButton(
                              onPressed: null,
                              elevation: 0,
                              color: Colors.transparent,
                              disabledColor: Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.white,style: BorderStyle.solid,width: 2.0)
                                        ),
                                        child: Icon(Icons.file_download,color: Colors.white,size: 15,)),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text('62 MB',style: TextStyle(fontSize: 12,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border(right: BorderSide(color: Colors.white.withOpacity(0.5),width: 0.5,style: BorderStyle.solid)),
                            ),
                            child: RaisedButton(
                              onPressed: (){},
                              elevation: 0,
                              color: Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Column(
                                  children: [
                                    Icon(Icons.verified_user,color: Colors.white,size: 20,),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text("Editors' Choice",style: TextStyle(fontSize: 12,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border(right: BorderSide(color: Colors.white.withOpacity(0.5),width: 0.5,style: BorderStyle.solid)),
                            ),
                            child: RaisedButton(
                              onPressed: (){
                                showDialog(
                                    context: context,
                                    builder: (context){
                                      return AlertDialog(
                                        title: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 10),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                                child: Container(
                                                    color: Colors.white,
                                                    child: Row(
                                                      children: [
                                                        Text('12',style: TextStyle(fontSize: 25,color: Colors.black.withOpacity(0.8),fontWeight: FontWeight.bold,decoration: TextDecoration.none),),
                                                        Text('+',style: TextStyle(fontSize: 23,color: Colors.black.withOpacity(0.8),decoration: TextDecoration.none),)
                                                      ],
                                                    )),
                                              ),
                                              Text("Related for 12+",style: TextStyle(fontSize: 20,color: Colors.white,decoration: TextDecoration.none),),
                                            ],
                                          ),
                                        ),
                                        content: Container(
                                          height: 80,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text('Simulated Gambling\n',style:TextStyle(fontSize:16,color:Colors.white,decoration:TextDecoration.none)),
                                              Text('Users Interact, In-Game Purchases',style:TextStyle(fontSize:16,color:Colors.white,decoration:TextDecoration.none)),
                                            ],
                                          ),
                                        ),
                                        actions: [
                                          InkWell(
                                              onTap: (){
                                                _launchURL(url: 'https://support.google.com/googleplay/answer/6209544?p=appgame_ratings&ctx=com.miniclip.eightballpool&visit_id=637375367849965671-1466296600&rd=1');
                                              },
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                                child: Text('LEARN MORE',style: TextStyle(fontSize: 15,color: Colors.teal,decoration: TextDecoration.none),),
                                              )),
                                          InkWell(
                                              onTap: (){
                                                Navigator.pop(context);
                                              },
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                                child: Text('GOT IT',style: TextStyle(fontSize: 15,color: Colors.teal,decoration: TextDecoration.none),),
                                              )),
                                        ],
                                      );
                                    }
                                );
                              },
                              color: Colors.transparent,
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Column(
                                  children: [
                                    Container(
                                      color: Colors.white,
                                        child: Row(
                                          children: [
                                            Text('12',style: TextStyle(fontSize: 18,color: Colors.black.withOpacity(0.8),fontWeight: FontWeight.bold,decoration: TextDecoration.none),),
                                            Text('+',style: TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.8),decoration: TextDecoration.none),)
                                          ],
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        children: [
                                          Text('Related for 12+',style: TextStyle(fontSize: 12,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                                          Padding(
                                            padding: const EdgeInsets.only(left:3),
                                            child: Center(
                                              child: Icon(Icons.info_outline,color: Colors.white.withOpacity(0.5),size: 13,),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: RaisedButton(
                              onPressed: null,
                              elevation: 0,
                              color: Colors.transparent,
                              disabledColor: Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Column(
                                  children: [
                                    Text('500M+',style: TextStyle(fontSize: 15,color: Colors.white,decoration: TextDecoration.none),),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 13),
                                      child: Text('Downloads',style: TextStyle(fontSize: 12,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                    child:isinstall==false?
                        CupertinoButton(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.teal,
                          disabledColor: Colors.teal,
                          onPressed: (){
                            setState(() {
                              isinstall=true;
                            });
                          },
                          pressedOpacity: 0.8,
                          padding: EdgeInsets.all(5),
                          child: Center(child: Text('Install',style: TextStyle(fontSize: 18,color: Colors.black.withOpacity(0.8),decoration: TextDecoration.none),),),
                        )

                            : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            OutlineButton(
                              child: Container(
                                width: 120,
                                height: 40,
                                child: Center(
                                  child: Text('Cancel',
                                      style:
                                      TextStyle(color: Colors.teal, fontSize: 20,fontWeight: FontWeight.bold)),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  isinstall=false;
                                });
                              }, //callback when button is clicked
                              borderSide: BorderSide(
                                color: Colors.grey, //Color of the border
                                style: BorderStyle.solid, //Style of the border
                                width: 0.8, //width of the border
                              ),
                            ),
                            Container(
                              width: 140,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(.5),
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              child: Center(child: Text('Open',style: TextStyle(fontSize: 20,color: Colors.grey,decoration: TextDecoration.none),),),
                            ),
                          ],
                        )

                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10,bottom: 10),
                    child: SizedBox(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (ctx,index){
                          return Container(
                            height: 200,
                            margin: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width-100,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: NetworkImage('https://i.ytimg.com/vi/zorpUSZZSgU/maxresdefault.jpg'),
                              fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10)
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                  CupertinoButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>AboutTheGame()));
                    },
                    color: Colors.transparent,
                    pressedOpacity: 0.5,
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    borderRadius: BorderRadius.circular(0),
                    disabledColor: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('About this game',style: TextStyle(fontSize: 20,color: Colors.white,decoration: TextDecoration.none),),
                          Icon(Icons.arrow_forward,size: 20,color: Colors.white,)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("Play the World's #1 Pool game",style: TextStyle(color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none,fontSize: 13),),
                  ),
                  SizedBox(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (ctx,index){
                          return _catCard(["Sports","#1 top free","Billiards","Competitive multiplayer","Single player","Stylized"][index],index);
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Events',style: TextStyle(fontSize: 20,color: Colors.white,decoration: TextDecoration.none),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      height: 150,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)),side: BorderSide(color: Colors.white.withOpacity(0.5),width: 1,style: BorderStyle.solid)
                      ),
                      color: Colors.transparent,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (ctx)=>EventsScreen()));
                      },
                      disabledColor: Colors.transparent,
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.event,size: 15,color: Colors.white.withOpacity(0.5),),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                    child: Text("Event",style: TextStyle(fontSize: 12,color: Colors.white,decoration: TextDecoration.none),),
                                  ),
                                  Icon(Icons.brightness_1,size: 3,color: Colors.white.withOpacity(0.5),),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                    child: Text("Ends on 10/11/20",style: TextStyle(fontSize: 12,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 150,
                                  height: 80,
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(image: NetworkImage('https://scontent.faly3-2.fna.fbcdn.net/v/t1.0-9/119871423_3662242430462356_1887094977840050596_o.jpg?_nc_cat=105&_nc_sid=2c4854&_nc_ohc=yoa3rfg0l4YAX-vbISA&_nc_ht=scontent.faly3-2.fna&oh=a5b35a1068b1a98f31508354c7bf7bc5&oe=5F8D2ED4'),
                                    fit: BoxFit.cover)
                                  ),
                                ),
                                Text("Let's celebrate Music\nin 8 Ball Pool! Don't\nmiss the unique\nthemed prizes!...",style: TextStyle(fontSize: 12,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
                    child: Text('Rate this app',style: TextStyle(fontSize: 20,color: Colors.white,decoration: TextDecoration.none),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 3),
                    child: Text("Tell others what you think",style: TextStyle(fontSize: 12,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 20),
                    child: RatingBar(
                      itemCount: 5,
                      direction: Axis.horizontal,
                      initialRating: widget.star,
                      minRating: 1,
                      maxRating: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 15),
                      tapOnlyMode: true,
                      ratingWidget: RatingWidget(
                          full: Icon(Icons.star,color: Colors.teal,),
                          half: Icon(Icons.star_half,color: Colors.teal,),
                          empty: Icon(Icons.star_border,color: Colors.white.withOpacity(0.5),)),
                      onRatingUpdate: (rating) {
                        print(rating);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>RatingScreen(star: rating,)));
                      },
                    ),
                  ),
                  RaisedButton(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      elevation: 0,
                    color: Colors.transparent,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>RatingScreen(star: 0,)));
                      },
                      child: Row(
                        children: [
                          Text("Write a review",style: TextStyle(fontSize: 14,color: Colors.teal,decoration: TextDecoration.none),),
                        ],
                      )),
                  RaisedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>ReviewsScreen()));
                    },
                    elevation: 0,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Ratings and reviews",style: TextStyle(fontSize: 20,color: Colors.white,decoration: TextDecoration.none),),
                            IconButton(icon: Icon(Icons.info_outline,size: 20,color: Colors.white.withOpacity(0.5),), onPressed: (){})
                          ],
                        ),
                        Icon(Icons.arrow_forward,size: 20,color: Colors.white.withOpacity(0.5),)
                      ],
                    ),
                  ),
                  RaisedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>ReviewsScreen()));
                    },
                    color: Colors.transparent,
                    elevation: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('4.4',style: TextStyle(fontSize: 50,color: Colors.white,decoration: TextDecoration.none),),
                            RatingBar(onRatingUpdate: null,
                            itemCount: 5,
                            allowHalfRating: true,
                              itemSize: 17,
                              initialRating: 4.4,
                              unratedColor: Colors.white.withOpacity(0.5),
                              direction: Axis.horizontal,
                              ratingWidget: RatingWidget(
                                  full: Icon(Icons.star,color: Colors.teal,),
                                  half: Icon(Icons.star_half,color: Colors.teal,),
                                  empty: Icon(Icons.star_border,color: Colors.white.withOpacity(0.5),)),
                            ),
                            Text("19,649,824",style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),)
                          ],
                        ),
                        SizedBox(
                          height: 100,
                          width: MediaQuery.of(context).size.width/2+50,
                          child: ListView.builder(
                            itemCount: 5,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (ctx,index){
                              return _progressBars(
                                num: _progressBarData[index]['num'],
                                value: _progressBarData[index]['value']
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.all(20),
                      children: [
                        Container(
                          width:120,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Gameplay',style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                              Text('4.3',style: TextStyle(fontSize: 13,color: Colors.white,decoration: TextDecoration.none),),
                              Icon(Icons.star,color: Colors.white,size: 13,)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Container(
                            width:120,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Graphics',style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                                Text('4.3',style: TextStyle(fontSize: 13,color: Colors.white,decoration: TextDecoration.none),),
                                Icon(Icons.star,color: Colors.white,size: 13,)
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width:120,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Controls',style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                              Text('4.2',style: TextStyle(fontSize: 13,color: Colors.white,decoration: TextDecoration.none),),
                              Icon(Icons.star,color: Colors.white,size: 13,)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  _reviews(
                    buttonList: _buttons1,
                    reviewIndex: 0,
                    text: _texts[0]['text'],
                  ),
                  _reviews(
                      buttonList: _buttons2,
                      reviewIndex: 1,
                      text: _texts[1]['text'],
                  ),
                  _reviews(
                      buttonList: _buttons3,
                      reviewIndex: 2,
                      text: _texts[2]['text'],
                  ),
                  RaisedButton(
                    padding: EdgeInsets.all(20),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (ctx)=>ReviewsScreen()));
                      },
                      elevation: 0,
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Text("See all reviews",style: TextStyle(fontSize: 13,color: Colors.teal,decoration: TextDecoration.none),),
                        ],
                      )),
                  Card(
                    color: Colors.transparent,
                    elevation: 0,
                    semanticContainer: false,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ExpandablePanel(
                        hasIcon: true,
                        iconColor: Colors.white.withOpacity(0.5),
                        header: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Developer content',style: TextStyle(fontSize: 20,color: Colors.white,decoration: TextDecoration.none),),
                          ],
                        ),
                        expanded: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: RaisedButton(
                                onPressed: (){
                                  _launchURL(url: 'https://support.miniclip.com/hc/en-us/categories/115002380548');
                                },
                                elevation: 0,
                                color: Colors.transparent,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.language,size: 20,color: Colors.white.withOpacity(0.5),),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      child: Text('Website',style: TextStyle(fontSize: 15,color: Colors.white,decoration: TextDecoration.none),),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: RaisedButton(
                                onPressed: (){
                                  setState(() {
                                    _launchURL(url: 'mailto:support@miniclip.com?subject=8 Ball Pool');
                                  });
                                },
                                elevation: 0,
                                color: Colors.transparent,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.mail_outline,size: 20,color: Colors.white.withOpacity(0.5),),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Email',style: TextStyle(fontSize: 15,color: Colors.white,decoration: TextDecoration.none),),
                                          Text('support@miniclip.com',style: TextStyle(fontSize: 15,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),

                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: RaisedButton(
                                onPressed: (){
                                  setState(() {
                                    _launchURL(url: 'https://goo.gl/maps/kQofnzW95PtnN7mP6');
                                  });
                                },
                                elevation: 0,
                                color: Colors.transparent,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.location_on,size: 20,color: Colors.white.withOpacity(0.5),),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Address',style: TextStyle(fontSize: 15,color: Colors.white,decoration: TextDecoration.none),),
                                          Text('Miniclip SA Case Postale 2671\n 2001 Neuchâtel Switzerland',style: TextStyle(fontSize: 15,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),

                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: RaisedButton(
                                onPressed: (){
                                  _launchURL(url: 'https://m.miniclip.com/privacy/');
                                },
                                elevation: 0,
                                color: Colors.transparent,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.gavel,size: 20,color: Colors.white.withOpacity(0.5),),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      child: Text('Privacy policy',style: TextStyle(fontSize: 15,color: Colors.white,decoration: TextDecoration.none),),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(10),
                  child:MainSmall(context: context,title: "Similar games"),
                  ),

                  RaisedButton(
                    padding: EdgeInsets.all(0),
                    color: Colors.white.withOpacity(0.0013),
                    elevation: 0,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>MoreButtonScreen()));
                    },
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/4,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height/4,
                            color: Colors.blue,
                          ),
                          AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            width: isVisible? MediaQuery.of(context).size.width: MediaQuery.of(context).size.width-50,
                            child: Container(
                              height: MediaQuery.of(context).size.height/4,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: NetworkImage('https://lh3.googleusercontent.com/bHetiyxgX73PkPLZAhv6HZJmkj72ZxirY1z_EgTiQ7nA8Czle3nKXYTEZsUBH4SvynA=w412-h732-rw'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height/4,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    stops: [
                                      0.6,
                                      0.8,
                                      0.99
                                    ],
                                    colors: [Colors.black.withOpacity(0.5),Colors.black.withOpacity(0.7),Colors.black.withOpacity(0.9)]
                                )
                            ),
                          ),
                           CustomScrollView(
                            scrollDirection: Axis.horizontal,
                            controller: scrollController,
                            shrinkWrap: true,
                            slivers: <Widget>[
                               SliverPadding(
                                padding: const EdgeInsets.all(10),
                                sliver:  SliverList(
                                  delegate:  SliverChildListDelegate(
                                    <Widget>[
                                      SizedBox(
                                        height: MediaQuery.of(context).size.height/4,
                                        width: MediaQuery.of(context).size.width/2,
                                      ),
                                      small_container(context: context,title: _datasmall[0]['title'],MB:_datasmall[0]['MB'],imageUrl: _datasmall[0]['imageUrl'] ),
                                      small_container(context: context,title: _datasmall[1]['title'],MB:_datasmall[1]['MB'],imageUrl: _datasmall[1]['imageUrl'] ),
                                      small_container(context: context,title: _datasmall[2]['title'],MB:_datasmall[2]['MB'],imageUrl: _datasmall[2]['imageUrl'] ),
                                      small_container(context: context,title: _datasmall[3]['title'],MB:_datasmall[3]['MB'],imageUrl: _datasmall[3]['imageUrl'] ),
                                      small_container(context: context,title: _datasmall[4]['title'],MB:_datasmall[4]['MB'],imageUrl: _datasmall[4]['imageUrl'] ),
                                      small_container(context: context,title: _datasmall[5]['title'],MB:_datasmall[5]['MB'],imageUrl: _datasmall[5]['imageUrl'] ),

                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          AnimatedOpacity(
                              duration: Duration(milliseconds: 500),
                              opacity: isVisible ? 1.0 : 0.0,
                              child:  Container(
                                color: Colors.transparent,
                                width: MediaQuery.of(context).size.width/2,
                                height: MediaQuery.of(context).size.height/4,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 70,
                                      height: 70,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(70),
                                          border: Border.all(color: Colors.white,width: 2,style: BorderStyle.solid),
                                          image: DecorationImage(image: NetworkImage('https://lh3.googleusercontent.com/n1_sBxL5o6CxW7zHK4Vi_Z_aEwcJ-1btU3GrLA0li5GTMglHQNvJ9-7FLTTh7b36iac'),
                                              fit: BoxFit.cover
                                          )
                                      ),
                                    ),
                                    Text('More by Miniclip.com',style: TextStyle(fontSize: 15,color: Colors.white,decoration: TextDecoration.none),),
                                    RaisedButton(onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>MoreButtonScreen()));
                                    },
                                      elevation: 0,
                                      color: Colors.transparent,
                                      child: Container(
                                        width: 100,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(color: Colors.white,width: 1,style: BorderStyle.solid),
                                            color: Colors.transparent
                                        ),
                                        child: Center(child: Text('MORE',style: TextStyle(fontSize: 15,color: Colors.white,decoration: TextDecoration.none),),),
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        border:Border(bottom: BorderSide(color: Colors.white.withOpacity(0.5),width: 1,style: BorderStyle.solid),top: BorderSide(color: Colors.white.withOpacity(0.5),width: 1,style: BorderStyle.solid))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Beta program is full\n\n',style:TextStyle(fontSize: 15,color:Colors.white,decoration:TextDecoration.none)),
                            Text('The beta program for this app is currently full.',style:TextStyle(fontSize: 13,color:Colors.white.withOpacity(0.5),decoration:TextDecoration.none))

                          ],
                        ),
                      ),
                    ),
                  ),
                  RaisedButton(
                    elevation: 0,
                    color: Colors.transparent,
                    onPressed: (){
                      _launchURL(url: 'https://support.google.com/googleplay/answer/2479637?p=details_refundpolicy&ctx=developer-5933611429942957630&visit_id=637375360468963183-3384356793&rd=1');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.undo,size: 15,color: Colors.white.withOpacity(0.5),),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text('Google Play refund policy',style: TextStyle(fontSize: 13,color: Colors.white,decoration: TextDecoration.none),),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
