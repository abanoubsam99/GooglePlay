import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class ReviewsScreen extends StatefulWidget {
  @override
  _ReviewsScreenState createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen>with SingleTickerProviderStateMixin {
  TabController _tabController;
  int selectedRadioTile;
  int selectedRadio;
  bool checkedBox;
  bool checkedBoxTile;

  @override
  void initState() {
    _tabController = TabController(length: 8, vsync: this);
    selectedRadio = 0;
    selectedRadioTile = 0;
    checkedBoxTile=false;
    checkedBox=false;
    super.initState();
  }
  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }
  setCheckedBox(bool val) {
    setState(() {
      checkedBox = val;
    });
  }
  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }
  setCheckedBoxTile(bool val) {
    setState(() {
      checkedBoxTile = val;
    });
  }
  List <Map<String,dynamic>> _tabData2=[
    {
      'title': 'best pool game',
      'selected':false
    },
    {
      'title': 'pop ups',
      'selected':false
    },
    {
      'title': 'real money',
      'selected':false
    },
    {
      'title': 'connection problem',
      'selected':false
    },
    {
      'title': 'play with friends',
      'selected':false
    },
    {
      'title': 'daily spin',
      'selected':false
    },
    {
      'title': 'rewards',
      'selected':false
    },
    {
      'title': 'glitches',
      'selected':false
    }
  ];
  List <Map<String,dynamic>> _tabData=[
    {
      'title': 'All',
      'icon': null,
      'selected':true
    },
    {
      'title': 'Positive',
      'icon': null,
      'selected':false
    },
    {
      'title': 'Critical',
      'icon': null,
      'selected':false
    },
    {
      'title': '5',
      'icon': Icons.star,
      'selected':false
    },
    {
      'title': '4',
      'icon': Icons.star,
      'selected':false
    },
    {
      'title': '3',
      'icon': Icons.star,
      'selected':false
    },
    {
      'title': '2',
      'icon': Icons.star,
      'selected':false
    },
    {
      'title': '1',
      'icon': Icons.star,
      'selected':false
    }
  ];
  int tabIndex=0;
  int tabIndex2=0;
  int buttonIndex=0;
  List <Map<String,dynamic>> _buttons1=[
    {
      'text':'No',
      'isSelected': false,
    },
    {
      'text':'Yes',
      'isSelected': false,
    }
  ];
  List <Map<String,dynamic>> _buttons2=[
    {
      'text':'No',
      'isSelected': false,
    },
    {
      'text':'Yes',
      'isSelected': false,
    }
  ];
  List <Map<String,dynamic>> _buttons3=[
    {
      'text':'No',
      'isSelected': false,
    },
    {
      'text':'Yes',
      'isSelected': false,
    }
  ];
  List <Map<String,dynamic>> _texts=[
    {
      'text':"From my experience, I think a lot of my opponents are app generated fakes. I say this because we can shoot the exact same shot, and somehow theirs will fall in the pocket even when they miss. It never happened untill i made my first purchase! Now i lose games where i'm blowing them away but my last couple balls just won't fall and the opponents then suddenly run the table on me. I guss this is all a scam to get me to buy more. Coins don't waste your money\n"
    },
    {
      'text':"From my experience, I think a lot of my opponents are app generated fakes. I say this because we can shoot the exact same shot, and somehow theirs will fall in the pocket even when they miss. It never happened untill i made my first purchase! Now i lose games where i'm blowing them away but my last couple balls just won't fall and the opponents then suddenly run the table on me. I guss this is all a scam to get me to buy more. Coins don't waste your money\n"
    },
    {
      'text':"From my experience, I think a lot of my opponents are app generated fakes. I say this because we can shoot the exact same shot, and somehow theirs will fall in the pocket even when they miss. It never happened untill i made my first purchase! Now i lose games where i'm blowing them away but my last couple balls just won't fall and the opponents then suddenly run the table on me. I guss this is all a scam to get me to buy more. Coins don't waste your money\n"
    }
  ];
  Widget _buttons({int index,List buttonList,bool buttonSelected}){
    return Container(
      width: 70,
      child: RaisedButton(
          padding: EdgeInsets.all(0),
          onPressed: (){
            setState(() {
              buttonList[buttonIndex]['isSelected']=false;
              buttonIndex=index;
              buttonList[buttonIndex]['isSelected']=true;
            });
          },
          elevation: 0,
          color: Colors.transparent,
          child:  Container(
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            height: 25,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: buttonSelected?Colors.teal.withOpacity(0.5): Colors.white.withOpacity(0.5),width: 1,style: BorderStyle.solid)
            ),
            child: Center(
              child: Text(buttonList[index]['text'],style: TextStyle(fontSize: 11,color: buttonSelected?Colors.teal: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
            ),
          )
      ),
    );
  }
  Widget _reviews({String text,int reviewIndex,bool buttonSelected,List buttonList}){
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width:200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.purple
                      ),
                      child: Center(
                        child: Text('W',style: TextStyle(fontSize: 30,color: Colors.white,decoration: TextDecoration.none),),
                      ),
                    ),
                    Text('Wade Searle',style: TextStyle(fontSize: 17,color: Colors.white,decoration: TextDecoration.none),)
                  ],
                ),
              ),
              Container(
                width: 40,
                child: Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: PopupMenuButton(
                      padding: EdgeInsets.all(20),
                      icon: Icon(Icons.more_vert,color: Colors.white.withOpacity(0.5),),
                      itemBuilder: (ctx) {
                        return [
                          PopupMenuItem(
                              enabled: true,
                              child: Text('View edit history',style: TextStyle(color: Colors.white),)),
                          PopupMenuItem(
                              enabled: true,
                              child: Text('Flag as inappropriate',style: TextStyle(color: Colors.white))),
                          PopupMenuItem(
                              enabled: true,
                              child: Text('Flag as spam',style: TextStyle(color: Colors.white)))
                        ];
                      }),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RatingBar(onRatingUpdate: null,
                itemCount: 5,
                allowHalfRating: true,
                itemSize: 17,
                initialRating: 1,
                unratedColor: Colors.white.withOpacity(0.5),
                direction: Axis.horizontal,
                ratingWidget: RatingWidget(
                    full: Icon(Icons.star,color: Colors.teal,),
                    half: Icon(Icons.star_half,color: Colors.teal,),
                    empty: Icon(Icons.star_border,color: Colors.white.withOpacity(0.5),)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text('9/14/20',style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(text,style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Was this review helpful?",style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.5),decoration: TextDecoration.none),),
              SizedBox(
                width: 150,
                height: 35,
                child: ListView.builder(
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder:(ctx,index){
                      return _buttons(
                          buttonSelected: buttonList[index]['isSelected'],
                          index: index,
                          buttonList: buttonList
                      );}
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  Widget _tabs({String title,IconData icon,bool selected,int index}){
    return Tab(
      child: Container(
        height: 40,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: selected?Colors.transparent: Colors.white.withOpacity(0.5),width: 0.5,style: BorderStyle.solid),
            color: selected?Colors.teal.withOpacity(0.5): Colors.transparent
        ),
        child: Center(child: Row(
          children: [
            Text(title,style: TextStyle(fontSize: 16,color: selected?Colors.teal: Colors.white.withOpacity(0.5)),),
            Icon(icon,size: _tabData[index]['icon']==null?0: 16,color: selected?Colors.teal: Colors.white.withOpacity(0.5),)
          ],
        ),),
      ),
    );
}
  Widget _tabs2({String title,bool selected,int index}){
    return Tab(
      child: Container(
        height: 40,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: selected?Colors.transparent: Colors.white.withOpacity(0.5),width: 0.5,style: BorderStyle.solid),
            color: selected?Colors.teal.withOpacity(0.5): Colors.transparent
        ),
        child: Center(child: Text(title,style: TextStyle(fontSize: 16,color: selected?Colors.teal: Colors.white.withOpacity(0.5)),),),
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
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 10),
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 10),
                children: [
                  TabBar(
                    indicatorColor: Colors.transparent,
                    onTap: (int index){
                      setState(() {
                        _tabData[tabIndex]['selected']=false;
                        tabIndex=index;
                        _tabData[tabIndex]['selected']=true;
                      });
                    },
                    labelPadding: EdgeInsets.symmetric(horizontal: 8),
                    isScrollable: true,
                    controller: _tabController,
                    tabs: [
                      _tabs(
                        index: 0,
                         title: _tabData[0]['title'],
                         selected: _tabData[0]['selected'],
                         icon: _tabData[0]['icon']
                      ),
                      _tabs(
                          index: 1,
                          title: _tabData[1]['title'],
                          selected: _tabData[1]['selected'],
                          icon: _tabData[1]['icon']
                      ),
                      _tabs(
                          index: 2,
                          title: _tabData[2]['title'],
                          selected: _tabData[2]['selected'],
                          icon: _tabData[2]['icon']
                      ),
                      _tabs(
                          index: 3,
                          title: _tabData[3]['title'],
                          selected: _tabData[3]['selected'],
                          icon: _tabData[3]['icon']
                      ),
                      _tabs(
                          index: 4,
                          title: _tabData[4]['title'],
                          selected: _tabData[4]['selected'],
                          icon: _tabData[4]['icon']
                      ),
                      _tabs(
                          index: 5,
                          title: _tabData[5]['title'],
                          selected: _tabData[5]['selected'],
                          icon: _tabData[5]['icon']
                      ),
                      _tabs(
                          index: 6,
                          title: _tabData[6]['title'],
                          selected: _tabData[6]['selected'],
                          icon: _tabData[6]['icon']
                      ),
                      _tabs(
                          index: 7,
                          title: _tabData[7]['title'],
                          selected: _tabData[7]['selected'],
                          icon: _tabData[7]['icon']
                      ),
                    ],

                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text('Review topics',style: TextStyle(fontSize: 15,color: Colors.white.withOpacity(0.5)),)
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.white.withOpacity(0.5),width: 0.5,style: BorderStyle.solid))
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 10),
                children: [
                  TabBar(
                    indicatorColor: Colors.transparent,
                    onTap: (int index){
                      setState(() {
                        _tabData2[tabIndex2]['selected']=false;
                        tabIndex2=index;
                        _tabData2[tabIndex2]['selected']=true;
                      });
                    },
                    labelPadding: EdgeInsets.symmetric(horizontal: 8),
                    isScrollable: true,
                    controller: _tabController,
                    tabs: [
                      _tabs2(
                          index: 0,
                          title: _tabData2[0]['title'],
                          selected: _tabData2[0]['selected'],
                      ),
                      _tabs2(
                          index: 1,
                          title: _tabData2[1]['title'],
                          selected: _tabData2[1]['selected'],
                      ),
                      _tabs2(
                          index: 2,
                          title: _tabData2[2]['title'],
                          selected: _tabData2[2]['selected'],
                      ),
                      _tabs2(
                          index: 3,
                          title: _tabData2[3]['title'],
                          selected: _tabData2[3]['selected'],
                      ),
                      _tabs2(
                          index: 4,
                          title: _tabData2[4]['title'],
                          selected: _tabData2[4]['selected'],
                      ),
                      _tabs2(
                          index: 5,
                          title: _tabData2[5]['title'],
                          selected: _tabData2[5]['selected'],
                      ),
                      _tabs2(
                          index: 6,
                          title: _tabData2[6]['title'],
                          selected: _tabData2[6]['selected'],
                      ),
                      _tabs2(
                          index: 7,
                          title: _tabData2[7]['title'],
                          selected: _tabData2[7]['selected'],
                      ),
                    ],

                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:20,top: 20,right: 7,bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_tabData[tabIndex]['title'],style: TextStyle(fontSize: 16,color: Colors.white),),
                  Container(
                    width: 145,
                    child: Row(
                      children: [
                        Text('Most relevant',style: TextStyle(fontSize: 16,color: Colors.white),),
                        IconButton(
                            icon: Icon(Icons.sort,size: 25,color: Colors.white.withOpacity(0.5),),
                            onPressed:(){
                              setState(() {
                                showDialog(
                                  builder: (context) => Dialog(
                                    child: Container(
                                      height: 350,
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text('Sort reviews by',style: TextStyle(fontSize: 20,color: Colors.white),),
                                          StatefulBuilder(
                                            builder:(ctx,setState){
                                              return Column(
                                                children: [
                                                  RadioListTile(
                                                  value:1 ,
                                                  groupValue: selectedRadioTile,
                                                  onChanged: (val) {
                                                    setState(() {
                                                      setSelectedRadioTile(val);
                                                    });
                                                  },
                                                  title: Text('Most relevant',style: TextStyle(fontSize: 16,color: Colors.white.withOpacity(0.5)),),
                                                  activeColor: Colors.teal,
                                                  selected: true,
                                            ),
                                                  RadioListTile(
                                                    value:2 ,
                                                    groupValue: selectedRadioTile,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        setSelectedRadioTile(val);
                                                      });
                                                    },
                                                    title: Text('Most recent',style: TextStyle(fontSize: 16,color: Colors.white.withOpacity(0.5)),),
                                                    activeColor: Colors.teal,
                                                    selected: false,
                                                  )
                                                ],
                                              );}
                                          ),
                                          Text('Show reviews for',style: TextStyle(fontSize: 20,color: Colors.white),),
                                          StatefulBuilder(
                                            builder: (ctx,setState2){
                                              return Column(
                                                children: [
                                                  Directionality(
                                                    textDirection: TextDirection.rtl,
                                                    child: CheckboxListTile(
                                                      value: checkedBox,
                                                      onChanged: (val) {
                                                        setState2(() {
                                                          setCheckedBoxTile(val);
                                                        });
                                                      },
                                                      activeColor: Colors.teal,
                                                      title: Text('Latest version',style: TextStyle(fontSize: 16,color: Colors.white.withOpacity(0.5)),),
                                                      checkColor: Colors.black.withOpacity(0.5),
                                               //       contentPadding: EdgeInsets.symmetric(horizontal: 20),
                                                    ),
                                                  ),
                                                  Directionality(
                                                    textDirection: TextDirection.rtl,
                                                    child: CheckboxListTile(
                                                      value: checkedBox,
                                                      onChanged: (val) {
                                                        setState2(() {
                                                          setCheckedBoxTile(val);
                                                        });
                                                      },
                                                      activeColor: Colors.teal,
                                                      title: Text('This device model',style: TextStyle(fontSize: 16,color: Colors.white.withOpacity(0.5)),),
                                                      checkColor: Colors.black.withOpacity(0.5),
                                                  //    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          )
                                        ],
                                      ),
                                    ),
                                  ), context: context,
                                );
                              });
                            }
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            _reviews(
              buttonList: _buttons1,
              reviewIndex: 0,
              text: _texts[0]['text'],
            ),
            _reviews(
              buttonList: _buttons2,
              reviewIndex: 1,
              text: _texts[1]['text'],
            ),
            _reviews(
              buttonList: _buttons3,
              reviewIndex: 2,
              text: _texts[2]['text'],
            )
          ],
        ),
      ),
    );
  }
}
