import 'package:finalgoogleplay/SearchScreen.dart';
import 'package:finalgoogleplay/bottomSheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Gridviewapps extends StatefulWidget {
  final String titles;
  final int Type_gridview;
  Gridviewapps({this.titles,this.Type_gridview});
  @override
  _GridviewappsState createState() => _GridviewappsState();
}

class _GridviewappsState extends State<Gridviewapps> {
  int type =0;
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
  List<Map<String, dynamic>> _datagame = [
    {
      'title': 'Stardew Valley',
      'MB':'EGP 149.99',
      'imageUrl':  'https://lh3.googleusercontent.com/He92papZcOmkgTi1sLHXQQb02aoyRtJ8ml96njM_cSAcpHhILvxMjhLix4mYEIKXPq4',
    },
    {
      'title':'Legends Of\nRuneterra',
      'MB':    '53MB',

      'imageUrl':    'https://www.apkmirror.com/wp-content/uploads/2020/08/95/5f454b7490114.png',
    },
    {
      'title':  'Merge Magic!',
      'MB':    '113MB',
      'imageUrl': 'https://lh3.googleusercontent.com/I7QZSeLG6PBIumwKEjNrse6hnW7C_foVgAvSYDWudM5e-Xc-pCcK8MHNbvtCYlDMLMHg',
    },
    {
      'title': 'Pirates Outlaws',
      'MB':    'EGP 16.99',

      'imageUrl':    'https://lh3.googleusercontent.com/lQxDE88wQEiSuyDiJ3I0cbh4TDcTgOzKSaiiDtN8gnVfJmGQ-56f6S3OOqeY0s7PxA',

    },
    {
      'title':  'Clash Of Clans',
      'MB':    '144MB',
      'imageUrl':    'https://lh3.googleusercontent.com/akv2Bdp7i5Vv-sl9FuP3_dhWpUO80zULf-Pkh6RFleomEp6pZorHuCNm3FbR9oAMunVK',

    },
    {
      'title':  'Subway Surfers',
      'MB':    '99MB',

      'imageUrl':    'https://images-na.ssl-images-amazon.com/images/I/81WukDpNx-L.png',

    },
    {
      'title':  'Mario Kart Tour',
      'MB':    '129MB',

      'imageUrl':    'https://lh3.googleusercontent.com/jd_ZEZPrw1cb9jhh4ahq2AQmatyHooba15lDPyCTmne9Pffoy6yLaYxKpjcXGLPBi40',

    },
    {
      'title':   'Asphalt Xtreme:\nRally Racing',
      'MB':    '1.3MB',

      'imageUrl':    'https://lh3.googleusercontent.com/1CAHVQrzr5yZciKia1Ird83gGin2CqJGuEOvX44gMK-FZ61epy6mTSGa9t1m_Owd1PLr',

    },
    {
      'title':   'Cooking\nAdventure^',
      'MB':    '140MB',

      'imageUrl':    'https://is4-ssl.mzstatic.com/image/thumb/Purple124/v4/01/d9/0b/01d90b01-36b8-dd36-e3b6-391c152dc49b/source/512x512bb.jpg',

    },
    {
      'title':    'Angry Birds',
      'MB':    'EGP 149.99',

      'imageUrl':    'https://store-images.s-microsoft.com/image/apps.21535.13744440662592274.122321b0-7d72-42e1-9e1f-5a59e44ad1f1.459a16fe-1dde-4f14-bf95-e48f0140b1bc',

    },
    {
      'title':   'Arrows',
      'MB':    'EGP 149.99',

      'imageUrl':    'https://d2e2mp7ayybvtj.cloudfront.net/desktop/thumbs/archery-king-online-game.jpg',

    },
    {
      'title':   'Chickens',
      'MB':    'EGP 149.99',
      'imageUrl':   'https://is2-ssl.mzstatic.com/image/thumb/Purple113/v4/d1/73/76/d17376ed-c5c3-4238-d04f-3995932612ee/source/512x512bb.jpg'

    },
  ];
  List<Map<String, dynamic>> _datasmallapp = [
    {
      'title': 'TikTok Lite',
      'imageUrl': "https://lh3.googleusercontent.com/LLUZLIcA7MbM5yLwAA-oTAt3q5kdDjIIfrEqR2mGLAxvVJcwruxJYQChwPDahLvSjFc=s180",
      'MB':'40'
    },
    {
      'title': 'WhatsApp Messenger',
      'imageUrl': "https://lh3.googleusercontent.com/bYtqbOcTYOlgc6gqZ2rwb8lptHuwlNE75zYJu6Bn076-hTmvd96HH-6v7S0YUAAJXoJN=s180",
      'MB':'15'
    },
    {
      'title': 'talabat',
      'imageUrl': "https://lh3.googleusercontent.com/2EOhV_NEYBaMxUId9urnt2bmYInGfMquLg2bRLEWysFZIYIPdqapkETzr1YWPfNEOZDE=s180",
      'MB':'40'
    },
    {
      'title': 'جوميا ',
      'imageUrl': "https://lh3.googleusercontent.com/kQLKpwl2MAxdDxMShTcnkUWXki7DRC7wDvdC8mM1mL_Pap0-a4YdlWPS5M4_jbGYLHg=s180",
      'MB':'132'
    },
    {
      'title': 'My WE',
      'imageUrl': "https://lh3.googleusercontent.com/qQVRJ-vRWHVuUsIOrDCGLe3yTf186b4ZPCws14cl2YJstPq75BpLHRDljQCVlkZz5Q=s180",
      'MB':'5'
    },
    {
      'title': 'Twitter',
      'imageUrl': "https://lh3.googleusercontent.com/x3XxTcEYG6hYRZwnWAUfMavRfNNBl8OZweUgZDf2jUJ3qjg2p91Y8MudeXumaQLily0=s180",
      'MB':'45'
    },
    {
      'title': 'U-Dictionary',
      'imageUrl': "https://lh3.googleusercontent.com/6XZX48IF99e81mUxIWy6MKS_9xMANfSjsAhAHhOJia-RnFmgz4IYy0pO7Yb-mpJD2H-7=s180",
      'MB':'14'
    },
    {
      'title': 'ZOOM ',
      'imageUrl': "https://lh3.googleusercontent.com/1DqxbUca62LmV1ehZirHGWYBef9Jrtl3DhZ4m6YBnWCUX-XNr3lcnYKb31R-7ukpKAw=s180",
      'MB':'84'
    },
    {
      'title': 'OLX Arabia',
      'imageUrl': "https://lh3.googleusercontent.com/1liH-G9sIASGRiTDzBWjB_w-j-CUhGyXmH-0kseQpGbwX7efwkHj6sgTLn3raqQqsIAs=s180",
      'MB':'34'
    },
    {
      'title': 'Akinator',
      'imageUrl': "https://lh3.googleusercontent.com/rjX8LZCV-MaY3o927R59GkEwDOIRLGCXFphaOTeFFzNiYY6SQ4a-B_5t7eUPlGANrcw=s180",
      'MB':'204'
    },
    {
      'title': 'QR & Barcode Reader',
      'imageUrl': "https://lh3.googleusercontent.com/-CvY0c-MmYQf2xaJQ6TVj_PZO4lpKG3T-i78UOolkpMxwlUen3KsakPA7I8OOwjOx_Q=s180",
      'MB':'80'
    },
    {
      'title': 'SoundCloud',
      'imageUrl': "https://lh3.googleusercontent.com/lvYCdrPNFU0Ar_lXln3JShoE-NaYF_V-DNlp4eLRZhUVkj00wAseSIm-60OoCKznpw=s180",
      'MB':'100'
    },
  ];

