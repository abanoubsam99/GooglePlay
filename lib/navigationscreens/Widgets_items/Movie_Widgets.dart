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
          MainMovie(context: context,title: "New movies",listnum: 1),
          MainMovie(context: context,title: "Top-selling movie",listnum: 2),
          MainMovie(context: context,title: "Recommended for you",listnum: 3),
          MainMovie(context: context,title: "New to rent",listnum: 4),
          MainMovie(context: context,title: "Science fiction action movies",listnum: 5),
          MainMovie(context: context,title: "War movies",listnum: 2),
          MainMovie(context: context,title: "Laugh out loud movies",listnum: 4),
          MainMovie(context: context,title: "Thrilling movies",listnum: 3),
          MainMovie(context: context,title: "Sci-fi & fantasy movies",listnum: 5),
          MainMovie(context: context,title: "Scary movies",listnum: 1),
          SizedBox(height: 15,),
        ],
      ),
    );
  }
}

class Topselling extends StatefulWidget {
  @override
  _TopsellingState createState() => _TopsellingState();
}
class _TopsellingState extends State<Topselling> {

  List<Map<String, dynamic>> _datamovie = [
    {
      'title': 'MY SPY',
      'imageUrl': "https://lh3.googleusercontent.com/Bf4Cx_ESjyGRr_SaNA0pkA1mtoApCwg2d8tZjwYYuhDO9XnKNxLVhdbZsjmvHdcqZKKwjWD2Y5LCf6aLqsA=w400-h600",
      'price':'80.0',
      'stars':'4.2',
      'suptitle':'Action & Adventure'
    },
    {
      'title': 'Bloodshot',
      'imageUrl': "https://lh3.googleusercontent.com/7ng0L8YHHFRnqrYb02XO0xGJSXoV7949MMR6tO8PO2osk--6a3fvFkKpZ4Xo9uiN1FLn8DDQsdqP1e9ntvo=w400-h600",
      'price':'100.0',
      'stars':'5',
      'suptitle':'Action & Adventure'

    },
    {
      'title': 'Sonic The Hedgehog',
      'imageUrl': "https://lh3.googleusercontent.com/gTPBPPYzoFfZnX3LnD3cNtJjF10j4j3eUz2go3nwNykER7Ck5UqE5D47dbxv0alYuGZG4nxydLo3h345-dr5=w200-h300",
      'price':'30.4',
      'stars':'3.2',
      'suptitle':'Action & Adventure'

    },
    {
      'title': 'Superman',
      'imageUrl': "https://lh3.googleusercontent.com/utgFMx6_0pdTMJLlPySs68kf-Ux0VIJ0AyZSUxYWHZ4_YXnKRA2q86MLVuB9mA3WfZf_1iM4U4_Azoy8Ug=w200-h300",
      'price':'90',
      'stars':'4.6',
      'suptitle':'Action & Adventure'

    },
    {
      'title': 'Harry Potter ',
      'imageUrl': "https://lh3.googleusercontent.com/llQBqm13gzbM37I9HIsVmkyxc2f-ql38TpFLdqTnP1_-0j2jK_eFap5LVowpvnqN3CrP=w200-h300",
      'price':'50.5',
      'stars':'3.9',
      'suptitle':'Action & Adventure'

    },
    {
      'title': 'Spider-Man',
      'imageUrl': "https://lh3.googleusercontent.com/nxWjOiNZKJZ8mfVLTqxWprprDXhO-D1S1C_S-m7VLWHBp32IziTVMs1u5R6ISb79zTKK=w200-h300",
      'price':'120.0',
      'stars':'4.2',
      'suptitle':'Action & Adventure'

    },

  ];
  Widget _Movilist ({BuildContext context,String title,String imageUrl,String price,int index,String suptitle ,String stars}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 91,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(index.toString(),style: TextStyle(fontSize: 15, color: Colors.grey),),
            SizedBox(width: 20,),
            Container(
              width: MediaQuery.of(context).size.width/6,
              height: 90,
              decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(5),
                  image: DecorationImage(
                      image: NetworkImage(
                          imageUrl),
                      fit: BoxFit.cover)),
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  ],
                ),
                Text(
                  "EGP $price ",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Column(children: <Widget>[
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount:_datamovie.length,
              itemBuilder: (ctx, index) {
                  return _Movilist(
                      context: context,
                      title: _datamovie[index]['title'],
                      imageUrl: _datamovie[index]['imageUrl'],
                      price: _datamovie[index]['price'],
                      stars: _datamovie[index]['stars'],
                      suptitle: _datamovie[index]['suptitle'],
                      index: index+1
                  );
              }),),
      ],),
    );
  }
}

class Newreleases extends StatefulWidget {
  @override
  _NewreleasesState createState() => _NewreleasesState();
}
class _NewreleasesState extends State<Newreleases> {

