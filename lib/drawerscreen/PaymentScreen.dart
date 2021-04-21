import 'package:finalgoogleplay/drawer.dart';
import 'package:finalgoogleplay/drawerscreen/AddCreditScreen.dart';
import 'package:flutter/material.dart';


class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.13),
        appBar: AppBar(
        elevation: 0,
        title: Text("Payment methods" ,style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.normal),),
        leading:IconButton(icon: Icon(Icons.arrow_back,size: 25,color: Colors.grey,),onPressed: (){Navigator.pop(context);},) ,
      ),
        drawer: customDrawer(context: context),

        body: Padding(
      padding: const EdgeInsets.only(right: 25,left: 25,top: 15),
      child: ListView(
        scrollDirection: Axis.vertical,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: <Widget>[
          Container(
          height: 18,
          width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.white,
                ),
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTsBFlXgn2fZrTSEsjw_nUWeEeJzclnpEHttw&usqp=CAU"

              ),
            ),
            SizedBox(width: 10,),
            Text("Mastercard-8008",style: TextStyle(color: Colors.white,fontSize: 16),)
          ],
        ),
      ),
      Divider(color: Colors.grey,),
   Padding(
     padding: const EdgeInsets.all(10),
     child: Text("Add payment method",style: TextStyle(color: Colors.white,fontSize: 16),),
   ),
   Padding(
     padding: const EdgeInsets.all(20),
     child: Row(
  children: <Widget>[
      Icon(Icons.payment,color: Colors.white60,size: 20,),
      SizedBox(width: 10,),
      InkWell(onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context) => AddCreditScreen()), );
      },child: Text("Add credit or debit card",style: TextStyle(color: Colors.white,fontSize: 16),))
  ],
),
   ),
      Divider(color: Colors.grey,),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Text("More option",style: TextStyle(color: Colors.white,fontSize: 16),),
      ),
      Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: <Widget>[
            Icon(Icons.settings,color: Colors.white60,size: 20,),
            SizedBox(width: 10,),
            Text("More Payment Setting",style: TextStyle(color: Colors.white,fontSize: 16),)
          ],
        ),
      ),

    ],
    )
    )
    );
  }
}
