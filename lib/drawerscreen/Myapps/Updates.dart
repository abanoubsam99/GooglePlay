import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

Updates ({BuildContext context}) {
    return SizedBox(
      child: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(20),
        children: <Widget>[
          Text(
            "You\'re very low on\nstorage",
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                  "To install apps or updates on\nyour device,remove apps you\nno longer need.",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal)),
              CircularPercentIndicator(
                radius: 95,
                lineWidth: 2,
                percent: 0.96,
                center: new Text("227MB\navailable",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal)),
                progressColor: Colors.red,
              ),
            ],
          ),
          Text("FREE UP SPACE ",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon(
                Icons.verified_user,
                size: 30,
                color: Colors.teal,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("No problem found",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.normal)),
                  Text("Apps scanned yesterday at 6:14",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal)),
                ],
              ),
              Icon(
                Icons.refresh,
                size: 30,
                color: Colors.teal,
              )
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Updates pending (7)",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  Text("Auto-update is turned on ",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal)),
                ],
              ),
              Container(
                width: 100,
                height: 33,
                decoration: BoxDecoration(
                    color: Colors.teal, borderRadius: BorderRadius.circular(5)),
                child: Center(
                    child: Text("Update all",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold))),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          updatelistitem(context: context,title: "Truecaller",MB: "12",imageUrl:"https://lh3.googleusercontent.com/64ap3L-g_bp4j3Abt3fsY_N1K8J6zbhUIlYfeUNgIrV9JSRwU5D7VJ-PUjST-rd84g=s360" ),
          updatelistitem(context: context,title: "TikTok",MB: "30",imageUrl:"https://lh3.googleusercontent.com/iBYjvYuNq8BB7EEEHktPG1fpX9NiY7Jcyg1iRtQxO442r9CZ8H-X9cLkTjpbORwWDG9d=s360" ),
          updatelistitem(context: context,title: "Instagram",MB: "25",imageUrl:"https://lh3.googleusercontent.com/2sREY-8UpjmaLDCTztldQf6u2RGUtuyf6VT5iyX3z53JS4TdvfQlX-rNChXKgpBYMw=s360" ),
          updatelistitem(context: context,title: "Facebook",MB: "100",imageUrl:"https://lh3.googleusercontent.com/ccWDU4A7fX1R24v-vvT480ySh26AYp97g1VrIB_FIdjRcuQB2JP2WdY7h_wVVAeSpg=s360" ),
          updatelistitem(context: context,title: "Telegram",MB: "35",imageUrl:"https://lh3.googleusercontent.com/ZU9cSsyIJZo6Oy7HTHiEPwZg0m2Crep-d5ZrfajqtsH-qgUXSqKpNA2FpPDTn-7qA5Q=s360" ),

        ],
      ),
    );
}
updatelistitem({BuildContext context,String title,String MB,String imageUrl,bool isupdate}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      SizedBox(
        width: 230,
        child: ExpansionTile(
          title: Text(title, style: TextStyle(color: Colors.grey)),
          leading: Image.network(
            imageUrl,
            width: 40,
            height: 40,
          ),
          trailing: Icon(
            Icons.keyboard_arrow_down,
            color: Colors.grey,
          ),
          subtitle: Text(
            "$MB MB",
            style: TextStyle(color: Colors.grey),
          ),
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 170,
              color: Colors.teal.withOpacity(.15),
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.wb_sunny,
                            color: Colors.teal,
                            size: 30,
                          ),
                          Text(
                            "WHAT\'S NEW",
                            style:
                            TextStyle(fontSize: 18, color: Colors.teal),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "information not provided by\ndeveloper",
                        style: TextStyle(fontSize: 15, color: Colors.teal),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
      OutlineButton(
        child: Text('Update',
            style:
            TextStyle(color: Colors.teal, fontWeight: FontWeight.bold)),
        onPressed: () {}, //callback when button is clicked
        borderSide: BorderSide(
          color: Colors.grey, //Color of the border
          style: BorderStyle.solid, //Style of the border
          width: 0.8, //width of the border
        ),
      ),
    ],
  );
}


