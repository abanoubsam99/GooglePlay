import 'package:flutter/material.dart';

class EventsScreen extends StatefulWidget {
  @override
  _EventsScreenState createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
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
                      BorderSide(color: Colors.transparent.withOpacity(0.5)))),
            ),
            preferredSize: Size(MediaQuery.of(context).size.width, 2)),
        elevation: 1,
        backgroundColor: Colors.white.withOpacity(0.05),
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '8 Ball Pool',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      decoration: TextDecoration.none),
                ),
              ],
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: (){},
              child: Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.white.withOpacity(0.3),width: 0.8,style: BorderStyle.solid),
                  color: Colors.transparent
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Center(child: Text("Install",style: TextStyle(fontSize: 15,color: Colors.teal,decoration: TextDecoration.none),),),
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.event,size: 18,color: Colors.white.withOpacity(0.5),),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text("Event ",style: TextStyle(fontSize: 14,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Icon(Icons.brightness_1,size: 3,color: Colors.white.withOpacity(0.5),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(" Ends on 10/11/20\n",style: TextStyle(fontSize: 14,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                )
              ],
            ),
            Text("Let's celebrate Music in 8 Ball Pool! Don't miss the unique themed prizes!\nAre you a music lover? We are! What's your style? Rock, Hip-Hop, Punk, Metal, House? In this Season we celebrate them all. Music for all tastes and Pool for players willing to win more. Collect all the coolest rewards. Enjoy your Season. Play now!\n",style: TextStyle(fontSize: 14,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none,wordSpacing: 3),),
            InkWell(
              onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: NetworkImage('https://scontent.faly3-2.fna.fbcdn.net/v/t1.0-9/119871423_3662242430462356_1887094977840050596_o.jpg?_nc_cat=105&_nc_sid=2c4854&_nc_ohc=yoa3rfg0l4YAX-vbISA&_nc_ht=scontent.faly3-2.fna&oh=a5b35a1068b1a98f31508354c7bf7bc5&oe=5F8D2ED4'),
                  fit: BoxFit.cover)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Row(
                children: [
                  InkWell(
                      onTap: (){},
                      child: Text("See events in other games",style: TextStyle(fontSize: 14,color: Colors.teal,decoration: TextDecoration.none),)),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
