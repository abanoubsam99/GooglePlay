import 'package:finalgoogleplay/Game%20Details/gameDetailsScreen.dart';
import 'package:finalgoogleplay/Search/similarApps.dart';
import 'package:finalgoogleplay/Search/suggestedGames.dart';
import 'package:finalgoogleplay/SearchScreen.dart';
import 'package:finalgoogleplay/navigationscreens/Widgets_items/Containers_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SearchDestination extends StatefulWidget {
  @override
  _SearchDestinationState createState() => _SearchDestinationState();
}

class _SearchDestinationState extends State<SearchDestination> {
  List<Map<String, dynamic>> _datasmallapp = [
    {
      'title': 'TikTok Lite',
      'imageUrl': "https://lh3.googleusercontent.com/LLUZLIcA7MbM5yLwAA-oTAt3q5kdDjIIfrEqR2mGLAxvVJcwruxJYQChwPDahLvSjFc=s180",
      'MB':'40',
      'stars':'3.8',
      'suptitle':'social '
    },
    {
      'title': 'WhatsApp Messenger',
      'imageUrl': "https://lh3.googleusercontent.com/bYtqbOcTYOlgc6gqZ2rwb8lptHuwlNE75zYJu6Bn076-hTmvd96HH-6v7S0YUAAJXoJN=s180",
      'MB':'15',
      'stars':'3.8',
      'suptitle':'social '
    },
    {
      'title': 'talabat',
      'imageUrl': "https://lh3.googleusercontent.com/2EOhV_NEYBaMxUId9urnt2bmYInGfMquLg2bRLEWysFZIYIPdqapkETzr1YWPfNEOZDE=s180",
      'MB':'40',
      'stars':'3.8',
      'suptitle':'Shopping '
    },
    {
      'title': 'جوميا ',
      'imageUrl': "https://lh3.googleusercontent.com/kQLKpwl2MAxdDxMShTcnkUWXki7DRC7wDvdC8mM1mL_Pap0-a4YdlWPS5M4_jbGYLHg=s180",
      'MB':'132',
      'stars':'3.8',
      'suptitle':'Shopping '
    },
    {
      'title': 'My WE',
      'imageUrl': "https://lh3.googleusercontent.com/qQVRJ-vRWHVuUsIOrDCGLe3yTf186b4ZPCws14cl2YJstPq75BpLHRDljQCVlkZz5Q=s180",
      'MB':'5',
      'stars':'3.8',
      'suptitle':'Productivity '
    },
    {
      'title': 'Twitter',
      'imageUrl': "https://lh3.googleusercontent.com/x3XxTcEYG6hYRZwnWAUfMavRfNNBl8OZweUgZDf2jUJ3qjg2p91Y8MudeXumaQLily0=s180",
      'MB':'45',
      'stars':'3.8',
      'suptitle':'social '
    },

  ];
  Widget _smalllist ({BuildContext context,String title,String imageUrl,String MB,int index,String suptitle ,String stars}) {
    return Padding(
      padding: const EdgeInsets.only(right: 15,left: 15,top: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 70,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(
                          imageUrl),
                      fit: BoxFit.fill)),
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(title,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withOpacity(.8))),

                Text(suptitle,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.withOpacity(.8))),

                Row(

                  children: <Widget>[
                    Text(stars,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.withOpacity(.8))),
                    Icon(Icons.star,color: Colors.grey,size: 12,),
                    SizedBox(width: 7,),
                    Text(
                      "$MB MB",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.13),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0.0013),
        leading: IconButton(icon: Icon(Icons.arrow_back,size: 20,color: Colors.white.withOpacity(0.5),), onPressed: (){
          Navigator.pop(context);
        }),
        title: Text('8 ball pool',style: TextStyle(fontSize: 20,color: Colors.white,decoration: TextDecoration.none),),
        actions: [
          IconButton(icon: Icon(Icons.search,size: 20,color: Colors.white.withOpacity(0.5),), onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) => SearchScreen(  titles: "Search apps & games", )), );
          }),
          IconButton(icon: Icon(Icons.mic_none,size: 20,color: Colors.white.withOpacity(0.5),), onPressed: (){}),
        ],
        bottom: PreferredSize(
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom:
                      BorderSide(color: Colors.white.withOpacity(0.5)))),
            ),
            preferredSize: Size(MediaQuery.of(context).size.width, 2)),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 10),
          scrollDirection: Axis.vertical,
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (ctx)=>GameScreen()));
              },
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://is4-ssl.mzstatic.com/image/thumb/Purple124/v4/43/cc/f6/43ccf6b2-d3af-7287-cb9b-69b1dce7c579/AppIcon-0-0-1x_U007emarketing-0-0-0-7-0-0-85-220.png/246x0w.png'))),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                '8 Ball Pool',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    decoration: TextDecoration.none),
                              ),
                            ),
                            Text(
                              'Miniclup.com',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white.withOpacity(0.5),
                                  decoration: TextDecoration.none),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                children: [
                                  Text(
                                    'Contains ads',
                                    style: TextStyle(
                                        fontSize: 12,
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
                                            fontSize: 12,
                                            color: Colors.white.withOpacity(0.5),
                                            decoration: TextDecoration.none),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'In-app purchases',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white.withOpacity(0.5),
                                        decoration: TextDecoration.none),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 10),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.teal
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                              child: Center(child: Text('Install',style: TextStyle(fontSize: 18,color: Colors.black.withOpacity(0.8),decoration: TextDecoration.none),),),
                            ),
                          ),
                        ),
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
                                onPressed: (){},
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
                                onPressed: null,
                                elevation: 0,
                                disabledColor: Colors.transparent,
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
                                            height: 70,
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
                    SizedBox(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        padding: EdgeInsets.all(10),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text("Play the World's #1 Pool game",style: TextStyle(color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none,fontSize: 13),),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(15),
              child: MainSmallapps(context: context,title: "You might also like",listnum: 5),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: MainSmall(context: context,title: "Similar apps",listnum:5),
            ),

            _smalllist(
                context: context,
                title: _datasmallapp[0]['title'],
                MB:_datasmallapp[0]['MB'],
                stars: _datasmallapp[0]['stars'],
                imageUrl: _datasmallapp[0]['imageUrl'],
            suptitle: _datasmallapp[0]['suptitle'],
            ),

            _smalllist(
              context: context,
              title: _datasmallapp[1]['title'],
              MB:_datasmallapp[1]['MB'],
              stars: _datasmallapp[1]['stars'],
              imageUrl: _datasmallapp[1]['imageUrl'],
              suptitle: _datasmallapp[1]['suptitle'],
            ),

            _smalllist(
              context: context,
              title: _datasmallapp[2]['title'],
              MB:_datasmallapp[2]['MB'],
              stars: _datasmallapp[2]['stars'],
              imageUrl: _datasmallapp[2]['imageUrl'],
              suptitle: _datasmallapp[2]['suptitle'],
            ),

            _smalllist(
              context: context,
              title: _datasmallapp[3]['title'],
              MB:_datasmallapp[3]['MB'],
              stars: _datasmallapp[3]['stars'],
              imageUrl: _datasmallapp[3]['imageUrl'],
              suptitle: _datasmallapp[3]['suptitle'],
            ),

            _smalllist(
              context: context,
              title: _datasmallapp[4]['title'],
              MB:_datasmallapp[4]['MB'],
              stars: _datasmallapp[4]['stars'],
              imageUrl: _datasmallapp[4]['imageUrl'],
              suptitle: _datasmallapp[4]['suptitle'],
            ),
          ],
        ),
      ),
    );
  }
}