  List<Map<String, dynamic>> _datamovie = [
    {
      'title': 'MY SPY',
      'imageUrl': "https://lh3.googleusercontent.com/Bf4Cx_ESjyGRr_SaNA0pkA1mtoApCwg2d8tZjwYYuhDO9XnKNxLVhdbZsjmvHdcqZKKwjWD2Y5LCf6aLqsA=w400-h600",
      'price':'80.0',
      'stars':'4.2'
    },
    {
      'title': 'Bloodshot',
      'imageUrl': "https://lh3.googleusercontent.com/7ng0L8YHHFRnqrYb02XO0xGJSXoV7949MMR6tO8PO2osk--6a3fvFkKpZ4Xo9uiN1FLn8DDQsdqP1e9ntvo=w400-h600",
      'price':'100.0',
      'stars':'5'
    },
    {
      'title': 'Sonic The Hedgehog',
      'imageUrl': "https://lh3.googleusercontent.com/gTPBPPYzoFfZnX3LnD3cNtJjF10j4j3eUz2go3nwNykER7Ck5UqE5D47dbxv0alYuGZG4nxydLo3h345-dr5=w200-h300",
      'price':'30.4',
      'stars':'3.2'
    },
    {
      'title': 'Superman',
      'imageUrl': "https://lh3.googleusercontent.com/utgFMx6_0pdTMJLlPySs68kf-Ux0VIJ0AyZSUxYWHZ4_YXnKRA2q86MLVuB9mA3WfZf_1iM4U4_Azoy8Ug=w200-h300",
      'price':'90',
      'stars':'4.6'
    },
    {
      'title': 'Harry Potter ',
      'imageUrl': "https://lh3.googleusercontent.com/llQBqm13gzbM37I9HIsVmkyxc2f-ql38TpFLdqTnP1_-0j2jK_eFap5LVowpvnqN3CrP=w200-h300",
      'price':'50.5',
      'stars':'3.9'
    },
    {
      'title': 'Spider-Man',
      'imageUrl': "https://lh3.googleusercontent.com/nxWjOiNZKJZ8mfVLTqxWprprDXhO-D1S1C_S-m7VLWHBp32IziTVMs1u5R6ISb79zTKK=w200-h300",
      'price':'120.0',
      'stars':'4.2'
    },
    {
      'title': 'باد بويز فور لايف',
      'imageUrl': "https://lh3.googleusercontent.com/X_8jHhwO1rHW9UHWeFapa-UVThLG66p8aaXuc9-juJNv9dX1B8ao_oZC0iB-RgnZ7O4ZmyCsfwGawqqVZYQ=w200-h300",
      'price':'200',
      'stars':'4.2'
    },
    {
      'title': 'Harry Potter',
      'imageUrl': "https://lh3.googleusercontent.com/k20SLgBYYou445TeVz8oWo-ba7rifGOVYeghk8MqrLbbQCS5SK9yQ4J5DQlEaVYGAK0=w200-h300",
      'price':'300',
      'stars':'3.2'
    },
    {
      'title': '1917',
      'imageUrl': "https://lh3.googleusercontent.com/bstpvwaUFaQBN40k8ehqZhSFk7nyOmCYIZ4yYfldicd9SomUwcPLdVm6II7L2Hb5LwyoXKKOQVXw5_Q6u5d3=w200-h300",
      'price':'150',
      'stars':'5'
    },
    {
      'title': 'Birds Of Prey',
      'imageUrl': "https://lh3.googleusercontent.com/FiJfh-tvMtjNt7NfUmwV96qiVj6NCNRNRqNEvPbWj5KdHiagzEyW9ILXGdUlYOuKJCyqNVcGBIry03NcaTM=w200-h300",
      'price':'250',
      'stars':'3.7'
    },
    {
      'title': 'Spider-Man',
      'imageUrl': "https://lh3.googleusercontent.com/gY5XpJheVfLOqU101IwAC27Rw4yp03SzrLwsAtxWFfOycoV0LfxCfIFmFdr_PMmiV51vXQ=w200-h300",
      'price':'40',
      'stars':'4.2'
    },
    {
      'title': 'THE GENTLEMEN',
      'imageUrl': "https://lh3.googleusercontent.com/iKYfrRyPMkOFXLU68gO26BlQGFAH1DB4zpj6EX4cd50uRsoGsP2RvTRKSbKOf3IztZ2L3B-HOLb9tSNM9MA=w200-h300",
      'price':'80',
      'stars':'4.9'
    },
  ];

