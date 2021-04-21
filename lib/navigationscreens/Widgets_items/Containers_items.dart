import 'package:finalgoogleplay/Game%20Details/gameDetailsScreen.dart';
import 'package:finalgoogleplay/Gridviewapps.dart';
import 'package:finalgoogleplay/Search/similarApps.dart';
import 'package:finalgoogleplay/TwoConList.dart';
import 'package:finalgoogleplay/bottomSheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// Games
//MainSmall
MainSmall({BuildContext context,String title,int listnum}) {
return Column(children: <Widget>[
      InkWell(
        onTap: (){
      if (listnum==5){
        Navigator.push(context,MaterialPageRoute(builder: (context) => SimilarApps(titles: title,Type_gridview: 0)), );
      }
      else
        Navigator.push(context,MaterialPageRoute(builder: (context) => Gridviewapps(titles: title,Type_gridview: 0)), );
        },
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          Text(title,style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),),
          Icon(Icons.arrow_back,textDirection: TextDirection.rtl,color: Colors.grey,size: 30,)
        ],),
      ),
     SizedBox(height: 10,),
      Container(
        width: MediaQuery.of(context).size.width,
        height: 140,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listnum==1?_datasmall.length:_datasmall2.length,
            itemBuilder: (context, i) {
              if(listnum==1){
                return small_container(
                    context: context,
                    title: _datasmall[i]['title'],
                    imageUrl: _datasmall[i]['imageUrl'],
                    MB: _datasmall[i]['MB']
                );
              }
              else{
                return small_container(
                    context: context,
                    title: _datasmall2[i]['title'],
                    imageUrl: _datasmall2[i]['imageUrl'],
                    MB: _datasmall2[i]['MB']
                );
              }

            }),
      ),
    ],
  );
}
//Maintwo
Maintwo({BuildContext context,String title,int listnum}) {
  return Column(children: <Widget>[
    InkWell(
      onTap: (){ Navigator.push(context,MaterialPageRoute(builder: (context) => TowConList(titles: title,Type_gridview: 0)), );},
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(title,style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),),
          Icon(Icons.arrow_back,textDirection: TextDirection.rtl,color: Colors.grey,size: 30,)
        ],),
    ),
    SizedBox(height: 10,),
    Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listnum==1?_datatwo.length:_datatwo2.length,
          itemBuilder: (context, i) {
            if(listnum==1){
              return two_container(
                  context: context,
                  title: _datatwo[i]['title'],
                  bigimageUrl: _datatwo[i]['bigimageUrl'],
                  smallimageUrl: _datatwo[i]['smallimageUrl'],
                  MB: _datatwo[i]['MB'],
                  subtitle: _datatwo[i]['subtitle'],
                  stars: _datatwo[i]['stars']

              );
            }
            else{
              return two_container(
                  context: context,
                  title: _datatwo2[i]['title'],
                  bigimageUrl: _datatwo2[i]['bigimageUrl'],
                  smallimageUrl: _datatwo2[i]['smallimageUrl'],
                  MB: _datatwo2[i]['MB'],
                  subtitle: _datatwo2[i]['subtitle'],
                  stars: _datatwo2[i]['stars']

              );
            }
          }),
    ),
  ],
  );
}
//Mainbig
Mainbig({BuildContext context,String title,int listnum}) {
  return Column(children: <Widget>[
    InkWell(
      onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Gridviewapps(titles: title,Type_gridview: 0)), );},
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(title,style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),),
          Icon(Icons.arrow_back,textDirection: TextDirection.rtl,color: Colors.grey,size: 30,)
        ],),
    ),
    SizedBox(height: 10,),
    Container(
      width: MediaQuery.of(context).size.width,
      height: 230,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listnum==1?_databig.length:_databig2.length,
          itemBuilder: (context, i) {
            if(listnum==1){
              return big_container(
                context: context,
                bigimageUrl: _databig[i]['bigimageUrl'],
                smallimageUrl: _databig[i]['smallimageUrl'],
                title: _databig[i]['title'],
                subtitle: _databig[i]['subtitle'],
                number: _databig[i]['number'],
                ads: _databig[i]['ads'],
                stars:  _databig[i]['stars'],
              );
            }
            else{
              return big_container(
                context: context,
                bigimageUrl: _databig2[i]['bigimageUrl'],
                smallimageUrl: _databig2[i]['smallimageUrl'],
                title: _databig2[i]['title'],
                subtitle: _databig2[i]['subtitle'],
                number: _databig2[i]['number'],
                ads: _databig2[i]['ads'],
                stars:  _databig2[i]['stars'],
              );
            }
          }),
    ),
  ],
  );
}

