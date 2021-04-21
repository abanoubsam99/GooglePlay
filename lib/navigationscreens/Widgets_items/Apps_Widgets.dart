import 'package:finalgoogleplay/navigationscreens/Widgets_items/Containers_items.dart';
import 'package:flutter/material.dart';

class Foryou extends StatefulWidget {
  @override
  _ForyouState createState() => _ForyouState();
}
class _ForyouState extends State<Foryou> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10,left: 10),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          MainSmallapps(context: context,title: "Recommended for you",listnum: 1),
          MainSmallapps(context: context,title: "Recently update",listnum: 2),
          MainSmallapps(context: context,title: "Music & audio",listnum: 3),
          Mainbigapps(context: context,title: "Ads.Suggested for you",listnum:2),
          MainSmallapps(context: context,title: "Travel & local",listnum: 4),
          MainSmallapps(context: context,title: "Entertainment",listnum: 2),
          Mainbigapps(context: context,title: "Ads.Suggested for you",listnum: 1),
          MainSmallapps(context: context,title: "Customize your device",listnum: 1),
          MainSmallapps(context: context,title: "Premium apps",listnum: 3),
          MainSmallapps(context: context,title: "Stream your music",listnum: 4),
          MainSmallapps(context: context,title: "Audio recording",listnum: 2),
          MainSmallapps(context: context,title: "Video editors & players",listnum: 1),
          MainSmallapps(context: context,title: "Educational apps",listnum: 3),
          SizedBox(height: 15,),







        ],
      ),
    );
  }
}

class Topcharts extends StatefulWidget {
  @override
  _TopchartsState createState() => _TopchartsState();
}
class _TopchartsState extends State<Topcharts> {
  bool isSwitched = true;
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

