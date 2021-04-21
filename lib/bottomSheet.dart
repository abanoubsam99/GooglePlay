import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


bottomSheet({BuildContext context,int Type}) {
  showModalBottomSheet(
      context: context,
      elevation: 0,
      builder: (context) {
        if(Type==1){
          return _movies(context: context);
        }
        else if(Type==2){
          return _books(context: context);
        }
        else{
          return _apps(context: context);
        }
      });
}

Widget _apps({BuildContext context}) {
  return Container(
    height: MediaQuery.of(context).size.height/3,

    child: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
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
                            'https://lh3.googleusercontent.com/akv2Bdp7i5Vv-sl9FuP3_dhWpUO80zULf-Pkh6RFleomEp6pZorHuCNm3FbR9oAMunVK=s360'),
                        fit: BoxFit.fill)),
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Clash of Clans',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  Row(
                    children: <Widget>[
                      Text("4.4",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey)),
                      Icon(Icons.star,color: Colors.grey,size: 13,),
                      SizedBox(width: 7,),
                      Text("Rated for 3+ " ,
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey)),
                    ],
                  ),
                  Text(
                    "Contains ads .  in-app purchases",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          Divider(color: Colors.grey,),
          Row(children: <Widget>[
            Icon(Icons.add_to_photos,color: Colors.grey,size: 20,),
            SizedBox(width:20,),
            Text( "Add to Wishlist", style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ],),

          Container(
            width: MediaQuery.of(context).size.width,
            height: 35,
            decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(5)
            ),
            child: Center(child: Text("Install",style: TextStyle(color: Colors.black,fontSize: 17),),),
          )
        ],
      ),
    ),
  );
}


Widget _movies ({BuildContext context}) {
  return Container(
    height: MediaQuery.of(context).size.height/3,

    child: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 55,
                height: 75,
                decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://lh3.googleusercontent.com/Dd9x0VFjxatRK_d5gPF_K7R6vOwgcDBjDtN64aNuPe-6yJjDxD2eRmZci0m2w4oYVSc=w200-h300'),
                        fit: BoxFit.fill)),
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Deadpool 2",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  Text(
                    "Action & adventure",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          Divider(color: Colors.grey,),
          Row(children: <Widget>[
            Icon(Icons.add_to_photos,color: Colors.grey,size: 20,),
            SizedBox(width:20,),
            Text( "Add to Wishlist", style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ],),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width/2-20,
                height: 35,
                child: OutlineButton(
                  child: Text('Rent from EGP 60.00',
                      style:
                      TextStyle(color: Colors.pink, fontWeight: FontWeight.bold)),
                  onPressed: () {}, //callback when button is clicked
                  borderSide: BorderSide(
                    color: Colors.grey, //Color of the border
                    style: BorderStyle.solid, //Style of the border
                    width: 1, //width of the border
                  ),
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width/2-20,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Center(child: Text("By from EGP 220.00",style: TextStyle(color: Colors.black,fontSize: 14),),),
              )

            ],)
        ],
      ),
    ),
  );
}


Widget _books ({BuildContext context}) {
  return Container(
    height: MediaQuery.of(context).size.height/3,

    child: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 55,
                height: 75,
                decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://books.google.com/books/content/images/frontcover/rBrADgAAQBAJ?fife=w200-h300'),
                        fit: BoxFit.fill)),
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Jerusalem",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  Text(
                    "Action & adventure",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          Divider(color: Colors.grey,),
          Row(children: <Widget>[
            Icon(Icons.add_to_photos,color: Colors.grey,size: 20,),
            SizedBox(width:20,),
            Text( "Add to Wishlist", style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ],),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width/2-20,
                height: 35,
                child: OutlineButton(
                  child: Text('Free sample',
                      style:
                      TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                  onPressed: () {}, //callback when button is clicked
                  borderSide: BorderSide(
                    color: Colors.grey, //Color of the border
                    style: BorderStyle.solid, //Style of the border
                    width: 1, //width of the border
                  ),
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width/2-20,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Center(child: Text("By  EGP 220.00",style: TextStyle(color: Colors.black,fontSize: 14),),),
              )

            ],)
        ],
      ),
    ),
  );
}