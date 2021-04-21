import 'package:finalgoogleplay/SearchScreen.dart';
import 'package:flutter/material.dart';

class SimilarApps extends StatefulWidget {
  final String titles;
  final int Type_gridview;
  SimilarApps({this.titles,this.Type_gridview});
  @override
  _SimilarAppsState createState() => _SimilarAppsState();
}

class _SimilarAppsState extends State<SimilarApps> {
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
        title: Text(widget.titles,style: TextStyle(fontSize: 20,color: Colors.white,decoration: TextDecoration.none),),
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
      body:Column(children: <Widget>[
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
      ],)
    );
  }
}
