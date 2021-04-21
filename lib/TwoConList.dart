import 'package:finalgoogleplay/Game%20Details/gameDetailsScreen.dart';
import 'package:finalgoogleplay/SearchScreen.dart';
import 'package:finalgoogleplay/bottomSheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TowConList extends StatefulWidget {
  final String titles;
  final int Type_gridview;
  TowConList({this.titles,this.Type_gridview});
  @override
  _TowConListState createState() => _TowConListState();
}

class _TowConListState extends State<TowConList> {
  ScrollController _controller=ScrollController();
  bool isVisible=true;
  @override
  initState() {
    super.initState();
    _controller.addListener(() {
      if (_controller.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (isVisible)
          setState(() {
            isVisible = false;
          });
      }
      if (_controller.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (!isVisible)
          setState(() {
            isVisible = true;
          });
      }
    });
  }


  List<Map<String, dynamic>> _datatwo = [
    {
      'title': 'Clash of Clans',
      'bigimageUrl1': 'https://lh3.googleusercontent.com/FqJXc9ttiKE8NQAIhj6dLbx28ThYNEUApjSD4mF0gA3XViGEk-6dI93b6tqeepavaL0R=w1440-h620',
      'bigimageUrl2': "https://lh3.googleusercontent.com/-mXWKF2BJNzJQ_bT59ydpcxNeX8iJ-0sARyiQveAuRFcYwUFI0MNDMxKj5efFpMWjco=w1440-h620",
      'bigimageUrl3': "https://lh3.googleusercontent.com/-aLFfcD1fOYdDgCbai_WRPfDH87LdfbS__LGfLbAgr-9l-B_2i8act55J5oT93KywYYK=w1440-h620",
      'smallimageUrl': "https://lh3.googleusercontent.com/akv2Bdp7i5Vv-sl9FuP3_dhWpUO80zULf-Pkh6RFleomEp6pZorHuCNm3FbR9oAMunVK=s360",
      'MB':'150',
      'subtitle':"'Sports • Billiards • Offline • Single player'",
      'stars':'4.7'
    },
    {
      'title': 'Dr. Driving',
      'bigimageUrl1': 'https://play-lh.googleusercontent.com/OVD4m3pofxLRVj3GOUCoYFvyLGcL-wVGKoj6WJlYj_iYUuk9n82X00lSsXnkyK4m6hI=w1440-h620',
      'bigimageUrl2': "https://play-lh.googleusercontent.com/Kem7tLu9fDdlIuo5wYztQurM7Tpz3m2ZXuDEYuLAs0B_LzgUx7o3v44MUxEgPoL5G_k8=w1440-h620",
      'bigimageUrl3': "https://play-lh.googleusercontent.com/n2CFe-E4Kqoi9vwOHnXKg-Vno0Pod-NoJuYjgLQXcGGbToiA0_feC6a7LIBDB5xVvA=w1440-h620",
      'smallimageUrl': "https://play-lh.googleusercontent.com/_NajhNZ75NZN_CuQ7O1HMvD9BOPZEX8FmwtQaAC1RqRaAnl8geTYodi02U8hcfbnwMs=s360",
      'MB':'70',
      'subtitle':"'Sports • Billiards • Online • Single player'",
      'stars':'4'
    },
    {
      'title': 'Chess',
      'bigimageUrl1': 'https://lh3.googleusercontent.com/kbefBucQW7cTFrmDOkUkUcvr4nNuapVpq6cEzSYmf4Fyh3qs4lzyVRqxOMzRGkYE=w1440-h620',
      'bigimageUrl2': "https://lh3.googleusercontent.com/81nem6fPgDEJPB_LWyFTzuKbY1AZnsO_G_7qVOjrw3YHko7dIqvFtf1GHQicBR5cbhs=w1440-h620",
      'bigimageUrl3': "https://lh3.googleusercontent.com/ob48WW-3n3TVGUktVpQAixyoMqfVvnJLuVjj6GA6beoj6U_LGjFqgk2bC_FIPQp71K4=w1440-h620",
      'smallimageUrl': "https://lh3.googleusercontent.com/wwAiz5FIU30yGr9wAgt789hQ8eP2hOPNXIYs0NpIKQYJoYkNc1ZAcwegcvVUcIjTIvz6=s360",
      'MB':'30',
      'subtitle':"'Sports • Billiards • Offline • Single player'",
      'stars':'3.8'
    },
    {
      'title': 'Temple Run 2',
      'bigimageUrl1': 'https://lh3.googleusercontent.com/dlruy-492IiWFR0VgN3J8eT6KIDviH9eUyRi8PFfP1EMrGajET-zLvZtGLGw_3xdng=w1440-h620',
      'bigimageUrl2': "https://lh3.googleusercontent.com/t_NiXj2_dqMKvk7_JiTFrrrGO3WIf74agKT1NX3fgNMbnRlaPgy3tiNGNU320p9eze0=w1440-h620",
      'bigimageUrl3': "https://lh3.googleusercontent.com/SR3YDBfwuIKy3fe_pw-oed7hZR3ePx9k6-joGSS_KFcrc9Xw7uCvwN4IotgRmu15dHw=w1440-h620",
      'smallimageUrl': "https://lh3.googleusercontent.com/VnmCQlMIEtzfZI2ivx_5-eVhhnosH-eQ67p0RWwc8TpbD_jehkUxOejva-oEPcJ8OVi0=s360",
      'MB':'13',
      'subtitle':"'Sports • Billiards • Online • Single player'",
      'stars':'3'
    },
    {
      'title': 'Dream League Soccer 2020',
      'bigimageUrl1': 'https://lh3.googleusercontent.com/iTIQRz--jpAEUbzbCeANfKBqgZRp_ASBvJKPi61rQpnXo2619jy8qPtK_H7K9pCzyh4ArPnNrGd5m3I5ZQTQ=w1440-h620',
      'bigimageUrl2': "https://lh3.googleusercontent.com/LFq0e7gci0q5FW9l5O-20sbftNtE2BTOsMv01UpKWec3sJNHPPbw6OeNDit9Psawto4eOhvpl3Bg3HRFU33S=w1440-h620",
      'bigimageUrl3': "https://lh3.googleusercontent.com/GXw-L6lb43_Y0-l5bfO5oDPmIht4rOxyPA3lF0M5h5IyZ5hKGOIeDlh8UWeyxaR5LWmLY1Vgjlf_dx3QIlxk=w1440-h620",
      'smallimageUrl': "https://lh3.googleusercontent.com/uHZTSkTztCNTYnwgKz2_BmEX9bEuYXh6nmQrLWKLm5nX0NWpQESM9YSG9FDtPn0lnh4=s360",
      'MB':'50',
      'subtitle':"'Sports • Billiards • Online • Single player'",
      'stars':'4.9'
    },
  ];

