import 'package:finalgoogleplay/drawer.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatefulWidget {
  @override
  _WishlistScreenState createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  Widget _smalllist ({BuildContext context,String title,String imageUrl,String price,String suptitle ,String stars}) {
    return Container(
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
                    "EGP $price ",
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
    return  Scaffold(
      backgroundColor: Colors.white.withOpacity(0.13),
      drawer: customDrawer(context: context),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 50.0,
            leading:IconButton(icon: Icon(Icons.arrow_back,size: 25,color: Colors.grey,),onPressed: (){Navigator.pop(context);},) ,
            title: Text(
              'Wishlist',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,top: 25),
                      child: Column(
                        children: <Widget>[
                          _smalllist(context: context,title: "TikTok Lite",imageUrl: "https://lh3.googleusercontent.com/LLUZLIcA7MbM5yLwAA-oTAt3q5kdDjIIfrEqR2mGLAxvVJcwruxJYQChwPDahLvSjFc=s180",stars: "3.7",price: "77.99",suptitle: "social"),
                          _smalllist(context: context,title: "SoundCloud",imageUrl: "https://lh3.googleusercontent.com/lvYCdrPNFU0Ar_lXln3JShoE-NaYF_V-DNlp4eLRZhUVkj00wAseSIm-60OoCKznpw=s180",suptitle: "social",stars: "4.5",price: "0.00"),
                          _smalllist(context: context,title: "PUBG MOBILE LITE",price: "0.00",stars: "4.9",suptitle: "action",imageUrl: "https://lh3.googleusercontent.com/rx0ZCsJKclk51Am-NRHOgCgcOpQu5qoWxMsRiRxZpA425wXpMgiQ_RdjfyD6OcQ2RUcS=s360")
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );

  }
}

