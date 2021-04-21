import 'package:flutter/material.dart';

class SuggestedGames extends StatefulWidget {
  @override
  _SuggestedGamesState createState() => _SuggestedGamesState();
}

class _SuggestedGamesState extends State<SuggestedGames> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.13),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0.0013),
        leading: IconButton(icon: Icon(Icons.arrow_back,size: 20,color: Colors.white.withOpacity(0.5),), onPressed: (){
          Navigator.pop(context);
        }),
        title: Text('8 ball pool',style: TextStyle(fontSize: 20,color: Colors.white,decoration: TextDecoration.none),),
        actions: [
          IconButton(icon: Icon(Icons.search,size: 20,color: Colors.white.withOpacity(0.5),), onPressed: (){}),
          IconButton(icon: Icon(Icons.mic_none,size: 20,color: Colors.white.withOpacity(0.5),), onPressed: (){}),

        ],
        bottom: PreferredSize(
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom:
                      BorderSide(color: Colors.white.withOpacity(0.5)))),
            ),
            preferredSize: Size(MediaQuery.of(context).size.width, 2)),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.vertical,
        itemCount: 20,
        itemBuilder: (ctx,index){
          return InkWell(
            onTap: (){},
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 70,
              child: Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.teal,
                      image: DecorationImage(image: NetworkImage(''),
                      fit: BoxFit.cover
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Bubble Witch 3 Saga",style: TextStyle(fontSize: 20,color: Colors.white),),
                        Text("King",style: TextStyle(fontSize: 15,color: Colors.white),),
                        Row(
                          children: [
                            Text("4.6",style: TextStyle(fontSize: 15,color: Colors.white.withOpacity(0.5)),),
                            Icon(Icons.star,size: 15,color: Colors.white.withOpacity(0.5),)
                          ],
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
