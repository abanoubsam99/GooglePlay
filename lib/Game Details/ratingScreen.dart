import 'package:finalgoogleplay/Game%20Details/gameDetailsScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:url_launcher/url_launcher.dart';


class RatingScreen extends StatefulWidget {
  final double star;
  RatingScreen({this.star});
  @override
  _RatingScreenState createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  bool visible=true;
  List <Map<String,dynamic>> _buttons=[
    {
      'title':'No',
      'isSelected': false
    },
    {
      'title':'Not sure',
      'isSelected': false
    },
    {
      'title':'Yes',
      'isSelected': false
    }
  ];
  List <Map<String,dynamic>> _buttons1=[
    {
      'title':'No',
      'isSelected': false
    },
    {
      'title':'Not sure',
      'isSelected': false
    },
    {
      'title':'Yes',
      'isSelected': false
    }
  ];
  List <Map<String,dynamic>> _buttons2=[
    {
      'title':'No',
      'isSelected': false
    },
    {
      'title':'Not sure',
      'isSelected': false
    },
    {
      'title':'Yes',
      'isSelected': false
    }
  ];
  int _currentPage=0;
  int _currentButton=0;
  int _currentButton1=0;
  int _currentButton2=0;
  _launchURL({String url}) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
Widget _pageViewButtons({String title,bool selected,int index}){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: Container(
      height:35,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white.withOpacity(0.5),width: 1,style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(20),
        color: selected? Colors.teal.withOpacity(0.5):Colors.transparent
      ),
      child: Center(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(title,style: TextStyle(fontSize: 15,color: selected?Colors.teal: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
      ),),
    ),
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
                      BorderSide(color: Colors.transparent.withOpacity(0.5)))),
            ),
            preferredSize: Size(MediaQuery.of(context).size.width, 2)),
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0.00001),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
              icon: Icon(
                Icons.clear,
                size: 25,
                color: Colors.white.withOpacity(0.5),
              ),
              onPressed: () {
                showDialog(
                    context: context,
                builder: (context){
                  return AlertDialog(
                    title: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: Text("Discard draft?",style: TextStyle(fontSize: 15,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                    ),
                    actions: [
                      InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                            child: Text('KEEP',style: TextStyle(fontSize: 15,color: Colors.teal,decoration: TextDecoration.none),),
                          )),
                      InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>GameScreen(star: 0,)));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                            child: Text('DISCARD',style: TextStyle(fontSize: 15,color: Colors.teal,decoration: TextDecoration.none),),
                          )),
                    ],
                  );
                }
                );
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
                  'Rate this app',
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.white.withOpacity(0.5),
                      decoration: TextDecoration.none),
                )
              ],
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: (){},
              child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(child: Text("Post",style: TextStyle(fontSize: 15,color: Colors.teal,decoration: TextDecoration.none),),),
                ),
            ),
          )
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          !visible? null:Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10),
              color: Colors.white.withOpacity(0.05),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                child: Center(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Reviews are public and editable\n',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                    Text('The name and photo on your Google Profile will appear with your review. Past edits are visible to users and the app developers unless you delete them.\n\n',style: TextStyle(fontSize: 15,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                            onTap:(){
                              setState(() {
                                visible=false;
                              });
                            },
                            child: Text('Got it',style: TextStyle(fontSize: 15,color: Colors.teal,decoration: TextDecoration.none),)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: InkWell(
                              onTap:(){
                                _launchURL(url: 'https://play.google.com/about/comment-posting-policy/');
                              },
                              child: Text('Learn more',style: TextStyle(fontSize: 15,color: Colors.teal,decoration: TextDecoration.none),)),
                        )
                      ],
                    )
                  ],
                ),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 20),
            child: RatingBar(
              itemCount: 5,
              direction: Axis.horizontal,
              initialRating: widget.star,
              minRating: 1,
              maxRating: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 15),
              tapOnlyMode: true,
              ratingWidget: RatingWidget(
                  full: Icon(Icons.star,color: Colors.teal,),
                  half: Icon(Icons.star_half,color: Colors.teal,),
                  empty: Icon(Icons.star_border,color: Colors.white.withOpacity(0.5),)),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 100,
              child: TextFormField(
                autofocus: true,
                maxLength: 500,
                decoration: InputDecoration(
                  hintText: 'Describe your experience (optional)',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(style: BorderStyle.solid,color: Colors.teal,width: 2),
                    borderRadius: BorderRadius.circular(5)
                  )
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 150,
            child: PageView(
              scrollDirection: Axis.horizontal,
              onPageChanged: (index){
                setState(() {
                  _currentPage=index;
                });
              },
              children: [
                Container(
                  width:MediaQuery.of(context).size.width-100,
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white.withOpacity(0.5),width: 1,style: BorderStyle.solid)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Is this a dance game?',style: TextStyle(fontSize: 15,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                          InkWell(
                              onTap: !_buttons[_currentButton]['isSelected']==true?null: (){
                                setState(() {
                                  _buttons[_currentButton]['isSelected']=false;
                                });
                              },
                              child: Text("Clear",style: TextStyle(fontSize: 15,color: _buttons[_currentButton]['isSelected']?Colors.teal: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),))
                        ],
                      ),
                      SizedBox(
                        height: 35,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (ctx,index){
                            return InkWell(
                              onTap: (){
                                setState(() {
                                  _buttons[_currentButton]['isSelected']=false;
                                  _currentButton=index;
                                  _buttons[_currentButton]['isSelected']=true;
                                });

                              },
                              child: _pageViewButtons(
                                  title: _buttons[index]['title'],
                                  selected: _buttons[index]['isSelected'],
                                  index: index
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width:MediaQuery.of(context).size.width-100,
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white.withOpacity(0.5),width: 1,style: BorderStyle.solid)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Does this game require online\nconnection during initial setup?',style: TextStyle(fontSize: 15,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                          InkWell(
                              onTap: !_buttons1[_currentButton1]['isSelected']==true?null: (){
                                setState(() {
                                  _buttons1[_currentButton1]['isSelected']=false;
                                });
                              },
                              child: Text("Clear",style: TextStyle(fontSize: 15,color: _buttons1[_currentButton1]['isSelected']?Colors.teal: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),))
                        ],
                      ),
                      SizedBox(
                        height: 35,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (ctx,index){
                            return InkWell(
                              onTap: (){
                                setState(() {
                                  _buttons1[_currentButton1]['isSelected']=false;
                                  _currentButton1=index;
                                  _buttons1[_currentButton1]['isSelected']=true;
                                });
                              },
                              child: _pageViewButtons(
                                  title: _buttons1[index]['title'],
                                  selected: _buttons1[index]['isSelected'],
                                  index: index
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width:MediaQuery.of(context).size.width-100,
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white.withOpacity(0.5),width: 1,style: BorderStyle.solid)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Is this a tile-matching game?',style: TextStyle(fontSize: 15,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
                          InkWell(
                              onTap: !_buttons2[_currentButton2]['isSelected']==true?null: (){
                                setState(() {
                                  _buttons2[_currentButton2]['isSelected']=false;
                                });
                              },
                              child: Text("Clear",style: TextStyle(fontSize: 15,color: _buttons2[_currentButton2]['isSelected']?Colors.teal: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),))
                        ],
                      ),
                      SizedBox(
                        height: 35,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (ctx,index){
                            return InkWell(
                              onTap: (){
                                setState(() {
                                  _buttons2[_currentButton2]['isSelected']=false;
                                  _currentButton2=index;
                                  _buttons2[_currentButton2]['isSelected']=true;
                                });
                              },
                              child: _pageViewButtons(
                                  title: _buttons2[index]['title'],
                                  selected: _buttons2[index]['isSelected'],
                                  index: index
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.brightness_1,size: _currentPage==0?12:7,color: Colors.white.withOpacity(0.5),),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Icon(Icons.brightness_1,size: _currentPage==1?12:7,color: Colors.white.withOpacity(0.5),),
                ),
                Icon(Icons.brightness_1,size: _currentPage==2?12:7,color: Colors.white.withOpacity(0.5),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
