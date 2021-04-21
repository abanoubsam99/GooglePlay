import 'package:finalgoogleplay/drawer.dart';
import 'package:flutter/material.dart';

class SubscriptionsScreen extends StatefulWidget {
  @override
  _SubscriptionsScreenState createState() => _SubscriptionsScreenState();
}

class _SubscriptionsScreenState extends State<SubscriptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.13),
      appBar: AppBar(
        elevation: 0,
        title: Text("Subscriptions" ,style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),),
        leading:IconButton(icon: Icon(Icons.arrow_back,size: 25,color: Colors.grey,),onPressed: (){Navigator.pop(context);},) ,
      ),
      drawer: customDrawer(context: context),

      body: Padding(
        padding: const EdgeInsets.only(right: 20,left:20,top: 130),
          child: Column(
            children: <Widget>[
              Image.network("https://img.freepik.com/free-vector/subscriber-concept-illustration_114360-2949.jpg?size=338&ext=jpg&ga=GA1.2.413067361.1576452753",width: 150,height: 150,),
              SizedBox(height: 15,),
              Text("Discover subscriptions",style: TextStyle(fontSize: 20,color: Colors.white),),
              SizedBox(height: 15,),
              Center(child:Text("You can sign up for subscriptions in your favorite apps and\n                games and manage theme in Google play ",style: TextStyle(fontSize: 12,color: Colors.white60),),),
              SizedBox(height: 25,),
              Container(
                height: 35,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.teal
                ),
                child:Center(child: Text("Get started", style: TextStyle(fontSize: 17,color:Colors.black ),),) ,
              )
            ],
          ),
        ),

    );
  }
}
