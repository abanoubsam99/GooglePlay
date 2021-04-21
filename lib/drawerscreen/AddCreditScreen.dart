import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddCreditScreen extends StatefulWidget {
  @override
  _AddCreditScreenState createState() => _AddCreditScreenState();
}

class _AddCreditScreenState extends State<AddCreditScreen> {
  final myController = TextEditingController();
  Color colorba=Colors.grey.withOpacity(.3);
  Color colortx=Colors.grey;

  FocusNode myFocusNode;


  textListener() {
    setState(() {
      if(myController.text!=""){
        colorba=Colors.teal;
        colortx=Colors.black;
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
          title: Text(
            "Add credit or debit card",
            style: TextStyle(
                fontSize: 17, color: Colors.white, fontWeight: FontWeight.normal),
          ),
          leading:IconButton(icon: Icon(Icons.arrow_back,size: 25,color: Colors.grey,),onPressed: (){Navigator.pop(context);},) ,

        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: TextFormField(
                obscureText: false,
                autofocus: true,
                keyboardType: TextInputType.number,
                cursorColor: Colors.teal,
                controller: myController,
                style: TextStyle(color: Colors.grey),
                textDirection: TextDirection.ltr,
                decoration: InputDecoration(
                    labelText: "Card number",
                    labelStyle: TextStyle(color: Colors.teal,fontSize: 18),
                    alignLabelWithHint: true,
                    fillColor: Colors.transparent,
                    filled: true,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Image.network(
                        "https://www.freepnglogos.com/uploads/visa-card-electron-logo-png-27.png",
                        width: 35,
                        height: 35,
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                        borderSide: BorderSide(color: Colors.teal))),
              ),
            ),
            Expanded(
                child: Stack(
              children: <Widget>[
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width - 60,
                    decoration: BoxDecoration(
                        color: colorba,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child: Text(
                      "Redeem",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: colortx),
                    )),
                  ),
                )
              ],
            ))
          ]),
        ));
  }
}