// apps
//MainSmallapps
MainSmallapps({BuildContext context,String title,int listnum}) {
  return Column(children: <Widget>[
    InkWell(
      onTap: (){
        if (listnum==5){
          Navigator.push(context,MaterialPageRoute(builder: (context) => SimilarApps(titles: title,Type_gridview: 0)), );
        }
        else
          Navigator.push(context,MaterialPageRoute(builder: (context) => Gridviewapps(titles: title,Type_gridview: 0)), );
      },
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(title,style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),),
          Icon(Icons.arrow_back,textDirection: TextDirection.rtl,color: Colors.grey,size: 30,)
        ],),
    ),
    SizedBox(height: 10,),
    Container(
      width: MediaQuery.of(context).size.width,
      height: 140,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: ((){
            if(listnum==1){
              return _datasmallapp.length;
            }
            else if(listnum==2){
              return _datasmallapp2.length;
            }
            else if(listnum==3){
              return _datasmallapp3.length;
            }
            else {
              return _datasmallapp4.length;
            }
          }()),
          itemBuilder: (context, i) {
            if(listnum==1){
              return small_container(
                  context: context,
                  title: _datasmallapp[i]['title'],
                  imageUrl: _datasmallapp[i]['imageUrl'],
                  MB: _datasmallapp[i]['MB']
              );
            }
            else if(listnum==2){
              return small_container(
                  context: context,
                  title: _datasmallapp2[i]['title'],
                  imageUrl: _datasmallapp2[i]['imageUrl'],
                  MB: _datasmallapp2[i]['MB']
              );
            }
            else if(listnum==3){
            return small_container(
            context: context,
            title: _datasmallapp3[i]['title'],
            imageUrl: _datasmallapp3[i]['imageUrl'],
            MB: _datasmallapp3[i]['MB']
            );
            }
            else{
            return small_container(
            context: context,
            title: _datasmallapp4[i]['title'],
            imageUrl: _datasmallapp4[i]['imageUrl'],
            MB: _datasmallapp4[i]['MB']
            );
            }

          }),
    ),
  ],
  );
}
//Mainbigapps
Mainbigapps({BuildContext context,String title,int listnum}) {
  return Column(children: <Widget>[
    InkWell(
      onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Gridviewapps(titles: title,Type_gridview: 1)), );},
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(title,style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),),
          Icon(Icons.arrow_back,textDirection: TextDirection.rtl,color: Colors.grey,size: 30,)
        ],),
    ),
    SizedBox(height: 10,),
    Container(
      width: MediaQuery.of(context).size.width,
      height: 230,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listnum==1?_databigapp.length:_databig2app.length,
          itemBuilder: (context, i) {
            if(listnum==1){
              return big_container(
                context: context,
                bigimageUrl: _databigapp[i]['bigimageUrl'],
                smallimageUrl: _databigapp[i]['smallimageUrl'],
                title: _databigapp[i]['title'],
                subtitle: _databigapp[i]['subtitle'],
                number: _databigapp[i]['number'],
                ads: _databigapp[i]['ads'],
                stars:  _databigapp[i]['stars'],
              );
            }
            else{
              return big_container(
                context: context,
                bigimageUrl: _databig2app[i]['bigimageUrl'],
                smallimageUrl: _databig2app[i]['smallimageUrl'],
                title: _databig2app[i]['title'],
                subtitle: _databig2app[i]['subtitle'],
                number: _databig2app[i]['number'],
                ads: _databig2app[i]['ads'],
                stars:  _databig2app[i]['stars'],
              );
            }
          }),
    ),
  ],
  );
}

// Movie & Books
MainMovie({BuildContext context,String title,int listnum}) {
  return Column(children: <Widget>[
       InkWell(
         onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Gridviewapps(titles: title,Type_gridview: 2)), );},
         child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(title,style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),),
            Icon(Icons.arrow_back,textDirection: TextDirection.rtl,color: Colors.grey,size: 30,)
          ],),
       ),
    SizedBox(height: 10,),
    Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listnum==1?_datamovie.length:_datamovie2.length,
          itemBuilder: (context, i) {
            if(listnum==1){
              return moviebook(
                  context: context,
                  title: _datamovie[i]['title'],
                  imageUrl: _datamovie[i]['imageUrl'],
                  price:  _datamovie[i]['price'],
                stars: _datamovie[i]['stars'],
                type: 1
              );
            }
            else if(listnum==2){
              return moviebook(
                  context: context,
                  title: _datamovie2[i]['title'],
                  imageUrl: _datamovie2[i]['imageUrl'],
                  price:  _datamovie2[i]['price'],
                  stars: _datamovie2[i]['stars'],
                  type: 1

              );
            }
            else if(listnum==3){
              return moviebook(
                  context: context,
                  title: _datamovie3[i]['title'],
                  imageUrl: _datamovie3[i]['imageUrl'],
                  price:  _datamovie3[i]['price'],
                  stars: _datamovie3[i]['stars'],
                  type: 1

              );
            }
            else if(listnum==4){
              return moviebook(
                  context: context,
                  title: _datamovie4[i]['title'],
                  imageUrl: _datamovie4[i]['imageUrl'],
                  price:  _datamovie4[i]['price'],
                  stars: _datamovie4[i]['stars'],
                  type: 1
              );
            }
            else{
              return moviebook(
                  context: context,
                  title: _datamovie5[i]['title'],
                  imageUrl: _datamovie5[i]['imageUrl'],
                  price:  _datamovie5[i]['price'],
                  stars: _datamovie5[i]['stars'],
                  type: 1
              );
            }

          }),
    ),
  ],
  );
}
MainBooks({BuildContext context,String title,int listnum}) {
  return Column(children: <Widget>[
   InkWell(
     onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Gridviewapps(titles: title,Type_gridview: 3)), );},
     child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(title,style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),),
            Icon(Icons.arrow_back,textDirection: TextDirection.rtl,color: Colors.grey,size: 30,)
          ],),
   ),

    SizedBox(height: 10,),
    Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listnum==1?_dataBooks.length:_dataBooks2.length,
          itemBuilder: (context, i) {
            if(listnum==1){
              return moviebook(
                  context: context,
                  title: _dataBooks[i]['title'],
                  imageUrl: _dataBooks[i]['imageUrl'],
                  price:  _dataBooks[i]['price'],
                  stars: _dataBooks[i]['stars'],
                  type: 2

              );
            }
            else if(listnum==2){
              return moviebook(
                  context: context,
                  title: _dataBooks2[i]['title'],
                  imageUrl: _dataBooks2[i]['imageUrl'],
                  price:  _dataBooks2[i]['price'],
                  stars: _dataBooks2[i]['stars'],
                  type: 2

              );
            }
            else if(listnum==3){
              return moviebook(
                  context: context,
                  title: _dataBooks3[i]['title'],
                  imageUrl: _dataBooks3[i]['imageUrl'],
                  price:  _dataBooks3[i]['price'],
                  stars: _dataBooks3[i]['stars'],
                  type: 2

              );
            }
            else if(listnum==4){
              return moviebook(
                  context: context,
                  title: _dataBooks4[i]['title'],
                  imageUrl: _dataBooks4[i]['imageUrl'],
                  price:  _dataBooks4[i]['price'],
                  stars: _dataBooks4[i]['stars'],
                  type: 2

              );
            }
            else{
              return moviebook(
                  context: context,
                  title: _dataBooks5[i]['title'],
                  imageUrl: _dataBooks5[i]['imageUrl'],
                  price:  _dataBooks5[i]['price'],
                  stars: _dataBooks5[i]['stars'],
                  type: 2
              );
            }

          }),
    ),
  ],
  );
}



