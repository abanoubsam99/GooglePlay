import 'package:finalgoogleplay/Game%20Details/aboutGameScreen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class MoreAboutScreen extends StatefulWidget {
  @override
  _MoreAboutScreenState createState() => _MoreAboutScreenState();
}

class _MoreAboutScreenState extends State<MoreAboutScreen> {
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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0.001),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: 25,
                color: Colors.white.withOpacity(0.5),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx)=>AboutTheGame()));
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '8 Ball Pool',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          decoration: TextDecoration.none),
                    ),
                    Text('App permissions',style: TextStyle(fontSize: 14,color: Colors.white.withOpacity(0.5)),)
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height-MediaQuery.of(context).size.height/3.4,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
             // border: Border.symmetric(vertical: BorderSide(color: Colors.white.withOpacity(0.5),width: 0.5,style: BorderStyle.solid)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Version 5.0.1 may request access to\n',style: TextStyle(fontSize: 15,color: Colors.white),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.live_help,size: 25,color: Colors.white.withOpacity(0.5),),
                    SizedBox(width: 25,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Other',style: TextStyle(fontSize: 15,color: Colors.white),),
                        SizedBox(height: 10,),
                        Text("•have full network access\n•view network connections\n•control vibrations\n•prevent phone from sleeping\n•Play Install Referrer API\n•Google Play billing service\n•run at startup\n•receive data from internet",style: TextStyle(fontSize: 14,color: Colors.white.withOpacity(0.5)),),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Expanded(
              child: Column(
                children: [
                  Text("You can disable access for these permissions in Settings. Updates to 8 Ball Pool may automatically add additional capabilities within each group.",style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.5)),),
                  SizedBox(height: 35,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _launchURL(url: 'https://support.google.com/googleplay/answer/6270602?visit_id=637375803029760482-4103666779&p=app_permissons_m&rd=1');
                      });
                    },
                    child: Text('Learn more',style: TextStyle(fontSize: 15,color: Colors.white),),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