  Widget _imageitem({String bigimageUrl}){
    return  Container(
      width: MediaQuery.of(context).size.width-100,
      height: 160,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(image: NetworkImage( bigimageUrl),
              fit: BoxFit.cover
          )
      ),
    );
  }
  Widget _towitem({String title,String subtitle,String smallimageUrl,String bigimageUrl1,String bigimageUrl2,String bigimageUrl3,String stars,String MB}){
    return InkWell(
      onLongPress:(){
        bottomSheet(context: context,Type: 3);
      },
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context) => GameScreen()),);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                _imageitem(bigimageUrl:bigimageUrl1 ),
                _imageitem(bigimageUrl:bigimageUrl2 ),
                _imageitem(bigimageUrl:bigimageUrl3 ),
              ],

              ),
            ),
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(image: NetworkImage(smallimageUrl),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(title,style: TextStyle(fontSize: 15,color: Colors.white,decoration: TextDecoration.none),),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(subtitle,style: TextStyle(fontSize: 9,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                      ),
                      Row(
                        children: [
                          Text(stars,style: TextStyle(fontSize: 9,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                          Icon(Icons.star,size: 10,color: Colors.white.withOpacity(0.5),),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 9),
                            child: Text('$MB MB',style: TextStyle(fontSize: 9,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.13),
      body: Column(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 100),
            height: isVisible?100:0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width:MediaQuery.of(context).size.width-50,
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(Icons.arrow_back,size: 25,color: Colors.white.withOpacity(0.5),),
                          onPressed: (){
                            Navigator.pop(context);
                          }),
                      Row(
                        children: <Widget>[
                          Text(widget.titles,style: TextStyle(fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ],
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.search,size: 25,color: Colors.white.withOpacity(0.5),),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => SearchScreen(titles: "Search for apps & games",)));
                          })
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              controller: _controller,
              scrollDirection: Axis.vertical,
              itemCount: _datatwo.length,
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (ctx,index){
                return _towitem(
                  title: _datatwo[index]['title'],
                  subtitle: _datatwo[index]['subtitle'],
                  stars:  _datatwo[index]['stars'],
                  MB:  _datatwo[index]['MB'],
                  smallimageUrl: _datatwo[index]['smallimageUrl'],
                  bigimageUrl1: _datatwo[index]['bigimageUrl1'],
                  bigimageUrl2: _datatwo[index]['bigimageUrl2'],
                  bigimageUrl3: _datatwo[index]['bigimageUrl3'],

                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