  List<Map<String, dynamic>> _datasmallapp2 = [
    {
      'title': 'U-Dictionary',
      'imageUrl': "https://lh3.googleusercontent.com/6XZX48IF99e81mUxIWy6MKS_9xMANfSjsAhAHhOJia-RnFmgz4IYy0pO7Yb-mpJD2H-7=s180",
      'MB':'14',
      'stars':'3.8',
      'suptitle':'Productivity '
    },
    {
      'title': 'ZOOM ',
      'imageUrl': "https://lh3.googleusercontent.com/1DqxbUca62LmV1ehZirHGWYBef9Jrtl3DhZ4m6YBnWCUX-XNr3lcnYKb31R-7ukpKAw=s180",
      'MB':'84',
      'stars':'3.8',
      'suptitle':'Social . Multiplayer'
    },
    {
      'title': 'OLX Arabia',
      'imageUrl': "https://lh3.googleusercontent.com/1liH-G9sIASGRiTDzBWjB_w-j-CUhGyXmH-0kseQpGbwX7efwkHj6sgTLn3raqQqsIAs=s180",
      'MB':'34',
      'stars':'3.8',
      'suptitle':'Shopping . Multiplayer'
    },
    {
      'title': 'Akinator',
      'imageUrl': "https://lh3.googleusercontent.com/rjX8LZCV-MaY3o927R59GkEwDOIRLGCXFphaOTeFFzNiYY6SQ4a-B_5t7eUPlGANrcw=s180",
      'MB':'204',
      'stars':'3.8',
      'suptitle':'Social '
    },
    {
      'title': 'QR & Barcode Reader',
      'imageUrl': "https://lh3.googleusercontent.com/-CvY0c-MmYQf2xaJQ6TVj_PZO4lpKG3T-i78UOolkpMxwlUen3KsakPA7I8OOwjOx_Q=s180",
      'MB':'80',
      'stars':'3.8',
      'suptitle':'Tools '
    },
    {
      'title': 'SoundCloud',
      'imageUrl': "https://lh3.googleusercontent.com/lvYCdrPNFU0Ar_lXln3JShoE-NaYF_V-DNlp4eLRZhUVkj00wAseSIm-60OoCKznpw=s180",
      'MB':'100',
      'stars':'3.8',
      'suptitle':'Tools '
    },

  ];
  List<Map<String, dynamic>> _datacat = [
    {
      'title': 'Top free',
      'isSelected': true,
    },
    {
      'title': 'Top grossing',
      'isSelected': false,
    },
    {
      'title': 'Trending',
      'isSelected': false,
    },
    {
      'title': 'Top paid',
      'isSelected': false,
    },];
  int _selectedCard = 0;
  Widget _smalllist ({BuildContext context,String title,String imageUrl,String MB,int index,String suptitle ,String stars}) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(index.toString(),style: TextStyle(fontSize: 15, color: Colors.grey),),
          SizedBox(width: 20,),
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
    );
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Column(children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Show installed apps",
                style: TextStyle(fontSize: 13, color: Colors.grey)),
            Switch(
              activeColor: Colors.teal,
              activeTrackColor: Colors.teal.withOpacity(.3),
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.grey.withOpacity(.7),
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  if (isSwitched == false) {
                    isSwitched = true;
                  } else {
                    isSwitched = false;
                  }
                });
              },
            )
          ],),
        SizedBox(
          height: 70,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _datacat.length,
              itemBuilder: (ctx, index) {
                return listItems(
                    catName: _datacat[index]['title'],
                    selected: _datacat[index]['isSelected'],
                    index: index,
                    function: (){
                      setState(() {
                        _datacat[_selectedCard]['isSelected'] = false;
                        _selectedCard = index;
                        _datacat[_selectedCard]['isSelected'] = true;
                      });
                    }
                );
              }),
        ),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: (_selectedCard+1)% 2==0?_datasmallapp.length:_datasmallapp2.length,
              itemBuilder: (ctx, index) {
                if((_selectedCard+1)% 2==0){
                  return _smalllist(
                      context: context,
                      title: _datasmallapp[index]['title'],
                      imageUrl: _datasmallapp[index]['imageUrl'],
                      MB: _datasmallapp[index]['MB'],
                      stars: _datasmallapp[index]['stars'],
                      suptitle: _datasmallapp[index]['suptitle'],
                      index: index+1

                  );
                }
                else{
                  return _smalllist(
                      context: context,
                      title: _datasmallapp2[index]['title'],
                      imageUrl: _datasmallapp2[index]['imageUrl'],
                      MB: _datasmallapp2[index]['MB'],
                      stars: _datasmallapp2[index]['stars'],
                      suptitle: _datasmallapp2[index]['suptitle'],
                      index: index+1
                  );
                }
              }),),
      ],),
    );
  }
}

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}
class _CategoriesState extends State<Categories> {
  List<Map<String, dynamic>> _dataCatego = [
    {
      'title': 'Art & Design',
      'imageUrl': "https://www.freepnglogos.com/uploads/paint-brush-png/amazonm-paint-brush-appstore-android-25.png",
    },
    {
      'title': 'Auto & Vehicles',
      'imageUrl': "https://www.freepnglogos.com/uploads/police-car-png/police-car-department-motor-vehicles-conway-impremedia-16.png",
    },    {
      'title': 'Beauty',
      'imageUrl': "https://www.freepnglogos.com/uploads/tie-png/tie-bjc-the-beauty-and-joy-computing-40.png",
    },    {
      'title': 'Communication',
      'imageUrl': "https://www.freepnglogos.com/uploads/viber-png/call-calls-communication-mobile-phone-viber-icon-15.png",
    },    {
      'title': 'Dating',
      'imageUrl': "https://www.freepnglogos.com/uploads/love-logo-14.png",
    },    {
      'title': 'Entertainment',
      'imageUrl': "https://www.freepnglogos.com/uploads/popcorn-png/popcorn-png-transparent-image-pngpix-1.png",
    },    {
      'title': 'Family',
      'imageUrl': "https://www.freepnglogos.com/uploads/beach-png/family-the-beach-clipart-clip-art-29.jpg",
    },    {
      'title': 'Food & Drinks',
      'imageUrl': "https://www.freepnglogos.com/uploads/food-png/junk-food-archives-classic-0.png",
    },
    {
      'title': 'Games',
      'imageUrl': "https://www.freepnglogos.com/uploads/games-png/play-games-icon-android-iconset-dtafalonso-9.png",
    },


    {
      'title': 'Weather',
      'imageUrl': "https://www.freepnglogos.com/uploads/sun-png/illustration-sun-icon-weather-hot-seem-13.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    Widget _listcatego({String title,String imageUrl}){
      return Container(
          height: 90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(15),
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(imageUrl))),
              ),
              Container(
                child: Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
              ),
            ],
          ));
    }
    return ListView.builder(
        itemCount: _dataCatego.length,
        itemBuilder: (context, index) {
          return _listcatego(
              title: _dataCatego[index]["title"],
              imageUrl: _dataCatego[index]["imageUrl"]
          ) ;
        });
  }
}

