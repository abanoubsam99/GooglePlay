import 'package:finalgoogleplay/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  List<String> _tabs = ['Preferences', 'Rewards', 'Purchase history','Family'];
  bool _value = false;

Widget _Purchitem({String imageUrl,String title,String subtitle,String price}){
  return Padding(
    padding: EdgeInsets.only(right: 15,left: 15,top: 15,bottom: 10),
    child: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: Stack(
        children: [
          Positioned(
            left: 10,
            child: Container(
              width: 28,
              height: 40,
              //color: Colors.white,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  image:DecorationImage(image: NetworkImage(imageUrl),fit: BoxFit.cover)
              ),
            ),
          ),
          Positioned(
            left: 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.white,fontSize: 17),
                ),
                Text(
                  subtitle,
                  style: TextStyle(fontSize: 15, color: Colors.white54),
                ),
              ],
            ),
          ),
          Positioned(
            right: 10,
            child: Text(
              'EGP $price',
              style: TextStyle(color: Colors.white,fontSize: 18),
            ),
          )
        ],
      ),
    ),
  );
}

  Widget _preferences(){
    return  ListView(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text('Email Preferences',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 16,
                    height: 2,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text('Emails from Google Play',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 4,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Text(
                      'Receive emails with news and offers from \n Google Play',
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 14,

                        //fontWeight: FontWeight.w400,
                        height: 1,
                      )),
                  Switch(
                    activeColor: Colors.teal,
                    activeTrackColor: Colors.teal.withOpacity(.3),
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor: Colors.grey.withOpacity(.7),
                    value: _value,
                    onChanged: (bool value) {
                      setState(() {
                        _value = value;
                      });
                    },
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text('akramessam@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 3,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text('Change contact email',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 14,

                    //fontWeight: FontWeight.w400,
                    height: 1,
                  )),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                'The adress where you get information about most \n of the Google products you use with this account.',
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 14,

                  //fontWeight: FontWeight.w400,
                  //height: 2,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                'More options',
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 14,

                  //fontWeight: FontWeight.w400,
                  height: 2,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 1,
              color: Colors.white24,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text('country and profiles',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 16,
                    height: 2,
                  )),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Egypt',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 3,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        'Akram Essam',
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 14,

                          //fontWeight: FontWeight.w400,
                          //height: 2,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 200,
                ),
                Icon(
                  Icons.check_circle,
                  color: Colors.teal,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                'You should change your play country only when you move to a new country.Learn more',
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 14,

                  //fontWeight: FontWeight.w400,
                  //height: 2,
                ),
              ),
            ),
          ],
        ),
      ],

    );
  }
  Widget _rewards(){
    return Padding(
      padding: const EdgeInsets.only(top: 100,right: 20,left: 20),
      child: Column(
          children: <Widget>[
          Image.network("https://img.freepik.com/free-vector/gift-card-customer-loyalty-programs-as-part-return-marketing-returns-interest-points-bonuses-online-support-smartphone-gives-gift-card-from-loyalty-program-isometric_108855-1920.jpg?size=338&ext=jpg&ga=GA1.2.413067361.1576452753",width: 200,height: 200,),
            SizedBox(height: 15,),
            Text("You\'re all caught up",style: TextStyle(fontSize: 20,color: Colors.white),),
            SizedBox(height: 15,),
            Center(child:Text("Check back periodically for special deals and free items,or redeem a promo code.",style: TextStyle(fontSize: 12,color: Colors.white60),),),
            SizedBox(height: 20,),
            Container(
              height: 35,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.teal
              ),
              child:Center(child: Text("Redeem promo code", style: TextStyle(fontSize: 13,color:Colors.black ,fontWeight: FontWeight.bold),),) ,
            )
        ],
      ),
    );
  }
  Widget _purchasehistory(){
    return ListView(
      children: <Widget>[
      Container(
      width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text('Total you\'ve spent in Septemper',
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 14,
                  height: 2,
                )),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Text(
                  'EGP',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '0.00',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
                'Your budget only applies to this account, and you can change it at any time',
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 14,
                )),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              'Set Budget',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Divider(
            thickness: 1,
            color: Colors.white24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              'November 2018',
              style: TextStyle(
                color: Colors.white60,
                fontSize: 16,
                height: 2,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          _Purchitem(title: "Expert Secrets",subtitle: "Nov 24,2018",price: "0.00",imageUrl: "https://books.google.com/books/content/images/frontcover/EKPTDwAAQBAJ?fife=w400-h600"),
          _Purchitem(title: "Blood and Oil",subtitle: "Mar 15,2020",price: "20.50",imageUrl: "https://books.google.com/books/content/images/frontcover/uL3kDwAAQBAJ?fife=w400-h600"),
          _Purchitem(title: "Pep Guardiola",subtitle: "Nov 13,2012",price: "257.1",imageUrl: "https://books.google.com/books/content/images/frontcover/FdVABn_TAX4C?fife=w400-h600"),
          _Purchitem(title: "Internet of Things ",subtitle: "Aug 31,2017",price: "507.23",imageUrl: "https://books.google.com/books/content/images/frontcover/ROnUDQAAQBAJ?fife=w400-h600"),
    ]
    ),),]
    );
  }
  Widget _family(){
    return  Padding(
      padding: const EdgeInsets.only(top: 100,right: 20,left: 20),
      child: Column(
          children: <Widget>[
            Image.network("https://img.freepik.com/free-vector/big-family-meeting_74855-5220.jpg?size=626&ext=jpg&ga=GA1.2.413067361.1576452753",width: 200,height: 200,),
            SizedBox(height: 10,),
            Center(child:Text("Purchase apps, games,books,movies,and TV show and share with up to 5 family members.",style: TextStyle(fontSize: 12,color: Colors.white60),),),
            SizedBox(height: 15,),
            Container(
              height: 35,
              width: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.teal
              ),
              child:Center(child: Text("Sign up now ", style: TextStyle(fontSize: 13,color:Colors.black ,fontWeight: FontWeight.bold),),) ,
            )
          ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: new Scaffold(
        drawer: customDrawer(context: context),
        backgroundColor: Colors.white.withOpacity(0.13),
        body: new NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              new SliverAppBar(
                title: Text("Account"),
            leading:IconButton(icon: Icon(Icons.arrow_back,size: 25,color: Colors.grey,),onPressed: (){Navigator.pop(context);},) ,
             floating: true,
                pinned: true,
                snap:
                true, // <--- this is required if I want the application bar to show when I scroll up
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(50),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
            decoration: BoxDecoration(border:Border(bottom: BorderSide(color: Colors.white.withOpacity(0.1),width: 2.0,style: BorderStyle.solid))),
            child: TabBar(
                        tabs:
                        _tabs.map((String name) => Tab(text: name)).toList(),
                        labelColor: Colors.teal,
                        indicatorColor: Colors.teal,
                        unselectedLabelColor: Colors.grey,
                        isScrollable: true,
                        labelStyle: TextStyle(
                          color: Colors.teal,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        unselectedLabelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        indicatorSize: TabBarIndicatorSize.tab,
                      ),
                    ),
                  ),
                ),
              ),
            ];
          },
          body: new TabBarView(
            children: <Widget>[_preferences(),_rewards(),_purchasehistory(),_family()],
          ),
        ),
      ),
    );
  }
}
