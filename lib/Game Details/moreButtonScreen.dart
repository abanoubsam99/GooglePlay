import 'package:finalgoogleplay/Game%20Details/gameDetailsScreen.dart';
import 'package:finalgoogleplay/SearchScreen.dart';
import 'package:finalgoogleplay/bottomSheet.dart';
import 'package:finalgoogleplay/navigationscreens/Widgets_items/Containers_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';


class MoreButtonScreen extends StatefulWidget {
  @override
  _MoreButtonScreenState createState() => _MoreButtonScreenState();
}

class _MoreButtonScreenState extends State<MoreButtonScreen> {
  bool isVisible = true;
  ScrollController scrollController = ScrollController();
  @override
  initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (isVisible)
          setState(() {
            isVisible = false;
          });
      }
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (!isVisible)
          setState(() {
            isVisible = true;
          });
      }
    });
  }
  _launchURL({String url}) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.13),
        body: Column(children: [
          AnimatedContainer(
              color: Colors.teal,
              duration: Duration(milliseconds: 100),
              height: isVisible ? 70 : 0,
              width: MediaQuery.of(context).size.width,
              child: !isVisible
                  ? null
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                    icon: Icon(
                                      Icons.arrow_back,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    }),
                                Text(
                                  'Miniclip.com',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                    icon: Icon(
                                      Icons.share,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {
                                      Share.share('https://play.google.com/store/apps/dev?id=5933611429942957630');
                                    }),
                                IconButton(
                                    icon: Icon(
                                      Icons.search,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {
                                      Navigator.push(context,MaterialPageRoute(builder: (context) => SearchScreen(titles: "Search for apps & games",)));
                                    }),
                              ]),
                        ])),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(0),
              scrollDirection: Axis.vertical,
              controller: scrollController,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://lh3.googleusercontent.com/bHetiyxgX73PkPLZAhv6HZJmkj72ZxirY1z_EgTiQ7nA8Czle3nKXYTEZsUBH4SvynA=w412-h732-rw'),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Miniclip.com',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://lh3.googleusercontent.com/n1_sBxL5o6CxW7zHK4Vi_Z_aEwcJ-1btU3GrLA0li5GTMglHQNvJ9-7FLTTh7b36iac'),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Miniclip is an international digital games and entertainment company that has developed and published over 1000 games since 2001.",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: InkWell(
                    onTap: (){
                      _launchURL(url: 'https://www.youtube.com/watch?v=PDWx-C7PnUc&feature=youtu.be');
                    },
                    onLongPress: (){
                      setState(() {
                        bottomSheet(context: context,Type: 0);
                      });
                      },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://i.ytimg.com/vi/zorpUSZZSgU/maxresdefault.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: RaisedButton(
                    elevation: 0,
                    color: Colors.transparent,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => GameScreen()));
                    },
                    onLongPress: () {
                      bottomSheet(context: context,Type: 0);
                    },
                    child: Container(
                      height: 40,
                      child: Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://is4-ssl.mzstatic.com/image/thumb/Purple124/v4/43/cc/f6/43ccf6b2-d3af-7287-cb9b-69b1dce7c579/AppIcon-0-0-1x_U007emarketing-0-0-0-7-0-0-85-220.png/246x0w.png'))),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '8 Ball Pool',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white.withOpacity(0.5)),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.verified_user,
                                      size: 15,
                                      color: Colors.white.withOpacity(0.5),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      child: Text(
                                        "Editors' Choice",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color:
                                                Colors.white.withOpacity(0.5)),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

               Padding(
                 padding: EdgeInsets.all(20),
                 child:MainSmall(context: context,title:"All apps",listnum: 2)
                 ,) ,

                RaisedButton(
                  elevation: 0,
                  color: Colors.transparent,
                  onPressed: (){
                    _launchURL(url: 'https://support.google.com/googleplay/answer/2479637?p=details_refundpolicy&ctx=developer-5933611429942957630&visit_id=637375360468963183-3384356793&rd=1');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.undo,size: 15,color: Colors.white.withOpacity(0.5),),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text('Google Play refund policy',style: TextStyle(fontSize: 13,color: Colors.white,decoration: TextDecoration.none),),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ]));
  }
}
