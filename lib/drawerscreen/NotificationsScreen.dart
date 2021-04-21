import 'package:finalgoogleplay/drawer.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}
class _NotificationsScreenState extends State<NotificationsScreen> {
  List<Map<String, dynamic>> _datanotif = [
    {
      'title':'Turn on important \n notifications ',
      'body':'You can choose wich \n notifications you receive, such as \n security updates, in Settings\n 18 hours ago   ',
      'action':'GO TO SETTINGS'
    },
    {
      'title':'Free up space',
      'body':'We found 1 app you have not used\n in a while. Removing it would give\nyou 118MB of storage space\n18 hours agg ',
      'action':'SEE UNUSED APPS'
    },
  ];

  Widget _notcontainer({String title,String body,String action }){
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height /3,
        child: Column(
          children: <Widget>[
            Container(
              width:MediaQuery.of(context).size.width ,
              height: 50,
              child: Stack(
                children: <Widget>[
                  Positioned(left: 10,child: Text(title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white,),)),
                  Positioned(right: 20,child: Icon(Icons.close,color:Colors.grey,size: 25,))
                ],
              ),
            ),
            Container(
              width:MediaQuery.of(context).size.width ,
              height: 90,
              child: Stack(children: <Widget>[
                Positioned(left: 0,child: Text(body,style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.grey),)),
                Positioned(right: 5,child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR0OWA91QhqQk0e9GvAQ-fVof4dSsrwlJ4s9g&usqp=CAU",height: 70,width: 70,fit: BoxFit.cover,))
              ],
              ),
            ),
            Row(children: <Widget>[
              Text(action,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.teal),)
            ],),
            SizedBox(height: 15,),
            Divider(color: Colors.grey,),
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.13),
      appBar: AppBar(
        elevation: 0,
        title: Text("Notifications" ,style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),),
        leading:IconButton(icon: Icon(Icons.arrow_back,size: 25,color: Colors.grey,),onPressed: (){Navigator.pop(context);},) ,
      ),
      drawer: customDrawer(context: context),

      body:  SizedBox(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 2,
                itemBuilder: (ctx, index) {
                  return _notcontainer(
                    title: _datanotif[index]['title'],
                    body: _datanotif[index]['body'],
                    action: _datanotif[index]['action'],
                  );
                },

            ),
          ), );

  }
}
