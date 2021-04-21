import 'package:finalgoogleplay/Game%20Details/moreAboutScreen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutTheGame extends StatefulWidget {
  @override
  _AboutTheGameState createState() => _AboutTheGameState();
}

class _AboutTheGameState extends State<AboutTheGame> {
  _launchURL({String url}) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  // Future<void> _onOpen(LinkableElement link) async {
  //   if (await canLaunch(link.url)) {
  //     await launch(link.url);
  //   } else {
  //     throw 'Could not launch $link';
  //   }
  // }
  Widget _links({String url}){
    return InkWell(
      onTap: (){
        _launchURL(url: url);
      },
      child: Text(url,style: TextStyle(fontSize: 13,color: Colors.teal,decoration: TextDecoration.underline),maxLines: 2,softWrap: true,),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.13),
      appBar: AppBar(
        bottom: PreferredSize(
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(color: Colors.white.withOpacity(0.3)))),
            ),
            preferredSize: Size(MediaQuery.of(context).size.width, 2)),
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0.00001),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: 25,
                color: Colors.white.withOpacity(0.5),
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://is4-ssl.mzstatic.com/image/thumb/Purple124/v4/43/cc/f6/43ccf6b2-d3af-7287-cb9b-69b1dce7c579/AppIcon-0-0-1x_U007emarketing-0-0-0-7-0-0-85-220.png/246x0w.png'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '8 Ball Pool',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      decoration: TextDecoration.none),
                ),
                Text(
                  'Details',
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.white.withOpacity(0.5),
                      decoration: TextDecoration.none),
                )
              ],
            )
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Text(
              'About this game',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Play the World's #1 Pool game\n\n•The World's #1 Pool game - now on Android!•\n\nPlay with friends! Play with Legends. Play the hit Miniclip 8\n Ball Pool game on your mobile and become the best!\n\n",
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.white.withOpacity(0.5),
                  decoration: TextDecoration.none),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "COMPETE 1-ON-1 OR IN 8 PLAYER TOURNAMENTS\n\n",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.white.withOpacity(0.5),
                  decoration: TextDecoration.none),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Refine your skills in the practice arena, take on the world in \n1-vs-1 matches, or enter tournaments to win trophies and \nexclusive cues!\n\n",
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.white.withOpacity(0.5),
                  decoration: TextDecoration.none),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "PLAY FOR POOL COINS AND EXCLUSIVE ITEMS\n\n",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.white.withOpacity(0.5),
                  decoration: TextDecoration.none),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Customize your cue and table! In every competitive 1-vs-1 \nmatch you play, there’ll be Pool Coins at stake – win the \nmatch and the Coins are yours. You can use these to enter \nhigher ranked matches with bigger stakes, or to buy new \nitems in the Pool Shop.\n\n",
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.white.withOpacity(0.5),
                  decoration: TextDecoration.none),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "CHALLENGE YOUR FRIENDS\n\n",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.white.withOpacity(0.5),
                  decoration: TextDecoration.none),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Playing friends is easy: sign in with your Miniclip or Facebook \naccount and you’ll be able to challenge your friends straight \nfrom the game. Challenge friends anytime, anywhere and \nshow off your skills.\n\n",
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.white.withOpacity(0.5),
                  decoration: TextDecoration.none),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "LEVEL UP\n\n",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.white.withOpacity(0.5),
                  decoration: TextDecoration.none),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "8 Ball Pool’s level system means you’re always facing a \nchallenge. Play matches to increase your ranking and get \naccess to more exclusive match locations, where you play \nagainst only the best Pool players.\n\n",
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.white.withOpacity(0.5),
                  decoration: TextDecoration.none),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "--Download Pool by Miniclip NOW!--\n",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.white.withOpacity(0.5),
                  decoration: TextDecoration.none),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("*This game requires internet connection.\n\n",style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.5)),),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Play on the Web at",style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.5))),
                    _links(url: ' miniclip.com/pool')
                  ],
                ),
                Text("\n\nDon’t miss out on the latest news:\n\n",style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.5)),),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Like 8 Ball Pool: ",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white.withOpacity(0.5),
                          decoration: TextDecoration.none),),
                    _links(url: 'http://on.fb.me/Wx4f23')
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Like Miniclip: ",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white.withOpacity(0.5),
                          decoration: TextDecoration.none),),
                    _links(url: 'http://facebook.com/miniclip')
                  ],
                ),
                Text("\n",style: TextStyle(fontSize: 13),),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Follow us on Twitter: ",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white.withOpacity(0.5),
                          decoration: TextDecoration.none),),
                    _links(url: 'http://twitter.com/miniclip')
                  ],
                ),
                Text("\n\n------------------------------------\n\n",style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.5)),),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Find out more about Miniclip: ",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white.withOpacity(0.5),
                          decoration: TextDecoration.none),),
                    _links(url: 'http://www.miniclip.com')
                  ],
                ),
                Text("\n",style: TextStyle(fontSize: 13),),
                // Linkify(
                //     maxLines: 2,
                //     style: TextStyle(
                //         fontSize: 13,
                //         color: Colors.white.withOpacity(0.5),
                //         decoration: TextDecoration.none),
                //     onOpen: _onOpen,
                //     linkStyle: TextStyle(
                //         fontSize: 13,
                //         color: Colors.teal,
                //         ),
                //     text: "TERMS AND CONDITIONS: http://www.miniclip.com/terms-and-conditions"),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("\n\nPRIVACY POLICY: \n\n",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white.withOpacity(0.5),
                          decoration: TextDecoration.none),
                    ),
                    _links(url: 'http://www.miniclip.com/privacy')
                  ],
                ),
              ],
            ),

          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Colors.white.withOpacity(0.5),
                      width: 1,
                      style: BorderStyle.solid)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              children: [
                Text("What's new"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.brightness_1,
                    size: 10,
                    color: Colors.teal,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "It's time for a new 8 Ball Pool update!\n\nIntroducing Collection Power! Level up your Cue Collection by collecting cues and upgrading them! The more cues you have, and the higher their levels, the more rewards you'll get!\n\nWe also have awesome new rewards: Unique Frames to use around your avatars and Bonus Stats for your Cues!\n\nDownload the latest update now to get your hands on the new content! Time to hit the tables!\n",
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.white.withOpacity(0.5),
                  decoration: TextDecoration.none),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Colors.white.withOpacity(0.5),
                      width: 1,
                      style: BorderStyle.solid)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Text("More info"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    color: Colors.white,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('12',style: TextStyle(fontSize: 35,color: Colors.black.withOpacity(0.8),fontWeight: FontWeight.bold,decoration: TextDecoration.none),),
                        Text('+',style: TextStyle(fontSize: 30,color: Colors.black.withOpacity(0.8),decoration: TextDecoration.none,fontWeight: FontWeight.bold),)
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Related for 12+"),
                      Text("Simulated Gambling\nUsers Interact,In-Game Purchases",style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                      InkWell(
                          onTap: (){
                            _launchURL(url: 'https://support.google.com/googleplay?p=appgame_ratings');
                          },
                          child: Text("Learn More",style: TextStyle(fontSize: 13,color: Colors.teal,decoration: TextDecoration.none),))
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.verified_user,color: Colors.white.withOpacity(0.5),size: 40,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Editors' Choice"),
                      Text("Editors' Choice",style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                    ],
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.font_download,color: Colors.white.withOpacity(0.5),size: 40,),
                Padding(
                  padding: const EdgeInsets.only(right: 15 ,left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Contains ads"),
                      Text("Ads are placed by the app developer",style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none)),
                      InkWell(
                          onTap: (){
                            _launchURL(url: 'https://support.google.com/googleplay/?p=ads_badge&hl=en_US');
                          },
                          child: Text("Learn More",style: TextStyle(fontSize: 13,color: Colors.teal,decoration: TextDecoration.none),))
                    ],
                  ),
                ),

              ],
            ),
          ), Padding(
            padding: const EdgeInsets.only(right: 15,top: 20,bottom: 20 ,left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.videogame_asset,color: Colors.white.withOpacity(0.5),size: 40,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Uses Google Play Games"),
                      Text("For automatic sign-in,leaderboards,\nachievements,and more",style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none)),
                    ],
                  ),
                ),

              ],
            ),
          ), Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.local_activity,color: Colors.white.withOpacity(0.5),size: 40,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Achievements"),
                      Text("Grants you achievements for\ncompleting goals and skill-based\nchallenges\n\n",style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                    ],
                  ),
                ),

              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Colors.white.withOpacity(0.5),
                      width: 1,
                      style: BorderStyle.solid)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Game info"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Version",style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                Text("5.0.1")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all( 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Updated on",style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                Text("Sep 16,2020")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Downloads",style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                Text("500,000,000+ downloads")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all( 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Download size",style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                Text("62.05 MB")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("In-app purchases",style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                Text("EGP 4.99 - EGP 1,849.99 per item")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all( 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Offered by",style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                Text("Miniclip.com")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Released on",style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                Text("Jan 23, 2013")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all( 20),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (ctx)=>MoreAboutScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("App permissions",style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                  Text("See More",style: TextStyle(fontSize: 14,color: Colors.teal,decoration: TextDecoration.none),)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