  List<Map<String, dynamic>> _datamovie2 = [
    {
      'title': 'باد بويز فور لايف',
      'imageUrl': "https://lh3.googleusercontent.com/X_8jHhwO1rHW9UHWeFapa-UVThLG66p8aaXuc9-juJNv9dX1B8ao_oZC0iB-RgnZ7O4ZmyCsfwGawqqVZYQ=w200-h300",
      'price':'200',
      'stars':'4.2',
      'suptitle':'Action & Adventure'

    },
    {
      'title': 'Harry Potter',
      'imageUrl': "https://lh3.googleusercontent.com/k20SLgBYYou445TeVz8oWo-ba7rifGOVYeghk8MqrLbbQCS5SK9yQ4J5DQlEaVYGAK0=w200-h300",
      'price':'300',
      'stars':'3.2',
      'suptitle':'Action & Adventure'

    },
    {
      'title': '1917',
      'imageUrl': "https://lh3.googleusercontent.com/bstpvwaUFaQBN40k8ehqZhSFk7nyOmCYIZ4yYfldicd9SomUwcPLdVm6II7L2Hb5LwyoXKKOQVXw5_Q6u5d3=w200-h300",
      'price':'150',
      'stars':'5',
      'suptitle':'Action & Adventure'

    },
    {
      'title': 'Birds Of Prey',
      'imageUrl': "https://lh3.googleusercontent.com/FiJfh-tvMtjNt7NfUmwV96qiVj6NCNRNRqNEvPbWj5KdHiagzEyW9ILXGdUlYOuKJCyqNVcGBIry03NcaTM=w200-h300",
      'price':'250',
      'stars':'3.7',
      'suptitle':'Action & Adventure'

    },
    {
      'title': 'Spider-Man',
      'imageUrl': "https://lh3.googleusercontent.com/gY5XpJheVfLOqU101IwAC27Rw4yp03SzrLwsAtxWFfOycoV0LfxCfIFmFdr_PMmiV51vXQ=w200-h300",
      'price':'40',
      'stars':'4.2',
      'suptitle':'Action & Adventure'

    },
    {
      'title': 'THE GENTLEMEN',
      'imageUrl': "https://lh3.googleusercontent.com/iKYfrRyPMkOFXLU68gO26BlQGFAH1DB4zpj6EX4cd50uRsoGsP2RvTRKSbKOf3IztZ2L3B-HOLb9tSNM9MA=w200-h300",
      'price':'80',
      'stars':'4.9',
      'suptitle':'Action & Adventure'

    },

  ];
  Widget _Movilist ({BuildContext context,String title,String imageUrl,String price,int index,String suptitle ,String stars}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 91,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(index.toString(),style: TextStyle(fontSize: 15, color: Colors.grey),),
            SizedBox(width: 20,),
            Container(
              width: MediaQuery.of(context).size.width/6,
              height: 90,
              decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(5),
                  image: DecorationImage(
                      image: NetworkImage(
                          imageUrl),
                      fit: BoxFit.cover)),
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  ],
                ),
                Text(
                  "EGP $price ",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Column(children: <Widget>[
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount:_datamovie2.length,
              itemBuilder: (ctx, index) {
                return _Movilist(
                    context: context,
                    title: _datamovie2[index]['title'],
                    imageUrl: _datamovie2[index]['imageUrl'],
                    price: _datamovie2[index]['price'],
                    stars: _datamovie2[index]['stars'],
                    suptitle: _datamovie2[index]['suptitle'],
                    index: index+1
                );
              }),),
      ],),
    );
  }
}

class Genres extends StatefulWidget {
  @override
  _GenresState createState() => _GenresState();
}
class _GenresState extends State<Genres> {
  List<Map<String, dynamic>> _dataCatego = [
    {
      'title': 'Action & adventure',
      'imageUrl': "https://www.freepnglogos.com/uploads/terminator-png/video-game-action-figure-terminator-judgement-17.png",
    },
    {
      'title': 'Animation',
      'imageUrl': "https://www.freepnglogos.com/uploads/minions-png/minions-png-site-news-animation-27.png",
    },    {
      'title': 'Comedy',
      'imageUrl': "https://www.freepnglogos.com/uploads/troll-face-png/troll-face-graphics-for-facebook-cover-meme-comic-23.png",
    },    {
      'title': 'Documentary',
      'imageUrl': "https://www.freepnglogos.com/uploads/film-reel-png/vector-graphic-film-reel-cinema-film-movie-3.png",
    },    {
      'title': 'Drama',
      'imageUrl': "https://www.freepnglogos.com/uploads/oscar-png/oscar-icon-oscar-cinema-20.png",
    },    {
      'title': 'Horror',
      'imageUrl': "https://www.freepnglogos.com/uploads/zombie-png/illustration-zombie-man-spooky-horror-38.png",
    },

  ];
  @override
  Widget build(BuildContext context) {
    Widget _listmovie({String title,String imageUrl}){
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
          return _listmovie(
              title: _dataCatego[index]["title"],
              imageUrl: _dataCatego[index]["imageUrl"]
          ) ;
        });
  }
}

class Studios extends StatefulWidget {
  @override
  _StudiosState createState() => _StudiosState();
}
class _StudiosState extends State<Studios> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10,left: 10),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          MainMovie(context: context,title: "20th Century Studios movies",listnum: 5),
          MainMovie(context: context,title: "Warner movies",listnum: 4),
          MainMovie(context: context,title: "Paramount movies",listnum: 2),
          MainMovie(context: context,title: "Sony movies",listnum: 1),

          SizedBox(height: 15,),
        ],
      ),
    );
  }
}

