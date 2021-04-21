import 'package:finalgoogleplay/drawer.dart';
import 'package:finalgoogleplay/drawerscreen/PlayProtectSettingsScreen.dart';
import 'package:flutter/material.dart';


class PlayProtectScreen extends StatefulWidget {
  @override
  _PlayProtectScreenState createState() => _PlayProtectScreenState();
}

class _PlayProtectScreenState extends State<PlayProtectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.13),
      appBar: AppBar(
        elevation: 0,
        title: Text("Play Protect" ,style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),),
        leading:IconButton(icon: Icon(Icons.arrow_back,size: 25,color: Colors.grey,),onPressed: (){Navigator.pop(context);},) ,
        actions: <Widget>[Padding(
          padding: const EdgeInsets.only(right: 15),
          child: InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => PlayProtectSettingsScreen()), );
            },
          child: Icon(Icons.settings,color: Colors.grey,)),
        )],
      ),
      drawer: customDrawer(context: context),
      body: Padding(
        padding: const EdgeInsets.only(right: 20,left: 20),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height /6 ,
                child: Stack(children: <Widget>[
                  Center(
                    child: Container(
                    width: 100 ,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.teal.withOpacity(.1),
                        borderRadius: BorderRadius.circular(50)
                    ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 75 ,
                      height: 75,
                      decoration: BoxDecoration(
                          color: Colors.teal.withOpacity(.2),
                          borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 30 ,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.black87.withOpacity(.3),
                          borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                  ),
                  Center(child: Icon(Icons.verified_user,color: Colors.teal,size: 50,)),

                ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(child: Text("No problems found",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),),
            SizedBox(height: 7,),
            Center(child: Text("Play Protect scanned at 6:16 PM",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.normal),),)
            ,SizedBox(height: 25,),
            Center(
              child: Container(
                width: 110,
                height: 32,
                child:OutlineButton(
                    disabledBorderColor: Colors.grey,
                    child: Text("Scane",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold),), onPressed: null,),),
            )
            ,SizedBox(height: 60,),
            Row(children: <Widget>[Text("Recently scanned apps",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold))],),
      SizedBox(height: 15,),
    Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              Image.network("https://www.freepnglogos.com/uploads/google-play-png-logo/news-google-play-music-png-logo-24.png",height: 35,width: 35,),
              Image.network("https://www.freepnglogos.com/uploads/google-play-png-logo/google-reading-books-png-logo-13.png",height: 35,width: 35,),
              Image.network("https://www.freepnglogos.com/uploads/facebook-logo-design-1.png",height: 35,width: 35,),
              Image.network("https://www.freepnglogos.com/uploads/whatsapp-logo-app-png-4.png",height: 35,width: 35,),
              Image.network("https://www.freepnglogos.com/uploads/google-chrome-logo-png-18.png",height: 35,width: 35,),
              Text("+55\nmore",style: TextStyle(color: Colors.grey),),
                SizedBox(width: 30,)


            ],),
            SizedBox(height: 25,),
            Row(children: <Widget>[ Text("Apps scanned at 6:16 PM",style: TextStyle(color: Colors.grey),),
            ],),
            SizedBox(height: 25,),
            Divider(color: Colors.grey,),
            SizedBox(height: 25,),
              Text("Play protect regularly checks your apps and device for harmful behavior. Your\'ll be notified of any security risks found.",style: TextStyle(color: Colors.grey))

            ,SizedBox(height: 35,),
            Row(children: <Widget>[
              Text("Learn more",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold))
            ],)
            ,SizedBox(height: 50,),




          ],
        ),
      ),

    );
  }
}
