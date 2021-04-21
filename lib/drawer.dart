import 'package:finalgoogleplay/drawerscreen/AccountScreen.dart';
import 'package:finalgoogleplay/drawerscreen/Myapps/MyAppsScreen.dart';
import 'package:finalgoogleplay/drawerscreen/NotificationsScreen.dart';
import 'package:finalgoogleplay/drawerscreen/PaymentScreen.dart';
import 'package:finalgoogleplay/drawerscreen/PlayProtectScreen.dart';
import 'package:finalgoogleplay/drawerscreen/RedeemScreen.dart';
import 'package:finalgoogleplay/drawerscreen/SettingScreen.dart';
import 'package:finalgoogleplay/drawerscreen/SubscriptionsScreen.dart';
import 'package:finalgoogleplay/drawerscreen/WishlistScreen.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

Widget _titleCard({String title, Widget icon, Function onTap}) {
  return InkWell(
    onTap: onTap,
    splashColor: Colors.red[800],
    highlightColor: Colors.red[800].withOpacity(.3),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        children: [
          icon,
          SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 17,
                color: Colors.grey),
          ),
          SizedBox(
            width: 70,
          ),

        ],
      ),
    ),
  );
}

Widget _titleCard2({String title, Widget icon, Function onTap, Widget icon2}) {
  return InkWell(
    onTap: onTap,
    splashColor: Colors.red[800],
    highlightColor: Colors.red[800].withOpacity(.3),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        children: [
          icon,
          SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 17,
                color: Colors.grey),
          ),
          SizedBox(
            width: 70,
          ),
          icon2
        ],
      ),
    ),
  );
}



Widget customDrawer({BuildContext context}) {
  return Drawer(
    child: Container(
      child: Scrollbar(
        child: ListView(
          children: [
            Container(
                height: 55,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                        image: AssetImage("assets/image/logo.png")),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "GooglePlay",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                          color: Colors.grey),
                    )
                  ],
                )),
            Divider(
              color: Colors.grey,
            ),
            _titleCard(
                title: 'My apps & games',
                icon: Icon(
                  Icons.apps,
                  size: 25,
                  color: Colors.grey,
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,MaterialPageRoute(builder: (context) => MyApps()), );
                }),
            _titleCard(
                title: 'Notifications',
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,MaterialPageRoute(builder: (context) => NotificationsScreen()), );

                },
                icon: Icon(
                  Icons.notifications_none,
                  size: 25,
                  color: Colors.grey,
                )),
            _titleCard(
                title: 'Subscriptions',
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,MaterialPageRoute(builder: (context) => SubscriptionsScreen()), );

                },
                icon: Icon(
                  Icons.loop,
                  size: 25,
                  color: Colors.grey,
                )),
            _titleCard(
                title: 'Wishlist',
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,MaterialPageRoute(builder: (context) => WishlistScreen()), );

                },
                icon: Icon(
                  Icons.bookmark_border,
                  size: 25,
                  color: Colors.grey,
                )),
            Divider(
              color: Colors.grey,
            ),
            _titleCard(
                title: 'Account',
                icon: Icon(
                  Icons.person_outline,
                  size: 25,
                  color: Colors.grey,
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,MaterialPageRoute(builder: (context) => AccountScreen()), );

                }),
            _titleCard(
                title: 'Payment methods',
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,MaterialPageRoute(builder: (context) => PaymentScreen()), );

                },
                icon: Icon(
                  Icons.payment,
                  size: 25,
                  color: Colors.grey,
                )),
            _titleCard(
                title: 'Play protect',
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,MaterialPageRoute(builder: (context) => PlayProtectScreen()), );
                },
                icon: Icon(
                  Icons.play_circle_outline,
                  size: 25,
                  color: Colors.grey,
                )),
            _titleCard(
                title: 'Setting',
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,MaterialPageRoute(builder: (context) => SettingScreen()), );

                },
                icon: Icon(
                  Icons.settings,
                  size: 25,
                  color: Colors.grey,
                )),
            Divider(
              color: Colors.grey,
            ),
            _titleCard2(
              title: 'Open Movies app',
              onTap: () {
                _launched = _launchUniversalLinkIos('https://play.google.com/store/apps/details?id=com.google.android.videos&hl=en_US');
              },
              icon: Icon(
                Icons.local_movies,
                size: 25,
                color: Colors.grey,
              ),
              icon2: Icon(
                Icons.input,
                size: 25,
                color: Colors.grey,
              ),
            ),
            _titleCard2(
              title: 'Open Books app  ',
              onTap: () {
                _launched = _launchUniversalLinkIos('https://play.google.com/store/apps/details?id=com.google.android.apps.books&hl=en_US');

              },
              icon: Icon(
                Icons.book,
                size: 25,
                color: Colors.grey,
              ),
              icon2: Icon(
                Icons.input,
                size: 25,
                color: Colors.grey,
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            InkWell(
              splashColor: Colors.red[800],
              highlightColor: Colors.red[800].withOpacity(.3),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context,MaterialPageRoute(builder: (context) => RedeemScreen()), );

              },
              child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    "Redeem",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Colors.grey),
                  )),
            ),
            InkWell(
              splashColor: Colors.red[800],
              highlightColor: Colors.red[800].withOpacity(.3),
              onTap: (){
                _launchURL('https://support.google.com/googleplay/?hl=en#topic=3364260');
              },
              child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text("Help & feedback",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          color: Colors.grey))),
            ),
            InkWell(
              splashColor: Colors.red[800],
              highlightColor: Colors.red[800].withOpacity(.3),
              onTap: (){
                _launchURL('https://support.google.com/googleplay/answer/6209547?visit_id=1601906444977-7186398360012390951&p=pff_parentguide&rd=1');},
              child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text("Parent Guide",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          color: Colors.grey))),
            ),
            InkWell(
              splashColor: Colors.red[800],
              highlightColor: Colors.red[800].withOpacity(.3),
              onTap: (){
                _launchURL('https://support.google.com/googleplay/?p=about_play');
              },
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text("About Google Play",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Colors.grey)),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

//
Future<void> _launched;
Future<void> _launchUniversalLinkIos(String url) async {
  if (await canLaunch(url)) {
    final bool nativeAppLaunchSucceeded = await launch(
      url,
      forceSafariVC: false,
      universalLinksOnly: true,
    );
    if (!nativeAppLaunchSucceeded) {
      await launch(url, forceSafariVC: true);
    }
  }
}
