import 'package:flutter/material.dart';
// import 'package:percent_indicator/linear_percent_indicator.dart';

Installed({BuildContext context}){
  return SizedBox(
    child: ListView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(20),
      children: <Widget>[
        Text(
          "Manage Your apps",
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.storage,
              color: Colors.grey,
              size: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("  Storage      ",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 10,
                    ),
                    Text("97% used - 238MP free",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                // LinearPercentIndicator(
                //   width: 250.0,
                //   lineHeight: 3.5,
                //   percent: 0.9,
                //   progressColor: Colors.red,
                // )
              ],
            ),
            Icon(
              Icons.navigate_next,
              size: 30,
              color: Colors.grey,
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Divider(
          color: Colors.grey,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.stars,
              color: Colors.white,
              size: 30,
            ),
            Text(
                "   Reviews                                                 ",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            Icon(
              Icons.navigate_next,
              size: 30,
              color: Colors.grey,
            )
          ],
        ),
        SizedBox(
          height: 10,
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
            Text(
              "On this device (28) ",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              children: <Widget>[
                Text(
                  "Alphabetical ",
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.sort,
                  color: Colors.grey,
                  size: 30,
                )
              ],
            )
          ],
        ),
        SizedBox(height: 10,),

        instalitemlist(title: "SHAREit",MB: "40",imageUrl:"https://lh3.googleusercontent.com/ysu5GolL__ix8gbLyrqdHgHE9QbLdxtTJyieI2vTmIQG6HABERb_7Abh48T1v1FXxRK8=s360" ),
        instalitemlist(title: "Truecaller",MB: "12",imageUrl:"https://lh3.googleusercontent.com/64ap3L-g_bp4j3Abt3fsY_N1K8J6zbhUIlYfeUNgIrV9JSRwU5D7VJ-PUjST-rd84g=s360" ),
        instalitemlist(title: "VideoShow",MB: "61",imageUrl:"https://lh3.googleusercontent.com/s-OvYqFt2F33nkIThCX0N1DWnWNdwiO_TYZuzYNLpdJytJKAbMJn5_92bS26W-HTImY=s360" ),
        instalitemlist(title: "TikTok",MB: "30",imageUrl:"https://lh3.googleusercontent.com/iBYjvYuNq8BB7EEEHktPG1fpX9NiY7Jcyg1iRtQxO442r9CZ8H-X9cLkTjpbORwWDG9d=s360" ),
        instalitemlist(title: "Photo Lab Picture",MB: "13",imageUrl:"https://lh3.googleusercontent.com/U11q938TqTrRoALMyqJS6IBOw2lnxDy_g7I8KytIsAjnQyjuyIfInk5nvbw8LmlW5sM=s360" ),
        instalitemlist(title: "Instagram",MB: "25",imageUrl:"https://lh3.googleusercontent.com/2sREY-8UpjmaLDCTztldQf6u2RGUtuyf6VT5iyX3z53JS4TdvfQlX-rNChXKgpBYMw=s360" ),
        instalitemlist(title: "Duolingo",MB: "50",imageUrl:"https://lh3.googleusercontent.com/50oY1xp18j3uRqmgmUfBpsvoUD-GxIA99e6SqsyCLVwZvOLv3tw-HBxBLj8zC53Vw_Q=s360" ),
        instalitemlist(title: "Facebook",MB: "100",imageUrl:"https://lh3.googleusercontent.com/ccWDU4A7fX1R24v-vvT480ySh26AYp97g1VrIB_FIdjRcuQB2JP2WdY7h_wVVAeSpg=s360" ),
        instalitemlist(title: "Lose Weight",MB: "104",imageUrl:"https://lh3.googleusercontent.com/ZC_z7M7rdlKutl8hOiXcNKBSxwnPnbTWG_QsBfnhfIAVsVAB6WjWGYgZ3qXHy1N5XEM=s360" ),
        instalitemlist(title: "Telegram",MB: "35",imageUrl:"https://lh3.googleusercontent.com/ZU9cSsyIJZo6Oy7HTHiEPwZg0m2Crep-d5ZrfajqtsH-qgUXSqKpNA2FpPDTn-7qA5Q=s360" ),

      ],
    ),
  );
}

instalitemlist({String title,String MB,String imageUrl}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Image.network(
          imageUrl,
          width: 40,
          height: 40,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
            Text(
              "$MB MB . Used $MB days ago",
              style: TextStyle(fontSize: 11, color: Colors.grey),
            ),
          ],),

        OutlineButton(
          child: Text('Open',
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
    ),
  );
}