//two_container
two_container ({BuildContext context,String title,String subtitle,String smallimageUrl,String bigimageUrl,String stars,String MB}) {
    return InkWell(
      onLongPress:(){
        bottomSheet(context: context,Type: 3);
      },
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context) => GameScreen()),);
      },
      child: Container(
        width: MediaQuery.of(context).size.width/2+27,
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 190,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(
                          bigimageUrl),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding:
              const EdgeInsets.only(top: 10, left: 10),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(
                                smallimageUrl),
                            fit: BoxFit.fill)),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(fontSize: 14,color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 45,
                              top: 10,
                              bottom: 10),
                          child: Text(
                            subtitle,
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white
                                  .withOpacity(0.5),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          children: [
                            Text(
                              stars,
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white
                                    .withOpacity(0.5),
                              ),
                            ),
                            Icon(Icons.star,
                                size: 13,
                                color: Colors.white
                                    .withOpacity(0.5)),
                            Padding(
                              padding:
                              const EdgeInsets.only(
                                  left: 10, right: 40),
                              child: Text(
                                "$MB MB",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white
                                      .withOpacity(0.5),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );

}
// big image & install
big_container ({BuildContext context,String title,String subtitle ,String smallimageUrl,String bigimageUrl,String stars,String ads,String number}) {
    return InkWell(
      onLongPress:(){
        bottomSheet(context: context,Type: 3);
      },
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context) => GameScreen()),);
      },
      child: Container(
        width: MediaQuery.of(context).size.width-25,
        height: 210,
        child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width-40,
                height: 210,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(
                            bigimageUrl),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: MediaQuery.of(context).size.width-40,
                height: 210,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [
                          0.4,
                          0.8
                        ],
                        colors: [Colors.transparent,Colors.black.withOpacity(.8)]
                    )
                ),
              ),
              Positioned(
                  left: 10,
                  bottom: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15,right: 20),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image: NetworkImage(smallimageUrl),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title,style: TextStyle(fontSize: 16,color: Colors.white),),
                          Text(subtitle,style: TextStyle(fontSize: 15,color: Colors.white),),
                          Row(
                            children: [
                              Text(stars,style: TextStyle(fontSize: 15,color: Colors.white),),
                              Icon(Icons.star,size: 17,color: Colors.white,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  width: 15,
                                  height: 15,
                                  color: Colors.white,
                                  child: Center(child: Row(
                                    children: [
                                      Text(number,style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold),),
                                      Text('+',style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),
                                    ],
                                  ),),
                                ),
                              )
                            ],
                          ),
                          Text(ads,style: TextStyle(fontSize: 15,color: Colors.white),)
                        ],
                      ),


                    ],
                  )),
              Positioned(
                right: 40,
                bottom: 50,
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.white,width: 1.0),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text('install',style: TextStyle(fontSize: 17,color: Colors.white),),
                  ),),
                ),
              ),
            ]
        ),
      ),
    );

}
// small image
small_container ({BuildContext context,String title,String imageUrl,String MB}) {
    return InkWell(
      onLongPress:(){
        bottomSheet(context: context,Type: 3);
      },
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context) => GameScreen()),);
      },
      child: Container(
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
                Text(
                  "$MB MB",
                  style: TextStyle(fontSize: 12, color: Colors.grey),


            )
          ],
        ),
      ),
    );
  }
// banner image
banner_container (BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width+10,
      height: 150,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width-20,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://images-na.ssl-images-amazon.com/images/I/71YITHeSXPL.jpg'))),
          ),
          Container(
            width: MediaQuery.of(context).size.width-20,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.black87.withOpacity(.15)
            ),
          ),
          Positioned(
            left: 10,
            top: 30,
            child: Text(
              'Summon Street\nFighter favorites',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ),
          Positioned(
            left: 20,
            top: 80,
            child: OutlineButton(
              onPressed: () {},
              borderSide: BorderSide(color: Colors.white),
              child: Text(
                'Check it out',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }

listItems({String catName, int index, bool selected,Function function}) {
  return InkWell(
    splashColor: Colors.transparent,
    focusColor: Colors.transparent
    ,highlightColor: Colors.transparent,
    onTap: function,
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 18),
      decoration: BoxDecoration(
          border: Border.all(width: .8, color:selected ? Colors.transparent : Colors.grey),
          borderRadius: BorderRadius.circular(30),
          color: selected ? Colors.teal.withOpacity(.3) : Colors.transparent),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: Text(
            catName,
            style: TextStyle(color: selected ? Colors.teal : Colors.grey),
          ),
        ),
      ),
    ),
  );
}


