import 'package:finalgoogleplay/navigationscreens/Widgets_items/Containers_items.dart';
import 'package:flutter/material.dart';

class Foryou extends StatefulWidget {
  @override
  _ForyouState createState() => _ForyouState();
}
class _ForyouState extends State<Foryou> {
  List<Map<String, dynamic>> _datasmall = [
    {
      'title': 'Candy Crush Saga',
      'imageUrl': "https://lh3.googleusercontent.com/RUwaKZyft2lCAQ_SAKIsq1eRZ4qayMB3_kMv_nftJjgY78LywAOD9QpEn9VWolIywWRZ=s360",
      'MB':'35'
    },
    {
      'title': 'Subway Surfers',
      'imageUrl': "https://lh3.googleusercontent.com/jUsiig3d-ntQuAg5fttEZtLBycPhm2Jjpj6OOyFzjUQ6JTlLzyFjbDsOhi9faQjZNz4=s360",
      'MB':'40'
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
  List<Map<String, dynamic>> _datasmall2 = [
    {
      'title': 'Tiles Hop',
      'imageUrl': "https://lh3.googleusercontent.com/mYXRvkAN-NgcdiJu1owpVtGPYKyAZTo1AaIflJ7qlkLDBtpkBw2W_bytIwg9I5m4826f=s360",
      'MB':'14'
    },
    {
      'title': 'Call of Duty',
      'imageUrl': "https://lh3.googleusercontent.com/6lEEhm2WZojAbZ1uqRJb-KEmT24xydDd5I0QjABtlNOeDr9NrNxztXe67AArHUFuqSI=s360",
      'MB':'240'
    },
    {
      'title': 'Candy Crush Saga',
      'imageUrl': "https://lh3.googleusercontent.com/RUwaKZyft2lCAQ_SAKIsq1eRZ4qayMB3_kMv_nftJjgY78LywAOD9QpEn9VWolIywWRZ=s360",
      'MB':'35'
    },
    {
      'title': 'Subway Surfers',
      'imageUrl': "https://lh3.googleusercontent.com/jUsiig3d-ntQuAg5fttEZtLBycPhm2Jjpj6OOyFzjUQ6JTlLzyFjbDsOhi9faQjZNz4=s360",
      'MB':'40'
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

  ];
  List<Map<String, dynamic>> _datacat = [
    {
      'title': 'Action',
      'isSelected': true,
    },
    {
      'title': 'Adventure',
      'isSelected': false,
    },
    {
      'title': 'Arcade',
      'isSelected': false,
    },
    {
      'title': 'Board Games',
      'isSelected': false,
    },
    {
      'title': 'Cards',
      'isSelected': false,
    },
    {
      'title': 'Casual',
      'isSelected': false,
    },
    {
      'title': 'Education',
      'isSelected': false,
    },
    {
      'title': 'Multiplayer',
      'isSelected': false,
    },
    {
      'title': 'Puzzles',
      'isSelected': false,
    },
    {
      'title': 'RPGs',
      'isSelected': false,
    },
    {
      'title': 'Rhythm Games',
      'isSelected': false,
    },
  ];
  int _selectedCard = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10,left: 10),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          //bannar 170 / two  200 / small  140 /big 230
          Maintwo(context: context,title: "Discover recommended games",listnum: 1),
          MainSmall(context: context,title: "Suggested",listnum: 1),
          Mainbig(context: context,title: "Adventure games ",listnum: 1),
          MainSmall(context: context,title: "Pre-registration games ",listnum: 2),
          MainSmall(context: context,title: "New & updated games " ,listnum: 1),
          MainSmall(context: context,title: "Top rated games ",listnum: 2),
          banner_container(context),
          SizedBox(height: 10,),
          Text("Discovery something new",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
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
          SizedBox(height: 10,),
          SizedBox(
            height: 140,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _datasmall.length,
                itemBuilder: (ctx, index) {
                  if((_selectedCard+1)% 2==0){
                    return small_container(
                        context: context,
                        title: _datasmall[index]['title'],
                        imageUrl: _datasmall[index]['imageUrl'],
                        MB: _datasmall[index]['MB']

                    );
                  }
                  else{
                    return small_container(
                        context: context,
                        title: _datasmall2[index]['title'],
                        imageUrl: _datasmall2[index]['imageUrl'],
                        MB: _datasmall2[index]['MB']
                    );
                  }
                }),
          ),
          MainSmall(context: context,title: "Premium games",listnum: 1),
          MainSmall(context: context,title: "Family apps",listnum: 2),
          MainSmall(context: context,title: "Recommended for you",listnum: 1),
          MainSmall(context: context,title: "Rule the arcade",listnum: 2),
          MainSmall(context: context,title: "Abstract graphics",listnum: 1),
          Maintwo(context: context,title: "Puzzle games",listnum: 2),
          MainSmall(context: context,title: "Music video games",listnum: 2),
          MainSmall(context: context,title: "Racing games",listnum: 1),
          Maintwo(context: context,title: "Quiz games",listnum: 1),
          SizedBox(height: 15,),
        ],
      ),
    );
  }
}

