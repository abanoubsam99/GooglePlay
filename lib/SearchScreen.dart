import 'package:finalgoogleplay/Search/searchDestination.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  final String titles;
  SearchScreen({this.titles});
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool isClick=false;
  List<String> _list=["8 Ball Pool"," candy crush"," camscanner","car","call recorder"];
  String text ='Search';
  Widget _searchitem({int index}){
    return InkWell(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context) => SearchDestination()), );
      },
      child: Padding(
        padding: EdgeInsets.all(20),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 22,
          child: Stack(
            children: <Widget>[
              Positioned(left: 0,child: Icon(myController.text==""?Icons.restore:Icons.search,size: 25,color: Colors.grey,)),
              Positioned(
                left: 50,
                child: Row(
                  children: <Widget>[
                    Text(_list[index],style: TextStyle(fontSize: 17,color: Colors.white),),
                  ],
                ),
              ),

              Positioned(
                right: 10,
                child: InkWell(onTap: (){
                  setState(() {
                    isClick=true;
                    myController.text=_list[index];
                  });
                },child: Icon(Icons.call_made,size: 25,color: Colors.grey,textDirection: TextDirection.rtl,)),
              )

            ],),
        ),
      ),
    );
  }
  final myController = TextEditingController();
  FocusNode myFocusNode;

  textListener() {
    setState(() {
      if(myController.text!=""){
        text=widget.titles;
      }else{
      }
    });
  }

  @override
  void initState() {
    super.initState();
    myController.addListener(textListener);
    myFocusNode = FocusNode();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.13),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title:TextFormField(
          obscureText: false,
          autofocus: true,
          keyboardType: TextInputType.text,
          cursorColor: Colors.teal,
          controller: myController,
          style:TextStyle(
              color: Colors.white) ,
          decoration: InputDecoration(
            hintText: widget.titles,
            fillColor: Colors.transparent,
            filled: true,
            hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ),
        leading:IconButton(icon: Icon(Icons.arrow_back,size: 25,color: Colors.grey,),onPressed: (){Navigator.pop(context);},) ,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: (){
                  if(myController.text==""){
                  }
                  else{
                    myController.clear();
                  }
                },child: Icon(
              myController.text==""? Icons.mic_none: Icons.clear,
              size: 25,color: Colors.grey,)),
          ),
        ],
      ),


      body: Column(
        children: <Widget>[
          Divider(color: Colors.grey,),
          Expanded(child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: myController.text==""?1:_list.length,
              itemBuilder: (context, i) {
                return _searchitem( index: i,);
              }),
          )
        ],
      ),

    );
  }
}
