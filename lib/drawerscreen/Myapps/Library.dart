import 'package:flutter/material.dart';

Library({BuildContext context}){
  return SizedBox(
    child: ListView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(20),
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Not on this device",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "AbanoubTestApp@gmail.com",
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  "Recent ",
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
        SizedBox(height: 15,),
        liblitemlist(context: context,title: "SHAREit",imageUrl:"https://lh3.googleusercontent.com/ysu5GolL__ix8gbLyrqdHgHE9QbLdxtTJyieI2vTmIQG6HABERb_7Abh48T1v1FXxRK8=s360" ),
        liblitemlist(context: context,title: "Noon Academy",imageUrl:"https://lh3.googleusercontent.com/aoarYQRH5pqM3jsh_lmtCHm0AisGRZXPJlHUkIsFD2nIAEz_gfCwedxc_MMOnerUJ4d6=s360" ),
        liblitemlist(context: context,title: "calculator ",imageUrl:"https://lh3.googleusercontent.com/togDQrH-Quzdx_p4PtmBjhTWP-tC3gJXPMKrYezeZS8X3pGojJLO7Zrn-yYLFkwRGRA=s360" ),
        liblitemlist(context: context,title: "SHAREit",imageUrl:"https://lh3.googleusercontent.com/ysu5GolL__ix8gbLyrqdHgHE9QbLdxtTJyieI2vTmIQG6HABERb_7Abh48T1v1FXxRK8=s360" ),
        liblitemlist(context: context,title: "VideoShow",imageUrl:"https://lh3.googleusercontent.com/s-OvYqFt2F33nkIThCX0N1DWnWNdwiO_TYZuzYNLpdJytJKAbMJn5_92bS26W-HTImY=s360" ),
        liblitemlist(context: context,title: "FileMaster",imageUrl:"https://lh3.googleusercontent.com/58sr3IvX1wiE8ei_BICqPgywKgZ5DPpmRL_2YuZINnFlz_9D2os9PmueeZPPtZno0zk=s360" ),
        liblitemlist(context: context,title: "TikTok",imageUrl:"https://lh3.googleusercontent.com/iBYjvYuNq8BB7EEEHktPG1fpX9NiY7Jcyg1iRtQxO442r9CZ8H-X9cLkTjpbORwWDG9d=s360" ),
        liblitemlist(context: context,title: "Photo Lab Picture",imageUrl:"https://lh3.googleusercontent.com/U11q938TqTrRoALMyqJS6IBOw2lnxDy_g7I8KytIsAjnQyjuyIfInk5nvbw8LmlW5sM=s360" ),
        liblitemlist(context: context,title: "Instagram",imageUrl:"https://lh3.googleusercontent.com/2sREY-8UpjmaLDCTztldQf6u2RGUtuyf6VT5iyX3z53JS4TdvfQlX-rNChXKgpBYMw=s360" ),
        liblitemlist(context: context,title: "StarMaker",imageUrl:"https://lh3.googleusercontent.com/xXJnAaSdlUMQH9x_OI9GhuC5-SOpV8Mn5ZbXybECLruThbRnBtd-p6ZtOOaTPncVsTMr=s360" ),
        liblitemlist(context: context,title: "Duolingo",imageUrl:"https://lh3.googleusercontent.com/50oY1xp18j3uRqmgmUfBpsvoUD-GxIA99e6SqsyCLVwZvOLv3tw-HBxBLj8zC53Vw_Q=s360" ),
        liblitemlist(context: context,title: "Facebook",imageUrl:"https://lh3.googleusercontent.com/ccWDU4A7fX1R24v-vvT480ySh26AYp97g1VrIB_FIdjRcuQB2JP2WdY7h_wVVAeSpg=s360" ),
        liblitemlist(context: context,title: "Lose Weight",imageUrl:"https://lh3.googleusercontent.com/ZC_z7M7rdlKutl8hOiXcNKBSxwnPnbTWG_QsBfnhfIAVsVAB6WjWGYgZ3qXHy1N5XEM=s360" ),
        liblitemlist(context: context,title: "Telegram",imageUrl:"https://lh3.googleusercontent.com/ZU9cSsyIJZo6Oy7HTHiEPwZg0m2Crep-d5ZrfajqtsH-qgUXSqKpNA2FpPDTn-7qA5Q=s360" ),


      ],
    ),
  );
}

liblitemlist({BuildContext context,String title,String imageUrl}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            top: 10,
            child: Image.network(
              imageUrl,
              width: 40,
              height: 40,
            ),
          ),
          Positioned(
            left: 50,
            top: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                Text(
                  "Not installed",
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
              ],),
          ),

          Positioned(
            right: 30,
            child: OutlineButton(
              child: Text('Install',
                  style:
                  TextStyle(color: Colors.teal, fontWeight: FontWeight.bold)),
              onPressed: () {}, //callback when button is clicked
              borderSide: BorderSide(
                color: Colors.grey, //Color of the border
                style: BorderStyle.solid, //Style of the border
                width: 0.8, //width of the border
              ),
            ),
          ),
          Positioned(right: 0,top: 10,child: Icon(Icons.close,size: 25,color: Colors.grey,))
        ],
      ),
    ),
  );
}
