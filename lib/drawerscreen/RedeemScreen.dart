import 'package:flutter/material.dart';

class RedeemScreen extends StatefulWidget {
  @override
  _RedeemScreenState createState() => _RedeemScreenState();
}

class _RedeemScreenState extends State<RedeemScreen> {
  final myController = TextEditingController();
  Color colorba=Colors.grey.withOpacity(.3);
  Color colortx=Colors.grey;

  FocusNode myFocusNode;

  textListener() {
    setState(() {
      if(myController.text!=""){
        colorba=Colors.teal;
        colortx=Colors.black87;
      }else{
        colorba=Colors.grey.withOpacity(.3);
        colortx=Colors.grey;
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
        elevation: 0,
        title: Text("Redeem a gift cart or promo\ncode" ,style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),),
        leading:IconButton(icon: Icon(Icons.arrow_back,size: 25,color: Colors.grey,),onPressed: (){Navigator.pop(context);},) ,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                    Image.network("https://www.freepnglogos.com/uploads/google-favicon-logo-20.png",width: 15,height: 15,),
                   SizedBox(width: 5,),
                    Text("AbanoubTestApp@gmail.com",style: TextStyle(fontSize: 13,color: Colors.grey))
                  ],),
                  SizedBox(height: 5,),
                  TextFormField(
                    obscureText: false,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.teal,
                    style:TextStyle(color: Colors.grey) ,
                    controller: myController,
                    decoration: InputDecoration(
                        hintText: "Enter code",
                        fillColor: Colors.transparent,
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        border:UnderlineInputBorder(borderSide: BorderSide(color: Colors.teal))
                       ),
                  ),
                  SizedBox(height: 20,),
                  Row(children: <Widget>[
                    Text.rich(
                      TextSpan(
                        text: 'By tapping \"Redeem\",you agree to the Gift Card \&\nPromotional Code ',
                        style: TextStyle(fontSize: 13,color: Colors.grey),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Terms and Conditions,',
                              style: TextStyle(
                                fontSize: 13,color: Colors.grey,
                                decoration: TextDecoration.underline,
                              )),
                          TextSpan(
                            text: " As applicable",
                            style: TextStyle(fontSize: 13,color: Colors.grey),
                          )
                          // can add more TextSpans here...
                        ],
                      ),
                    ),
                  ],),
                  Expanded(
                      child: Stack(children: <Widget>[
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width-60,
                            decoration: BoxDecoration(
                                color:colorba ,
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: Center(child: Text("Redeem",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: colortx),)),
                          ),
                        )
                      ],))

                ]),
      )

    );
  }
}