class EditorsChoice extends StatefulWidget {
  @override
  _EditorsChoiceState createState() => _EditorsChoiceState();
}
class _EditorsChoiceState extends State<EditorsChoice> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(15)
      ,child:Column(
        children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Explore Editors\' Choice",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          Icon(Icons.clear,color: Colors.grey,size: 25,)
          ],),
          SizedBox(height: 10,),

          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("A rotating selection of the best\napps, handpicked the Play\nStore editors",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey.withOpacity(.8))),
            Icon(Icons.check_circle_outline,color: Colors.blue,size: 50,)
          ],),
          SizedBox(height: 10,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Got it",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal)),
            ],
          ),

        SizedBox(height: 20,),
        MainSmallapps(title: "Editors\'Choice",context: context,listnum: 2)
        ],)
      ,);

  }
}

class Family extends StatefulWidget {
  @override
  _FamilyState createState() => _FamilyState();
}
class _FamilyState extends State<Family> {
  List<String> _mystring=["Ages 5 & Under","Ages 6-8","Ages 9 & Up","Categories"];
  List<Map<String, dynamic>> _datatop = [
    {'title': 'Top free', 'isSelected': true,},
    {'title': 'Trending','isSelected': false,},
    {'title': 'Top paid','isSelected': false,},];
  int _selectedCard = 0;
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


  ];

  List<Map<String, dynamic>> _datasmallapp2 = [
    {
      'title': 'U-Dictionary',
      'imageUrl': "https://lh3.googleusercontent.com/6XZX48IF99e81mUxIWy6MKS_9xMANfSjsAhAHhOJia-RnFmgz4IYy0pO7Yb-mpJD2H-7=s180",
      'MB':'14',
      'stars':'3.8',
      'suptitle':'Productivity '
    },
    {
      'title': 'ZOOM ',
      'imageUrl': "https://lh3.googleusercontent.com/1DqxbUca62LmV1ehZirHGWYBef9Jrtl3DhZ4m6YBnWCUX-XNr3lcnYKb31R-7ukpKAw=s180",
      'MB':'84',
      'stars':'3.8',
      'suptitle':'Social . Multiplayer'
    },
    {
      'title': 'OLX Arabia',
      'imageUrl': "https://lh3.googleusercontent.com/1liH-G9sIASGRiTDzBWjB_w-j-CUhGyXmH-0kseQpGbwX7efwkHj6sgTLn3raqQqsIAs=s180",
      'MB':'34',
      'stars':'3.8',
      'suptitle':'Shopping . Multiplayer'
    },
    {
      'title': 'Akinator',
      'imageUrl': "https://lh3.googleusercontent.com/rjX8LZCV-MaY3o927R59GkEwDOIRLGCXFphaOTeFFzNiYY6SQ4a-B_5t7eUPlGANrcw=s180",
      'MB':'204',
      'stars':'3.8',
      'suptitle':'Social '
    },


  ];
  Widget _smalllist ({BuildContext context,String title,String imageUrl,String MB,int index,String suptitle ,String stars}) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(index.toString(),style: TextStyle(fontSize: 15, color: Colors.grey),),
          SizedBox(width: 20,),
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
    );
  }
  Widget  _listItems({String catName,int index}) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent
      ,highlightColor: Colors.transparent,
      onTap: (){},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 18),
        decoration: BoxDecoration(
            border: Border.all(width: .8, color: Colors.grey),
            borderRadius: BorderRadius.circular(30),
            color:  Colors.transparent),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Text(
              catName,
              style: TextStyle( color:Colors.grey),
            ),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(15),
        children: <Widget>[
          SizedBox(
            height: 67,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _mystring.length,
                itemBuilder: (ctx, index) {
                  return _listItems(
                    catName: _mystring[index],
                    index: index,
                  );
                }),
          ),
          MainSmallapps(context: context,title: "New & updated",listnum: 3),
          MainSmallapps(context: context,title: "Recommended for you",listnum: 4),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Top Charts",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),),
              Icon(Icons.arrow_back,textDirection: TextDirection.rtl,color: Colors.grey,size: 30,)
            ],),
          SizedBox(height: 5,),
          SizedBox(
            height: 70,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _datatop.length,
                itemBuilder: (ctx, index) {
                  return listItems(
                      catName: _datatop[index]['title'],
                      selected: _datatop[index]['isSelected'],
                      index: index,
                      function: (){
                        setState(() {
                          _datatop[_selectedCard]['isSelected'] = false;
                          _selectedCard = index;
                          _datatop[_selectedCard]['isSelected'] = true;
                        });
                      }
                  );
                }),
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: (_selectedCard+1)% 2==0?_datasmallapp.length:_datasmallapp2.length,
                itemBuilder: (ctx, index) {
                  if((_selectedCard+1)% 2==0){
                    return _smalllist(
                        context: context,
                        title: _datasmallapp[index]['title'],
                        imageUrl: _datasmallapp[index]['imageUrl'],
                        MB: _datasmallapp[index]['MB'],
                        stars: _datasmallapp[index]['stars'],
                        suptitle: _datasmallapp[index]['suptitle'],
                        index: index+1

                    );
                  }
                  else{
                    return _smalllist(
                        context: context,
                        title: _datasmallapp2[index]['title'],
                        imageUrl: _datasmallapp2[index]['imageUrl'],
                        MB: _datasmallapp2[index]['MB'],
                        stars: _datasmallapp2[index]['stars'],
                        suptitle: _datasmallapp2[index]['suptitle'],
                        index: index+1
                    );
                  }
                }),),

          MainSmallapps(context: context,title: "Educational games",listnum: 2),
          MainSmallapps(context: context,title: "Offline games",listnum: 1),

        ]
    );
  }
}

class Earlyaccess extends StatefulWidget {
  @override
  _EarlyaccessState createState() => _EarlyaccessState();
}
class _EarlyaccessState extends State<Earlyaccess> {
  @override
  Widget build(BuildContext context) {
    return  Padding(padding: EdgeInsets.only(right: 15,left: 15,top: 10)
      ,child:ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Check out new stuff",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  Icon(Icons.clear,color: Colors.grey,size: 25,)
                ],),
              SizedBox(height: 10,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Get a sneak peek and install apps\n& games that are still in\ndevelopment",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey.withOpacity(.8))),
                  Icon(Icons.wb_incandescent,color: Colors.teal,size: 50,)
                ],),
              SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Learn more",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal)),
                ],
              ),

              SizedBox(height: 20,),
              MainSmallapps(title: "Be the first to play",context: context,listnum: 2),
              MainSmallapps(title: "Pre-registration ",context: context,listnum: 4)

            ],),
        ],
      )
      ,);
  }
}