  List<Map<String, dynamic>> _dataBooks = [
    {
      'title': 'JavaScript',
      'imageUrl': "https://books.google.com/books/content/images/frontcover/NPbkDwAAQBAJ?fife=w200-h300",
      'price':'120',
      'stars':'4.2'
    },
    {
      'title': 'Aristotle\'s Poetics',
      'imageUrl': "https://books.google.com/books/content/images/frontcover/5FZrAwAAQBAJ?fife=w200-h300",
      'price':'50',
      'stars':'4.5'
    },
    {
      'title': 'CISA',
      'imageUrl': "https://books.google.com/books/content/images/frontcover/DSj5DwAAQBAJ?fife=w200-h300",
      'price':'540',
      'stars':'5'
    },
    {
      'title': 'Political Thinking',
      'imageUrl': "https://books.google.com/books/content/images/frontcover/zjiTDAAAQBAJ?fife=w200-h300",
      'price':'180',
      'stars':'3.2'
    },
    {
      'title': 'Reinventing Your Life',
      'imageUrl': "https://books.google.com/books/content/images/frontcover/m9iODwAAQBAJ?fife=w200-h300",
      'price':'30',
      'stars':'0.00'
    },
    {
      'title': 'Hashimoto\'s Protocol',
      'imageUrl': "https://books.google.com/books/content/images/frontcover/QmieDAAAQBAJ?fife=w200-h300",
      'price':'300',
      'stars':'3.4'
    },
    {
      'title': 'Jerusalem',
      'imageUrl': "https://books.google.com/books/content/images/frontcover/rBrADgAAQBAJ?fife=w200-h300",
      'price':'200',
      'stars':'4.1'
    },
    {
      'title': 'Internet of Things',
      'imageUrl': "https://books.google.com/books/content/images/frontcover/ROnUDQAAQBAJ?fife=w200-h300",
      'price':'40',
      'stars':'4.2'
    },
    {
      'title': 'Conscious',
      'imageUrl': "https://books.google.com/books/content/images/frontcover/n6JrDwAAQBAJ?fife=w200-h300",
      'price':'50',
      'stars':'5.0'
    },
    {
      'title': 'Jerusalem',
      'imageUrl': "https://books.google.com/books/content/images/frontcover/r2ETAgAAQBAJ?fife=w200-h300",
      'price':'220',
      'stars':'4.7'
    },
    {
      'title': 'How to Be a Superhero',
      'imageUrl': "https://books.google.com/books/content/images/frontcover/-8CpCgAAQBAJ?fife=w200-h300",
      'price':'30',
      'stars':'5.0'
    },
    {
      'title': 'My Friend Dahmer',
      'imageUrl': "https://books.google.com/books/content/images/frontcover/NbmuabcCpyQC?fife=w200-h300",
      'price':'150',
      'stars':'4.5'
    },
  ];
  Widget _gamesapp({String title,String MB,String imageUrl}){
    return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(imageUrl),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              " $MB MB",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ));
  }
  Widget _moviebook ({BuildContext context,String title,String imageUrl,String price,int type}) {
    return InkWell(
      onLongPress:(){
        bottomSheet(context: context,Type: type);
      },
      child: Container(
        width: MediaQuery.of(context).size.width/4+10,
        height: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width/4,
              height: 140,
              decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(5),
                  image: DecorationImage(
                      image: NetworkImage(
                          imageUrl),
                      fit: BoxFit.cover)),
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
                  "4.9",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Icon(Icons.star,color: Colors.grey,size: 15,),
                SizedBox(width: 5,),
                Text(
                  "EGP $price",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    type =widget.Type_gridview;
    return  Scaffold(
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
                      SizedBox(width: 15,),
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
                      Navigator.push(context,MaterialPageRoute(builder: (context) => SearchScreen(
                        titles: ((){
                          if(type==2){
                            return "Search Movies & TV";
                          }
                          else if (type==3){
                            return "Search Books";
                          }
                          else {
                            return "Search for apps & games";
                          }
                        }()), )), );
                    })
              ],
            ),
          ),
          Expanded(
            child:  Padding(
              padding: const EdgeInsets.only(right: 15,left: 15),
              child: GridView.builder(
                  controller: _controller,
                  itemCount: _datasmallapp.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: .53,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (ctx, index) {
                    if(type==1){
                      return _gamesapp(
                        title: _datasmallapp[index]['title'],
                        MB: _datasmallapp[index]['MB'],
                        imageUrl: _datasmallapp[index]['imageUrl'],
                      );                      }
                    else if (type==2){
                      return _moviebook(
                        context: context,
                        title: _datamovie[index]['title'],
                        price: _datamovie[index]['price'],
                        imageUrl: _datamovie[index]['imageUrl'],
                      );                     }
                    else if (type==3){
                      return _moviebook(
                        context: context,
                        title: _dataBooks[index]['title'],
                        price: _dataBooks[index]['price'],
                        imageUrl: _dataBooks[index]['imageUrl'],
                      );                    }
                    else {
                      return _gamesapp(
                        title: _datagame[index]['title'],
                        MB: _datagame[index]['MB'],
                        imageUrl: _datagame[index]['imageUrl'],
                      );
                    }
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