// Movie & book
moviebook ({BuildContext context,String title,String imageUrl,String stars,String price,int type}) {
  return InkWell(
    onLongPress:(){
      bottomSheet(context: context,Type: type);
    },
    onTap: (){
      Navigator.push(context,MaterialPageRoute(builder: (context) => GameScreen()),);
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
                stars,
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


// Games

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

List<Map<String, dynamic>> _datatwo = [
  {
    'title': 'Clash of Clans',
    'bigimageUrl': "https://lh3.googleusercontent.com/KwmJhYcrTkybwuUhokmlWoQEfODEGLOSHVYl-L8N_98_IgfmFF5fLP6aGQfxYVELjx0=w1440-h620",
    'smallimageUrl': "https://lh3.googleusercontent.com/akv2Bdp7i5Vv-sl9FuP3_dhWpUO80zULf-Pkh6RFleomEp6pZorHuCNm3FbR9oAMunVK=s360",
    'MB':'150',
    'subtitle':"RolePlay",
    'stars':'4.7'
  },
  {
    'title': 'Dr. Driving',
    'bigimageUrl': "https://play-lh.googleusercontent.com/Kem7tLu9fDdlIuo5wYztQurM7Tpz3m2ZXuDEYuLAs0B_LzgUx7o3v44MUxEgPoL5G_k8=w1440-h620",
    'smallimageUrl': "https://play-lh.googleusercontent.com/_NajhNZ75NZN_CuQ7O1HMvD9BOPZEX8FmwtQaAC1RqRaAnl8geTYodi02U8hcfbnwMs=s360",
    'MB':'70',
    'subtitle':"Racing",
    'stars':'4'
  },
  {
    'title': 'Chess',
    'bigimageUrl': "https://lh3.googleusercontent.com/kbefBucQW7cTFrmDOkUkUcvr4nNuapVpq6cEzSYmf4Fyh3qs4lzyVRqxOMzRGkYE=w1440-h620",
    'smallimageUrl': "https://lh3.googleusercontent.com/wwAiz5FIU30yGr9wAgt789hQ8eP2hOPNXIYs0NpIKQYJoYkNc1ZAcwegcvVUcIjTIvz6=s360",
    'MB':'30',
    'subtitle':"Board",
    'stars':'3.8'
  },
  {
    'title': 'Temple Run 2',
    'bigimageUrl': "https://lh3.googleusercontent.com/t9cg2SxjLliXHIoX9pHUhpUA6-xlHSVN3qFePyf6p1SJ_nnBv0rIHnsEPhZQg190rog=w1440-h620",
    'smallimageUrl': "https://lh3.googleusercontent.com/VnmCQlMIEtzfZI2ivx_5-eVhhnosH-eQ67p0RWwc8TpbD_jehkUxOejva-oEPcJ8OVi0=s360",
    'MB':'13',
    'subtitle':"Action",
    'stars':'3'
  },



];

List<Map<String, dynamic>> _databig = [
  {
    'title': 'Football Cup 2020',
    'bigimageUrl': "https://lh3.googleusercontent.com/THa7dTX_WOG3IcZYkFVAmO7tqMaE2tgWpU-O2MOzLgj8YeI60_JYo08oXp82lFrBu0A=w1440-h620",
    'smallimageUrl': "https://lh3.googleusercontent.com/3EpCTNVvAQTSD1PWulDIOYyBCO4TVyq3YcJdwahcpLixtkiq98gvAikeeC5gEZ-Ty3Y=s360",
    'subtitle':"Sports",
    'stars':'3.1',
    'ads':'Offers in-app purchases',
    'number':'3'
  },
  {
    'title': 'Boxing Star',
    'bigimageUrl': "https://lh3.googleusercontent.com/sbmEuBNJCPHYHTqcOwrOPyD3K9jkcjrCE62lzM8zPY_3fMMXY-qSP9rpMmJlBCHXTFQ=w1440-h620",
    'smallimageUrl': "https://lh3.googleusercontent.com/hpYTNuNTRi4JY7u73_zhZdTGZWF2h5x-0wPq_vy7g6jxxb9tbu_MAS3YFBdDZgOW8fnH=s360",
    'subtitle':"Sports",
    'stars':'2.5',
    'ads':'Offers in-app purchases',
    'number':'7'
  },
  {
    'title': 'Online Soccer Manager',
    'bigimageUrl': "https://lh3.googleusercontent.com/T-NskavjOdYFu8xiZicgr4n7FEXGxop4g1YKRzqyrZBmsEQ5wOlhA1Xq9W2nHMAApL9G=w1440-h620",
    'smallimageUrl': "https://lh3.googleusercontent.com/YYEVog9sJFCfwtV48YN0uyjuGAwwkfYCuFCrS1k4eSqILKVxyIHNo0U6oPI7Ji2OT7s=s360",
    'subtitle':"Sports",
    'stars':'5',
    'ads':'Contains ads',
    'number':'3'
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
    'title': 'Akinator',
    'imageUrl': "https://lh3.googleusercontent.com/rjX8LZCV-MaY3o927R59GkEwDOIRLGCXFphaOTeFFzNiYY6SQ4a-B_5t7eUPlGANrcw=s180",
    'MB':'204'
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

List<Map<String, dynamic>> _datatwo2 = [
  {
    'title': 'Temple Run 2',
    'bigimageUrl': "https://lh3.googleusercontent.com/t9cg2SxjLliXHIoX9pHUhpUA6-xlHSVN3qFePyf6p1SJ_nnBv0rIHnsEPhZQg190rog=w1440-h620",
    'smallimageUrl': "https://lh3.googleusercontent.com/VnmCQlMIEtzfZI2ivx_5-eVhhnosH-eQ67p0RWwc8TpbD_jehkUxOejva-oEPcJ8OVi0=s360",
    'MB':'13',
    'subtitle':"Action",
    'stars':'3'
  },
  {
    'title': 'Dr. Driving',
    'bigimageUrl': "https://play-lh.googleusercontent.com/Kem7tLu9fDdlIuo5wYztQurM7Tpz3m2ZXuDEYuLAs0B_LzgUx7o3v44MUxEgPoL5G_k8=w1440-h620",
    'smallimageUrl': "https://play-lh.googleusercontent.com/_NajhNZ75NZN_CuQ7O1HMvD9BOPZEX8FmwtQaAC1RqRaAnl8geTYodi02U8hcfbnwMs=s360",
    'MB':'70',
    'subtitle':"Racing",
    'stars':'4'
  },
  {
    'title': 'Clash of Clans',
    'bigimageUrl': "https://lh3.googleusercontent.com/KwmJhYcrTkybwuUhokmlWoQEfODEGLOSHVYl-L8N_98_IgfmFF5fLP6aGQfxYVELjx0=w1440-h620",
    'smallimageUrl': "https://lh3.googleusercontent.com/akv2Bdp7i5Vv-sl9FuP3_dhWpUO80zULf-Pkh6RFleomEp6pZorHuCNm3FbR9oAMunVK=s360",
    'MB':'150',
    'subtitle':"RolePlay",
    'stars':'4.7'
  },

  {
    'title': 'Chess',
    'bigimageUrl': "https://lh3.googleusercontent.com/kbefBucQW7cTFrmDOkUkUcvr4nNuapVpq6cEzSYmf4Fyh3qs4lzyVRqxOMzRGkYE=w1440-h620",
    'smallimageUrl': "https://lh3.googleusercontent.com/wwAiz5FIU30yGr9wAgt789hQ8eP2hOPNXIYs0NpIKQYJoYkNc1ZAcwegcvVUcIjTIvz6=s360",
    'MB':'30',
    'subtitle':"Board",
    'stars':'3.8'
  },



];

List<Map<String, dynamic>> _databig2 = [
  {
    'title': 'Online Soccer Manager',
    'bigimageUrl': "https://lh3.googleusercontent.com/T-NskavjOdYFu8xiZicgr4n7FEXGxop4g1YKRzqyrZBmsEQ5wOlhA1Xq9W2nHMAApL9G=w1440-h620",
    'smallimageUrl': "https://lh3.googleusercontent.com/YYEVog9sJFCfwtV48YN0uyjuGAwwkfYCuFCrS1k4eSqILKVxyIHNo0U6oPI7Ji2OT7s=s360",
    'subtitle':"Sports",
    'stars':'5',
    'ads':'Contains ads',
    'number':'3'
  },
  {
    'title': 'Boxing Star',
    'bigimageUrl': "https://lh3.googleusercontent.com/sbmEuBNJCPHYHTqcOwrOPyD3K9jkcjrCE62lzM8zPY_3fMMXY-qSP9rpMmJlBCHXTFQ=w1440-h620",
    'smallimageUrl': "https://lh3.googleusercontent.com/hpYTNuNTRi4JY7u73_zhZdTGZWF2h5x-0wPq_vy7g6jxxb9tbu_MAS3YFBdDZgOW8fnH=s360",
    'subtitle':"Sports",
    'stars':'2.5',
    'ads':'Offers in-app purchases',
    'number':'7'
  },
  {
    'title': 'Football Cup 2020',
    'bigimageUrl': "https://lh3.googleusercontent.com/THa7dTX_WOG3IcZYkFVAmO7tqMaE2tgWpU-O2MOzLgj8YeI60_JYo08oXp82lFrBu0A=w1440-h620",
    'smallimageUrl': "https://lh3.googleusercontent.com/3EpCTNVvAQTSD1PWulDIOYyBCO4TVyq3YcJdwahcpLixtkiq98gvAikeeC5gEZ-Ty3Y=s360",
    'subtitle':"Sports",
    'stars':'3.1',
    'ads':'Offers in-app purchases',
    'number':'3'
  },


];

// Apps
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

];

List<Map<String, dynamic>> _datasmallapp2 = [
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
List<Map<String, dynamic>> _datasmallapp3 = [
  {
    'title': 'Candy Crush Saga',
    'imageUrl': "https://lh3.googleusercontent.com/blwiKtcfevFJeUkwRVWTXvwgdeiai3yRskoCkgp_olLFvJb5yRgaugUurQPnjYR4e3k=s180",
    'MB':'35'
  },
  {
    'title': 'Viu: Arabic, Korean ..',
    'imageUrl': "https://lh3.googleusercontent.com/jUsiig3d-ntQuAg5fttEZtLBycPhm2Jjpj6OOyFzjUQ6JTlLzyFjbDsOhi9faQjZNz4=s360",
    'MB':'34'
  },
  {
    'title': 'Snapchat',
    'imageUrl': "https://lh3.googleusercontent.com/KxeSAjPTKliCErbivNiXrd6cTwfbqUJcbSRPe_IBVK_YmwckfMRS1VIHz-5cgT09yMo=s180",
    'MB':'60'
  },
  {
    'title': 'HAGO ',
    'imageUrl': "https://lh3.googleusercontent.com/z-1fFo5WMRgxSkHWX3JK2kk0LHnA_btGx4rzKfQmS3coBeUdzpjPJrO2AbBCW6-t4cM=s180",
    'MB':'42'
  },
  {
    'title': 'imo',
    'imageUrl': "https://lh3.googleusercontent.com/oDIxHBHgobxT7l3z89izNq70-l8yoM8ACF2qt8lSD18yRF0rFKVRsejT-fUmJJgVfw=s180",
    'MB':'40'
  },
  {
    'title': 'Mahrgnat Music 2020',
    'imageUrl': "https://lh3.googleusercontent.com/HRNjS0W8Iamc_CyX8kzwAuKXuNtS181hd6c30ilVr3jsNw5ZXtorlPZfPdBeyEZSyv2D=s180",
    'MB':'240'
  },

];

List<Map<String, dynamic>> _datasmallapp4 = [
  {
    'title': 'Ana Vodafone',
    'imageUrl': "https://lh3.googleusercontent.com/aHCyKeYF1O7CKJCs29Q5ccjiCZz03V5wqy82-grEO_vPfk4TDb8qQlZ3PENrxLZLcIMs=s180",
    'MB':'35'
  },
  {
    'title': 'My Etisalat',
    'imageUrl': "https://lh3.googleusercontent.com/uz86vO0IIEjQFDZp7kV_njvewYBb3h7hBdero_aPEJAqIpth8Gl5YKetRkQlrtjHCg=s180",
    'MB':'40'
  },
  {
    'title': 'Mrsool | مرسول',
    'imageUrl': "https://lh3.googleusercontent.com/mFbkIneZsIDsCBk7yA1oSJIL1XHVUFlLRzS9fDJWURAVuvKnYXJKhIKZVJ6jDhxWJ927=s180",
    'MB':'14'
  },
  {
    'title': 'PicsArt Photo Editor',
    'imageUrl': "https://lh3.googleusercontent.com/TEM_bpkTaIdHqpxSZrsmJs0nc0M4zDmspHTxwH3W0U9A9CyOTaY2nuPhm_PeKC63kZc=s180",
    'MB':'300'
  },
  {
    'title': 'Pinterest',
    'imageUrl': "https://lh3.googleusercontent.com/dVsv8Hc4TOUeLFAahxR8KANg22W9dj2jBsTW1VHv3CV-5NCZjP9D9i2j5IpfVx2NTB8=s180",
    'MB':'12'
  },
  {
    'title': 'MX Player Pro',
    'imageUrl': "https://lh3.googleusercontent.com/D17gZhrvhTyMc68MPtR8sRMs9BBzi6XOhnxGgQDVrWmXCThKo9yFxVWO7HR359_by80=s180",
    'MB':'240'
  },

];

List<Map<String, dynamic>> _databigapp = [
  {
    'title': 'talabat:Food&Grocery Delivery',
    'bigimageUrl': "https://lh3.googleusercontent.com/HrmWWmYEXvgUhtef1gu6BEcYr82A_U4yk0o47gNi9UpqdG9aOVQHf7QdvZ0jx54gbcc=w926-h1499",
    'smallimageUrl': "https://lh3.googleusercontent.com/2EOhV_NEYBaMxUId9urnt2bmYInGfMquLg2bRLEWysFZIYIPdqapkETzr1YWPfNEOZDE=s180",
    'subtitle':"ood & Drink",
    'stars':'3.1',
    'ads':'Contains ads',
    'number':'3'
  },
  {
    'title': 'Ana Vodafone',
    'bigimageUrl': "https://lh3.googleusercontent.com/4SaxE2rhYCTmxAgPUHqlOe0NGzzA-L4E5xVunDWjN4-zyQ3R-7h6afobuoHQw0ITRQ=w720-h310",
    'smallimageUrl': "https://lh3.googleusercontent.com/aHCyKeYF1O7CKJCs29Q5ccjiCZz03V5wqy82-grEO_vPfk4TDb8qQlZ3PENrxLZLcIMs=s180",
    'subtitle':"Productivity",
    'stars':'5',
    'ads':'Offers in-app purchases',
    'number':'3'
  },
  {
    'title': 'Careem - Rides, Delivery ',
    'bigimageUrl': "https://lh3.googleusercontent.com/r_b_4H4DDc4F9gPrp6xEZhc8S4-gFHu40lyUhg53zRnZolptwnUiKqJdpTKUDZFfWj8=w926-h1499",
    'smallimageUrl': "https://lh3.googleusercontent.com/rcweQJdyi0GJCnfmunoWT_PeD1SlALU577u60nhNumdHDqB2J9ykDEOG8dilucYZ7hE=s180",
    'subtitle':"Maps & Navigation",
    'stars':'3.5',
    'ads':'Contains ads',
    'number':'3'
  },
];


List<Map<String, dynamic>> _databig2app = [
  {
    'title': 'Amazon Shopping',
    'bigimageUrl': "https://lh3.googleusercontent.com/kth3OH2yewWs2td8g8lzWQznkyHuAlxOkTg6iXsupGVEZN2fkpvJkuC-SY3748XdSsY=w926-h1499",
    'smallimageUrl': "https://lh3.googleusercontent.com/hgY6vh39bAeGCT4-wwycXZT1oL8Ko7zL97DlcqVGXy7HrB_yjb_hkQ599yZzCx0Trg=s180",
    'subtitle':"Shopping",
    'stars':'4',
    'ads':'Contains ads',
    'number':'3'
  },
  {
    'title': 'Lucky',
    'bigimageUrl': "https://lh3.googleusercontent.com/yb6vg0_P6yO9up7QpnIHUd3LXO62eMSxae2GsA2eDENvuqaLJuzeWlxFcDj4J5PBeE8t=w926-h1499",
    'smallimageUrl': "https://lh3.googleusercontent.com/W3DGs45zZpLH0WgCbmv2i__unUUc5wy_3khTld6Fs-huYAaQrAkkOPdOsLchFIEGr1XQ=s180",
    'subtitle':"Lifestyle",
    'stars':'5',
    'ads':'Offers in-app purchases',
    'number':'3'
  },
  {
    'title': 'MAF Carrefour Online Shopping',
    'bigimageUrl': "https://lh3.googleusercontent.com/YojoSjelUZLyrjw_-ErGdlrj8-jSdd6WeEjYx44LX_Y1i_TWwkodRBzC8Y7G0_K16Hyx=w926-h1499",
    'smallimageUrl': "https://lh3.googleusercontent.com/CdZLReGVuMXOzad_suddKixQNpz3RqEA4z6R3eHNJQnxo75EOjKNv0XFq22e23Vl-w=s180",
    'subtitle':"Shopping",
    'stars':'4',
    'ads':'Offers in-app purchases',
    'number':'3'
  },


];

// Movie

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

];
List<Map<String, dynamic>> _datamovie2 = [
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
List<Map<String, dynamic>> _datamovie3 = [
  {
    'title': 'Harry Potter',
    'imageUrl': "https://lh3.googleusercontent.com/Te4TpnUNJ5botAdJBrLd2_s_eAmgUlNDuqC7GGY29-66-oafi8uGzFyHNPlmihuKdVjNEw=w200-h300",
    'price':'90',
    'stars':'4.2'
  },
  {
    'title': 'Joker',
    'imageUrl': "https://lh3.googleusercontent.com/yYIyC9bSGizVZs7hiEBCXz-GNex6QVSbUAk8y9jasidsQDQ0O1CqqtH4UL07lvJ-vRKfQJnI2yAxBD4Gbw=w200-h300",
    'price':'350',
    'stars':'5'
  },
  {
    'title': 'Jumanji',
    'imageUrl': "https://lh3.googleusercontent.com/HjF5AQGaHCptfrLnOBj3wBqkmEJyWHjLKzwwufL0G2JDXWmnpIciZpx9zUMZgvzOrnNe=w200-h300",
    'price':'150',
    'stars':'4.9'
  },
  {
    'title': 'The Meg',
    'imageUrl': "https://lh3.googleusercontent.com/YV7U88egIVu9RrfafIplV2bEisOGUXju7WuF1JZmxxwXvTWy7YWLTfadjMo6UPQBXdVp3tdsESDMb5TZ3Q=w200-h300",
    'price':'50',
    'stars':'3.8'
  },
  {
    'title': 'Blumhouse\'s Fantasy',
    'imageUrl': "https://lh3.googleusercontent.com/6KE4pktMVhOSBfCdMYDzaGWQO0C99S9yrAIwgI3OMIxt33F_jc9uqu3y6ObzsufmPxYQ-x9yJnSGYiVzjPJ7=w200-h300",
    'price':'150',
    'stars':'4.2'
  },
  {
    'title': 'Knives Out',
    'imageUrl': "https://lh3.googleusercontent.com/AM5inzMp6vRqFbWfirofabTttd-30cGtvWh6o5b9Qx-LFE4ZOPBvxPubm2GEk8Xvj1dWz7wX9_prwsZAx9M=w200-h300",
    'price':'90',
    'stars':'3.5'
  },

];
List<Map<String, dynamic>> _datamovie4 = [
  {
    'title': 'JOHN WICK 3',
    'imageUrl': "https://lh3.googleusercontent.com/WMbU5fGAB14-2ZovK8YJcIdQOXjC9b34Zl0n72ZHSmbT9sqle9K8ADQBueymeiV8WN0v_dNru2_VH1bfq7Q=w200-h300",
    'price':'99',
    'stars':'4.7'
  },
  {
    'title': 'Deadpool 2',
    'imageUrl': "https://lh3.googleusercontent.com/Dd9x0VFjxatRK_d5gPF_K7R6vOwgcDBjDtN64aNuPe-6yJjDxD2eRmZci0m2w4oYVSc=w200-h300",
    'price':'150',
    'stars':'3.2'
  },
  {
    'title': 'Jumanji',
    'imageUrl': "https://lh3.googleusercontent.com/gOa6sm4iZVBmewB4Nvpd4-k5WDCQ3HTpmlrFuw76046M0wR8QYY-YWd9yn70BH1gnnC4HnB3WWcXFBxqVwjI=w200-h300",
    'price':'250',
    'stars':'4.9'
  },
  {
    'title': 'Aquaman',
    'imageUrl': "https://lh3.googleusercontent.com/rX0uPgafHnyMf5ift5MQmqLoHXGyljg8aiF4qnVeOu-YxKbKBfYSJ7zfFuOCn8S4hX85shpxDFZP6u07gGk=w200-h300",
    'price':'79',
    'stars':'3.6'
  },
  {
    'title': 'Underwater',
    'imageUrl': "https://lh3.googleusercontent.com/GgEsXV6LcocRqz5zQyPrwpr4CU8BHCgXy_yQHNBEVH8hawF5GfN8H9FpWb8jOvkR4pDjE9gqq0Vdo_N2UQ=w200-h300",
    'price':'30',
    'stars':'3.2'
  },
  {
    'title': 'UNLOCKED',
    'imageUrl': "https://lh3.googleusercontent.com/cVytl7EdIzg19TfMg8vOtd8oyuB2um6wbAn-NJI9vFCEC-k3camsmjBP_weAzJKDzPGH3imYL7P_z-nbCF4=w200-h300",
    'price':'740',
    'stars':'4.2'
  },

];
List<Map<String, dynamic>> _datamovie5 = [
  {
    'title': 'Spies in Disguise',
    'imageUrl': "https://lh3.googleusercontent.com/ljNuprDnKtzFeBpx2iQ1zE_yt00_9fw4Qpx1WzPps4aMIj7Ormh6IH3CsprlIxES47LVsw=w200-h300",
    'price':'150',
    'stars':'4.8'
  },
  {
    'title': 'Beetlejuice',
    'imageUrl': "https://lh3.googleusercontent.com/PJkqW7Ke7MAfFcGTyw9zoWlAdcs-0Kj0OJ_-PaUtYo08qy-ddBE0BADyHXiax8Bf5CI=w200-h300",
    'price':'50',
    'stars':'4.8'
  },
  {
    'title': 'Ready Player',
    'imageUrl': "https://lh3.googleusercontent.com/UIn-tJ2mb3bH1zi0WtoaQe7O5bglGwDJRWZ8q0_heNEr0ajwF4g0CWBpGliRD0-Vmiqm2Y-ZZkVtPmq_=w200-h300",
    'price':'70',
    'stars':'3.5'
  },
  {
    'title': 'The Dark Knight',
    'imageUrl': "https://lh3.googleusercontent.com/85eAVuR-GAPjvNE_mZ8LXoEY6ITvyVvDsAC4YQsYvM89uFVCqpUU_OVI0rdkuxvwLnx0Lw=w200-h300",
    'price':'30',
    'stars':'4.4'
  },
  {
    'title': 'Wonder Woman ',
    'imageUrl': "https://lh3.googleusercontent.com/lHLyHXgJQCSdx9JWH1uRPUsoI0d7yx_GtZCM-MNrTpNVReAjtI-HCEFMXYb1o2JaPIQZTQ=w200-h300",
    'price':'150',
    'stars':'4.7'
  },
  {
    'title': 'FOLLOW ME',
    'imageUrl': "https://lh3.googleusercontent.com/1PPAoResgwEiANMwYORRz0f6SxHEW00t26yl8jC8hU_yMhI2x2VFvXzL0jV5a2gK66sndoTybOFU2Str_j4=w200-h300",
    'price':'200',
    'stars':'4.0'
  },

];

// Books

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

];
List<Map<String, dynamic>> _dataBooks2 = [
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
List<Map<String, dynamic>> _dataBooks3 = [
  {
    'title': 'How to Get People',
    'imageUrl': "https://books.google.com/books/content/images/frontcover/mMoWWbJDcf8C?fife=w200-h300",
    'price':'400',
    'stars':'4.3'
  },
  {
    'title': 'The Book Thief',
    'imageUrl': "https://books.google.com/books/content/images/frontcover/veGXULZK6UAC?fife=w200-h300",
    'price':'90',
    'stars':'4.4'
  },
  {
    'title': 'AP Biology',
    'imageUrl': "https://books.google.com/books/content/images/frontcover/Z6OeDwAAQBAJ?fife=w200-h300",
    'price':'405',
    'stars':'0.00'
  },
  {
    'title': 'Parenting ',
    'imageUrl': "https://books.google.com/books/content/images/frontcover/M73GAwAAQBAJ?fife=w200-h300",
    'price':'480',
    'stars':'4.0'
  },
  {
    'title': 'The Well',
    'imageUrl': "https://books.google.com/books/content/images/frontcover/E5OhORCI3zEC?fife=w200-h300",
    'price':'96',
    'stars':'3.8'
  },
  {
    'title': 'Vintage',
    'imageUrl': "https://books.google.com/books/content/images/frontcover/qnApAgAAQBAJ?fife=w200-h300",
    'price':'50',
    'stars':'3.0'
  },

];
List<Map<String, dynamic>> _dataBooks4 = [
  {
    'title': 'Family Building',
    'imageUrl': "https://books.google.com/books/content/images/frontcover/cgwMKoS_XSUC?fife=w200-h300",
    'price':'507',
    'stars':'4.2'
  },
  {
    'title': '1:35AM',
    'imageUrl': "https://books.google.com/books/content/images/frontcover/MgrbDwAAQBAJ?fife=w200-h300",
    'price':'66',
    'stars':'4.8'
  },
  {
    'title': 'Dune',
    'imageUrl': "https://books.google.com/books/content/images/frontcover/rXYdGATpigsC?fife=w200-h300",
    'price':'79',
    'stars':'4.8'
  },
  {
    'title': 'Echoes of Scotland',
    'imageUrl': "https://books.google.com/books/content/images/frontcover/crQGBAAAQBAJ?fife=w200-h300",
    'price':'80',
    'stars':'4.5'
  },
  {
    'title': 'The Last',
    'imageUrl': "https://books.google.com/books/content/images/frontcover/QapUM_bVGxMC?fife=w200-h300",
    'price':'93',
    'stars':'4.0'
  },
  {
    'title': 'Efficient Android',
    'imageUrl': "https://books.google.com/books/content/images/frontcover/PqKfAwAAQBAJ?fife=w200-h300",
    'price':'34',
    'stars':'3.9'
  },

];
List<Map<String, dynamic>> _dataBooks5 = [
  {
    'title': 'To Catch a Bride',
    'imageUrl': "https://books.google.com/books/content/images/frontcover/0SIMNOdMxGcC?fife=w200-h300",
    'price':'870',
    'stars':'3.8'
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
    'title': 'Hamlet',
    'imageUrl': "https://books.google.com/books/content/images/frontcover/0mRODwAAQBAJ?fife=w200-h300",
    'price':'63',
    'stars':'4.4'
  },

];