class Premium extends StatefulWidget {
  @override
  _PremiumState createState() => _PremiumState();
}
class _PremiumState extends State<Premium> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> _datasmall = [
      {
        'title': '8 Ball Pool',
        'imageUrl': "https://lh3.googleusercontent.com/bPz1guJ6FHF3oIOEy3KqwpaDDKO-hLRaZoyzmM8bLFLN8fWm6L0_EuUnkwv9iqPo3Ag=s360",
        'MB':'12',
        'Price':"79.24"

      },
      {
        'title': 'Call of Duty',
        'imageUrl': "https://lh3.googleusercontent.com/6lEEhm2WZojAbZ1uqRJb-KEmT24xydDd5I0QjABtlNOeDr9NrNxztXe67AArHUFuqSI=s360",
        'MB':'240',
        'Price':"90.20"

      },
      {
        'title': 'Candy Crush Saga',
        'imageUrl': "https://lh3.googleusercontent.com/RUwaKZyft2lCAQ_SAKIsq1eRZ4qayMB3_kMv_nftJjgY78LywAOD9QpEn9VWolIywWRZ=s360",
        'MB':'35',
        'Price':"410.24"

      },
      {
        'title': 'Subway Surfers',
        'imageUrl': "https://lh3.googleusercontent.com/jUsiig3d-ntQuAg5fttEZtLBycPhm2Jjpj6OOyFzjUQ6JTlLzyFjbDsOhi9faQjZNz4=s360",
        'MB':'40',
        'Price':"51.30"

      },
      {
        'title': 'Candy Crush Saga',
        'imageUrl': "https://lh3.googleusercontent.com/RUwaKZyft2lCAQ_SAKIsq1eRZ4qayMB3_kMv_nftJjgY78LywAOD9QpEn9VWolIywWRZ=s360",
        'MB':'35',
      'Price':"33.27"

      },

    ];
    List<Map<String, dynamic>> _datasmall2= [
      {
        'title': 'Candy Crush Saga',
        'imageUrl': "https://lh3.googleusercontent.com/RUwaKZyft2lCAQ_SAKIsq1eRZ4qayMB3_kMv_nftJjgY78LywAOD9QpEn9VWolIywWRZ=s360",
        'MB':'35',
        'Price':"10.20"
      },
      {
        'title': 'Subway Surfers',
        'imageUrl': "https://lh3.googleusercontent.com/jUsiig3d-ntQuAg5fttEZtLBycPhm2Jjpj6OOyFzjUQ6JTlLzyFjbDsOhi9faQjZNz4=s360",
        'MB':'40',
      'Price':"150.20"
      },
      {
        'title': 'Tiles Hop',
        'imageUrl': "https://lh3.googleusercontent.com/mYXRvkAN-NgcdiJu1owpVtGPYKyAZTo1AaIflJ7qlkLDBtpkBw2W_bytIwg9I5m4826f=s360",
        'MB':'14',
        'Price':"10.20"

      },
      {
        'title': 'PUBG MOBILE LITE',
        'imageUrl': "https://lh3.googleusercontent.com/rx0ZCsJKclk51Am-NRHOgCgcOpQu5qoWxMsRiRxZpA425wXpMgiQ_RdjfyD6OcQ2RUcS=s360",
        'MB':'300',
        'Price':"10.6"

      },
      {
        'title': '8 Ball Pool',
        'imageUrl': "https://lh3.googleusercontent.com/bPz1guJ6FHF3oIOEy3KqwpaDDKO-hLRaZoyzmM8bLFLN8fWm6L0_EuUnkwv9iqPo3Ag=s360",
        'MB':'12',
        'Price':"79.24"

      },
      {
        'title': 'Call of Duty',
        'imageUrl': "https://lh3.googleusercontent.com/6lEEhm2WZojAbZ1uqRJb-KEmT24xydDd5I0QjABtlNOeDr9NrNxztXe67AArHUFuqSI=s360",
        'MB':'240',
        'Price':"90.20"

      },

    ];
    Widget _small_container ({BuildContext context,String title,String imageUrl,String MB,String Price}) {
      return Container(
        width: MediaQuery.of(context).size.width/4+20,
        height: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width/4,
              height: 90,
              decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(
                          imageUrl),
                      fit: BoxFit.fill)),
            ),
            SizedBox(height: 5,),
            Text(title,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(.8))),
            SizedBox(height: 3,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "$MB MB",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Text(
                  "  EGP $Price",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            )
          ],
        ),
      );
    }
    Widget _MainSmall({BuildContext context,String title,int listnum}) {
      return Column(children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(title,style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),),
            Icon(Icons.arrow_back,textDirection: TextDirection.rtl,color: Colors.grey,size: 30,)
          ],),
        SizedBox(height: 10,),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 140,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listnum==1?_datasmall.length:_datasmall2.length,
              itemBuilder: (context, i) {
                if(listnum==1){
                  return _small_container(
                      context: context,
                      title: _datasmall[i]['title'],
                      imageUrl: _datasmall[i]['imageUrl'],
                      MB: _datasmall[i]['MB'],
                    Price: _datasmall[i]['Price']
                  );
                }
                else{
                  return _small_container(
                      context: context,
                      title: _datasmall2[i]['title'],
                      imageUrl: _datasmall2[i]['imageUrl'],
                      MB: _datasmall2[i]['MB'],
                      Price: _datasmall2[i]['Price']

                  );
                }

              }),
        ),
      ],
      );
    }

    return Padding(
      padding: const EdgeInsets.only(right: 10,left: 10),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Maintwo(context: context,title: "The essentials",listnum: 2),
          _MainSmall(context: context,title: "Editors\'picks",listnum: 2),
          _MainSmall(context: context,title: "Premium indie games",listnum: 1),
          _MainSmall(context: context,title: "Ball games",listnum: 2),
          _MainSmall(context: context,title: "Non-stop action",listnum: 1),
          _MainSmall(context: context,title: "Recommended foe you",listnum: 2),
          _MainSmall(context: context,title: "Earn your wings",listnum: 1),
          _MainSmall(context: context,title: "Editors\'picks",listnum: 2),
          Mainbig(context: context,title: "Editors\'picks",listnum: 2),


        ],
      ),
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
      'title': 'Action',
      'imageUrl': "https://www.freepnglogos.com/uploads/helicopter-png/helicopter-pilot-training-programmes-baa-flight-school-14.png",
    },
    {
      'title': 'Adventure',
      'imageUrl': "https://www.freepnglogos.com/uploads/compass-png/compass-png-transparent-image-pngpix-4.png",
    },    {
      'title': 'Arcade',
      'imageUrl': "https://www.freepnglogos.com/uploads/bobcat-png-logo/bobcat-machine-logo-png-6.png",
    },    {
      'title': 'Board',
      'imageUrl': "https://www.freepnglogos.com/uploads/chess-png/chess-pieces-transparent-png-13.png",
    },    {
      'title': 'Card',
      'imageUrl': "https://www.freepnglogos.com/uploads/cards-png/playing-cards-download-clip-art-clip-art-8.png",
    },    {
      'title': 'Casino',
      'imageUrl': "https://www.freepnglogos.com/uploads/dice-png/dice-transparent-png-pictures-icons-and-png-backgrounds-5.png",
    },    {
      'title': 'Educational',
      'imageUrl': "https://www.freepnglogos.com/uploads/microscope-png/microscope-icon-desktop-education-icons-softiconsm-13.png",
    },    {
      'title': 'Music',
      'imageUrl': "https://www.freepnglogos.com/uploads/music-folder-anything-music-logo-png-2.png",
    },
    {
      'title': 'Puzzle',
      'imageUrl': "https://www.freepnglogos.com/uploads/rubiks-cube-png/rubiks-cube-illustration-rubik-cube-puzzle-game-ern-image-pixabay-9.png",
    },
    {
      'title': 'Sports',
      'imageUrl': "https://www.freepnglogos.com/uploads/football-png/download-football-ball-image-hq-0.png",
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
      ,child: MainSmall(title: "Editors\'Choice",context: context,listnum: 2)
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
  List<Map<String, dynamic>> _datasmall = [
    {
      'title': 'Candy Crush Saga',
      'imageUrl': "https://lh3.googleusercontent.com/RUwaKZyft2lCAQ_SAKIsq1eRZ4qayMB3_kMv_nftJjgY78LywAOD9QpEn9VWolIywWRZ=s360",
      'MB':'35',
      'stars':'3.8',
      'suptitle':'Action . Multiplayer'
    },
    {
      'title': 'Subway Surfers',
      'imageUrl': "https://lh3.googleusercontent.com/jUsiig3d-ntQuAg5fttEZtLBycPhm2Jjpj6OOyFzjUQ6JTlLzyFjbDsOhi9faQjZNz4=s360",
      'MB':'40',
      'stars':'5',
      'suptitle':'Action . Multiplayer'
    },
    {
      'title': 'Tiles Hop',
      'imageUrl': "https://lh3.googleusercontent.com/mYXRvkAN-NgcdiJu1owpVtGPYKyAZTo1AaIflJ7qlkLDBtpkBw2W_bytIwg9I5m4826f=s360",
      'MB':'14',
      'stars':'4.3',
      'suptitle':'Action . Multiplayer'
    },
    {
      'title': 'PUBG MOBILE LITE',
      'imageUrl': "https://lh3.googleusercontent.com/rx0ZCsJKclk51Am-NRHOgCgcOpQu5qoWxMsRiRxZpA425wXpMgiQ_RdjfyD6OcQ2RUcS=s360",
      'MB':'300',
      'stars':'2.4',
      'suptitle':'Action . Multiplayer'
    },


  ];
  List<Map<String, dynamic>> _datasmall2 = [
    {
      'title': 'Tiles Hop',
      'imageUrl': "https://lh3.googleusercontent.com/mYXRvkAN-NgcdiJu1owpVtGPYKyAZTo1AaIflJ7qlkLDBtpkBw2W_bytIwg9I5m4826f=s360",
      'MB':'14',
      'stars':'4.2',
      'suptitle':'Action . Multiplayer'
    },
    {
      'title': 'Call of Duty',
      'imageUrl': "https://lh3.googleusercontent.com/6lEEhm2WZojAbZ1uqRJb-KEmT24xydDd5I0QjABtlNOeDr9NrNxztXe67AArHUFuqSI=s360",
      'MB':'240',
      'stars':'3.3',
      'suptitle':'Action . Multiplayer'
    },
    {
      'title': 'Candy Crush Saga',
      'imageUrl': "https://lh3.googleusercontent.com/RUwaKZyft2lCAQ_SAKIsq1eRZ4qayMB3_kMv_nftJjgY78LywAOD9QpEn9VWolIywWRZ=s360",
      'MB':'35',
      'stars':'4.8',
      'suptitle':'Action . Multiplayer'
    },
    {
      'title': 'Subway Surfers',
      'imageUrl': "https://lh3.googleusercontent.com/jUsiig3d-ntQuAg5fttEZtLBycPhm2Jjpj6OOyFzjUQ6JTlLzyFjbDsOhi9faQjZNz4=s360",
      'MB':'40',
      'stars':'5',
      'suptitle':'Action . Multiplayer'
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
          MainSmall(context: context,title: "New & updated",listnum: 2),
          MainSmall(context: context,title: "Recommended for you",listnum: 1),
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
                itemCount: (_selectedCard+1)% 2==0?_datasmall.length:_datasmall2.length,
                itemBuilder: (ctx, index) {
                  if((_selectedCard+1)% 2==0){
                    return _smalllist(
                        context: context,
                        title: _datasmall[index]['title'],
                        imageUrl: _datasmall[index]['imageUrl'],
                        MB: _datasmall[index]['MB'],
                        stars: _datasmall[index]['stars'],
                        suptitle: _datasmall[index]['suptitle'],
                        index: index+1

                    );
                  }
                  else{
                    return _smalllist(
                        context: context,
                        title: _datasmall2[index]['title'],
                        imageUrl: _datasmall2[index]['imageUrl'],
                        MB: _datasmall2[index]['MB'],
                        stars: _datasmall2[index]['stars'],
                        suptitle: _datasmall2[index]['suptitle'],
                        index: index+1
                    );
                  }
                }),),

          MainSmall(context: context,title: "Educational games",listnum: 2),
          MainSmall(context: context,title: "Offline games",listnum: 1),

        ]
    );
  }
}

