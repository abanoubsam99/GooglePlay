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
          MainBooks(context: context,title: "Top selling comics",listnum: 1),
          MainBooks(context: context,title: "Thrilling reads",listnum: 2),
          MainBooks(context: context,title: "Deals on ebooks",listnum: 3),
          MainBooks(context: context,title: "New release ebooks",listnum: 4),
          MainBooks(context: context,title: "Self-help ebooks",listnum: 5),
          MainBooks(context: context,title: "New release ebooks",listnum: 2),
          MainBooks(context: context,title: "Deals on ebooks",listnum: 4),
          MainBooks(context: context,title: "Business books",listnum: 3),
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

  List<Map<String, dynamic>> _dataBooks = [
    {
      'title': 'JavaScript',
      'imageUrl': "https://books.google.com/books/content/images/frontcover/NPbkDwAAQBAJ?fife=w200-h300",
      'price':'120',
      'stars':'4.2',
      'suptitle':'Action & Adventure'

    },
    {
      'title': 'Aristotle\'s Poetics',
      'imageUrl': "https://books.google.com/books/content/images/frontcover/5FZrAwAAQBAJ?fife=w200-h300",
      'price':'50',
      'stars':'4.5',
      'suptitle':'Action & Adventure'

    },
    {
      'title': 'CISA',
      'imageUrl': "https://books.google.com/books/content/images/frontcover/DSj5DwAAQBAJ?fife=w200-h300",
      'price':'540',
      'stars':'5',
      'suptitle':'Action & Adventure'

    },
    {
      'title': 'Political Thinking',
      'imageUrl': "https://books.google.com/books/content/images/frontcover/zjiTDAAAQBAJ?fife=w200-h300",
      'price':'180',
      'stars':'3.2',
      'suptitle':'Action & Adventure'

    },
    {
      'title': 'Reinventing Your Life',
      'imageUrl': "https://books.google.com/books/content/images/frontcover/m9iODwAAQBAJ?fife=w200-h300",
      'price':'30',
      'stars':'0.00',
      'suptitle':'Action & Adventure'

    },
    {
      'title': 'Hashimoto\'s Protocol',
      'imageUrl': "https://books.google.com/books/content/images/frontcover/QmieDAAAQBAJ?fife=w200-h300",
      'price':'300',
      'stars':'3.4',
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
              itemCount:_dataBooks.length,
              itemBuilder: (ctx, index) {
                return _Movilist(
                    context: context,
                    title: _dataBooks[index]['title'],
                    imageUrl: _dataBooks[index]['imageUrl'],
                    price: _dataBooks[index]['price'],
                    stars: _dataBooks[index]['stars'],
                    suptitle: _dataBooks[index]['suptitle'],
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
      'title': 'Biographies & memoirs',
      'imageUrl': "https://www.freepnglogos.com/uploads/old-women-png/old-woman-user-pictures-anna-litviniuk-icon-person-icon-22.png",
    },
    {
      'title': 'Cooking, food & wine',
      'imageUrl': "https://www.freepnglogos.com/uploads/chef-png/chef-share-alike-cooking-january-20.png",
    },    {
      'title': 'Computers & technology',
      'imageUrl': "https://www.freepnglogos.com/uploads/laptop-png/laptop-png-ewu-dell-computers-29.png",
    },    {
      'title': 'History',
      'imageUrl': "https://www.freepnglogos.com/uploads/globe-png/globe-earth-world-image-pixabay-1.png",
    },    {
      'title': 'Sports',
      'imageUrl': "https://www.freepnglogos.com/uploads/football-png/football-aitc-sports-football-logo-22.png",
    },    {
      'title': 'Home & garden',
      'imageUrl': "https://www.freepnglogos.com/uploads/logo-home-png/home-start-blue-logo-icon-0.png",
    },    {
      'title': 'Travel',
      'imageUrl': "https://www.freepnglogos.com/uploads/plane-png/plane-png-nature-photos-viscom-avc-nature-7.png",
    },    {
      'title': 'Science fiction & fantasy',
      'imageUrl': "https://www.freepnglogos.com/uploads/unicorn-png/unicorn-fantasy-horse-photo-pixabay-38.png",
    },
    {
      'title': 'Health',
      'imageUrl': "https://www.freepnglogos.com/uploads/doctor-png/doctor-bulk-billing-doctors-chapel-hill-health-care-medical-3.png",
    },
    {
      'title': 'Children\'s book',
      'imageUrl': "https://www.freepnglogos.com/uploads/kids-png/kids-png-png-images-children-transparent-images-15.png",
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

class Topfree extends StatefulWidget {
  @override
  _TopfreeState createState() => _TopfreeState();
}
class _TopfreeState extends State<Topfree> {
  List<Map<String, dynamic>> _dataBooks3 = [
    {
      'title': 'How to Get People',
      'imageUrl': "https://books.google.com/books/content/images/frontcover/mMoWWbJDcf8C?fife=w200-h300",
      'suptitle':'Ebook',
      'stars':'4.3'
    },
    {
      'title': 'The Book Thief',
      'imageUrl': "https://books.google.com/books/content/images/frontcover/veGXULZK6UAC?fife=w200-h300",
      'suptitle':'Ebook',
      'stars':'4.4'
    },
    {
      'title': 'AP Biology',
      'imageUrl': "https://books.google.com/books/content/images/frontcover/Z6OeDwAAQBAJ?fife=w200-h300",
      'suptitle':'Ebook',
      'stars':'1.5'
    },
    {
      'title': 'Parenting ',
      'imageUrl': "https://books.google.com/books/content/images/frontcover/M73GAwAAQBAJ?fife=w200-h300",
      'suptitle':'Ebook',
      'stars':'4.0'
    },
    {
      'title': 'The Well',
      'imageUrl': "https://books.google.com/books/content/images/frontcover/E5OhORCI3zEC?fife=w200-h300",
      'suptitle':'Ebook',
      'stars':'3.8'
    },
    {
      'title': 'Vintage',
      'imageUrl': "https://books.google.com/books/content/images/frontcover/qnApAgAAQBAJ?fife=w200-h300",
      'suptitle':'Ebook',
      'stars':'3.0'
    },

  ];

  Widget _Movilist ({BuildContext context,String title,String imageUrl,int index,String suptitle ,String stars}) {
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
                  " Free",
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
              itemCount:_dataBooks3.length,
              itemBuilder: (ctx, index) {
                return _Movilist(
                    context: context,
                    title: _dataBooks3[index]['title'],
                    imageUrl: _dataBooks3[index]['imageUrl'],
                    stars: _dataBooks3[index]['stars'],
                    suptitle: _dataBooks3[index]['suptitle'],
                    index: index+1
                );
              }),),
      ],),
    );
  }
}