class Topcharts extends StatefulWidget {
  @override
  _TopchartsState createState() => _TopchartsState();
}
class _TopchartsState extends State<Topcharts> {
  bool isSwitched = true;
  List<Map<String, dynamic>> _datasmall = [
    {
      'title': 'Candy Crush Saga',
      'imageUrl': "https://lh3.googleusercontent.com/RUwaKZyft2lCAQ_SAKIsq1eRZ4qayMB3_kMv_nftJjgY78LywAOD9QpEn9VWolIywWRZ=s360",
      'MB':'35',
      'stars':'3.8',
      'suptitle':'Action . Multiplayer'
    },
    {
      'title': 'Subway Surfers',
      'imageUrl': "https://lh3.googleusercontent.com/jUsiig3d-ntQuAg5fttEZtLBycPhm2Jjpj6OOyFzjUQ6JTlLzyFjbDsOhi9faQjZNz4=s360",
      'MB':'40',
      'stars':'5',
      'suptitle':'Action . Multiplayer'
    },
    {
      'title': 'Tiles Hop',
      'imageUrl': "https://lh3.googleusercontent.com/mYXRvkAN-NgcdiJu1owpVtGPYKyAZTo1AaIflJ7qlkLDBtpkBw2W_bytIwg9I5m4826f=s360",
      'MB':'14',
      'stars':'4.3',
      'suptitle':'Action . Multiplayer'
    },
    {
      'title': 'PUBG MOBILE LITE',
      'imageUrl': "https://lh3.googleusercontent.com/rx0ZCsJKclk51Am-NRHOgCgcOpQu5qoWxMsRiRxZpA425wXpMgiQ_RdjfyD6OcQ2RUcS=s360",
      'MB':'300',
      'stars':'2.4',
      'suptitle':'Action . Multiplayer'
    },
    {
      'title': '8 Ball Pool',
      'imageUrl': "https://lh3.googleusercontent.com/bPz1guJ6FHF3oIOEy3KqwpaDDKO-hLRaZoyzmM8bLFLN8fWm6L0_EuUnkwv9iqPo3Ag=s360",
      'MB':'12',
      'stars':'1.4',
      'suptitle':'Action . Multiplayer'
    },
    {
      'title': 'Call of Duty',
      'imageUrl': "https://lh3.googleusercontent.com/6lEEhm2WZojAbZ1uqRJb-KEmT24xydDd5I0QjABtlNOeDr9NrNxztXe67AArHUFuqSI=s360",
      'MB':'240',
      'stars':'4.0',
      'suptitle':'Action . Multiplayer'
    },

  ];
  List<Map<String, dynamic>> _datasmall2 = [
    {
      'title': 'Tiles Hop',
      'imageUrl': "https://lh3.googleusercontent.com/mYXRvkAN-NgcdiJu1owpVtGPYKyAZTo1AaIflJ7qlkLDBtpkBw2W_bytIwg9I5m4826f=s360",
      'MB':'14',
      'stars':'4.2',
      'suptitle':'Action . Multiplayer'
    },
    {
      'title': 'Call of Duty',
      'imageUrl': "https://lh3.googleusercontent.com/6lEEhm2WZojAbZ1uqRJb-KEmT24xydDd5I0QjABtlNOeDr9NrNxztXe67AArHUFuqSI=s360",
      'MB':'240',
      'stars':'3.3',
      'suptitle':'Action . Multiplayer'
    },
    {
      'title': 'Candy Crush Saga',
      'imageUrl': "https://lh3.googleusercontent.com/RUwaKZyft2lCAQ_SAKIsq1eRZ4qayMB3_kMv_nftJjgY78LywAOD9QpEn9VWolIywWRZ=s360",
      'MB':'35',
      'stars':'4.8',
      'suptitle':'Action . Multiplayer'
    },
    {
      'title': 'Subway Surfers',
      'imageUrl': "https://lh3.googleusercontent.com/jUsiig3d-ntQuAg5fttEZtLBycPhm2Jjpj6OOyFzjUQ6JTlLzyFjbDsOhi9faQjZNz4=s360",
      'MB':'40',
      'stars':'5',
      'suptitle':'Action . Multiplayer'
    },

    {
      'title': 'PUBG MOBILE LITE',
      'imageUrl': "https://lh3.googleusercontent.com/rx0ZCsJKclk51Am-NRHOgCgcOpQu5qoWxMsRiRxZpA425wXpMgiQ_RdjfyD6OcQ2RUcS=s360",
      'MB':'300',
      'stars':'2.4',
      'suptitle':'Action . Multiplayer'
    },
    {
      'title': '8 Ball Pool',
      'imageUrl': "https://lh3.googleusercontent.com/bPz1guJ6FHF3oIOEy3KqwpaDDKO-hLRaZoyzmM8bLFLN8fWm6L0_EuUnkwv9iqPo3Ag=s360",
      'MB':'12',
      'stars':'3.4',
      'suptitle':'Action . Multiplayer'
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
            itemCount: (_selectedCard+1)% 2==0?_datasmall.length:_datasmall2.length,
            itemBuilder: (ctx, index) {
              if((_selectedCard+1)% 2==0){
                return _smalllist(
                    context: context,
                    title: _datasmall[index]['title'],
                    imageUrl: _datasmall[index]['imageUrl'],
                    MB: _datasmall[index]['MB'],
                  stars: _datasmall[index]['stars'],
                  suptitle: _datasmall[index]['suptitle'],
                  index: index+1

                );
              }
              else{
                return _smalllist(
                    context: context,
                    title: _datasmall2[index]['title'],
                    imageUrl: _datasmall2[index]['imageUrl'],
                    MB: _datasmall2[index]['MB'],
                    stars: _datasmall2[index]['stars'],
                    suptitle: _datasmall2[index]['suptitle'],
                    index: index+1
                );
              }
            }),),
      ],),
    );
  }
}












