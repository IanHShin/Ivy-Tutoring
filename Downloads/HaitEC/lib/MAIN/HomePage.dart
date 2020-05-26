import 'package:first_app/ENGLISH/dictionary.dart';
import 'package:first_app/ENGLISH/random_words.dart';
import 'package:first_app/MAIN/java.dart';
import 'package:flutter/material.dart';
import 'package:first_app/MAIN/english.dart';
import 'package:first_app/MAIN/spanish.dart';
import 'package:flutter/widgets.dart';
import 'package:first_app/MENU/profile.dart';
import 'package:first_app/MENU/pwononsyasyon.dart';
import 'package:first_app/MENU/tradwi.dart';
import 'package:first_app/MENU/ed.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:first_app/MENU/about.dart';
import 'dart:io' show Platform;

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("HaitEC"),
          backgroundColor: Colors.teal,
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new Container(
                child: UserAccountsDrawerHeader(
                  accountName: Text("HaitEC"),
                  accountEmail: Text("haitienglishcoding@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('images/log120.png'),
                    backgroundColor: Colors.white,
                  ),
                  decoration: BoxDecoration(color: Colors.teal),
                ),
                color: Colors.teal,
              ),
              ListTile(
                leading: Image.asset("images/audio.png", height: 30),
                title: Text("Pronunciation"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => pwononsyasyon(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Image.asset("images/translate.png", height: 30),
                title: Text("Translation"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => tradwi(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Image.asset("images/help.png", height: 30),
                title: Text("Help? Contact us"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ed(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Image.asset("images/rate.png", height: 30),
                title: Text("Rate the app"),
                onTap: () {
                  rate();
                },
              ),
              ListTile(
                leading: Image.asset("images/group.png", height: 30),
                title: Text("Group Chat"),
                onTap: () {
                  launch("https://t.me/joinchat/NKMVwhtJSGo5NPQpZvxs9w");
                },
              ),
              Divider(),
              Text(
                "\tCommunicate",
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.teal, fontSize: 20),
              ),
              ListTile(
                leading: Image.asset("images/share.png", height: 30),
                title: Text("Share"),
                onTap: (){
                  share();
                }
              ),
              Divider(),
              Text(
                "\tContact",
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.teal, fontSize: 20),
              ),
              ListTile(
                leading: Image.asset("images/profile.png", height: 30),
                title: Text("The Developer"),
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => profile(),
                    ),
                  );
                },
              ),
              Divider(),
              Text(
                "\tSponsor",
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.teal, fontSize: 20),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: GestureDetector(
                            child: CARD('English', "images/english.png"),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => english(),
                                ),
                              );
                            },
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            child: CARD('Spanish', "images/spanish.png"),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => spanish(),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: GestureDetector(
                          child: CARD('Dictionary', "images/voca.png"),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => dictionary(),
                              ),
                            );
                          },
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                            child: CARD(
                                'Learn 5 new words', "images/vocabulary.png"),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => random_words(),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.instance.setHeight(35),
                  ),
                  Text("Popular Pages"),
                  SizedBox(
                    height: ScreenUtil.instance.setHeight(35),
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: ScreenUtil.instance.setWidth(345),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                GestureDetector(
                                  child: CIRCLE("Java", "images/java.png"),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => java(),
                                      ),
                                    );
                                  },
                                ),
                                GestureDetector(
                                  child: CIRCLE("Share", "images/share.png"),
                                  onTap: (share),
                                ),
                                GestureDetector(
                                  child: CIRCLE("Telegram", "images/group.png"),
                                  onTap: () {
                                    launch(
                                        "https://t.me/joinchat/NKMVwhtJSGo5NPQpZvxs9w");
                                  },
                                ),
                                GestureDetector(
                                  child: CIRCLE(
                                      "Contact", "images/contact_us.png"),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ed(),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: ScreenUtil.instance.setWidth(345),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                GestureDetector(
                                  child: CIRCLE(
                                      "Translation", "images/translate.png"),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => tradwi(),
                                      ),
                                    );
                                  },
                                ),
                                GestureDetector(
                                    child: CIRCLE("Help", "images/help.png"),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ed(),
                                        ),
                                      );
                                    }),
                                GestureDetector(
                                    child: CIRCLE("About", "images/about.png"),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => about(),
                                        ),
                                      );
                                    }),
                                GestureDetector(
                                  child: CIRCLE("Support us", "images/money.png"),
                                  onTap: () {
                                    launch(
                                        "https://wa.me/18484694216?text=Bonswa!%20Mwen%20ta%20"
                                            "renmen%20sip%C3%B2te%20HaitEC.%20Koman%20poum%20f%C3%A8?");
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: ScreenUtil.instance.setWidth(345),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                GestureDetector(
                                  child: CIRCLE(
                                      "Pronunciation", "images/audio.png"),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => pwononsyasyon(),
                                      ),
                                    );
                                  },
                                ),
                                GestureDetector(
                                  child: CIRCLE("Rate", "images/rate.png"),
                                    onTap: (){
                                    rate();
                                    },
                                ),
                                GestureDetector(
                                    child: CIRCLE(
                                        "Developer", "images/profile.png"),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => profile(),
                                        ),
                                      );
                                    }),
                              ],
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                        ),
                        border: Border.all(width: 0, color: Colors.grey),
                      )),
                  SizedBox(height: ScreenUtil.instance.setHeight(140)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget CARD(String pageName, String img) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0.02),
      ),
      height: ScreenUtil.instance.setHeight(310),
      child: Container(
        child: new Container(
          alignment: Alignment.center,
          padding: new EdgeInsets.all(0.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                img,
                height: ScreenUtil.instance.setHeight(150),
              ),
              Text(pageName),
            ],
          ),
        ),
      ),
    );
  }

  Widget CIRCLE(String text, String img) {
    return Column(
      children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              Container(
                height: ScreenUtil.instance.setHeight(170),
                width: ScreenUtil.instance.setHeight(170),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(img),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      ScreenUtil.instance.setHeight(170),
                    ),
                  ),
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: ScreenUtil.instance.setHeight(20),
        ),
        Text(
          text,
          style: TextStyle(fontSize: 15),
        ),
        SizedBox(
          height: ScreenUtil.instance.setHeight(35),
        ),
      ],
    );
  }
  share(){
    if(Platform.isAndroid){
      Share.share("I invite you to download \"HaitEC\" to learn English, Spanish or Java for FREE.\n\n"
              "Mwen envite w telechaje \"HaitEC\" pou aprann Anglè, Espanyòl oubyen Java GRATIS.\n\n"

              "PlayStore: https://play.google.com/store/apps/details?id=com.haiti.haitec.haiticode\n\n"
              "AppStore: https://apps.apple.com/us/app/haitec/id1483542214");
    } else if(Platform.isIOS) {
      Share.share("I invite you to download \"HaitEC\" to learn English, Spanish or Java for FREE.\n\n"
          "Mwen envite w telechaje \"HaitEC\" pou aprann Anglè, Espanyòl oubyen Java GRATIS.\n\n"

              "AppStore: https://apps.apple.com/us/app/haitec/id1483542214");
    }
  }

  rate(){
    if (Platform.isAndroid){
      launch(
          "https://play.google.com/store/apps/details?id=com.haiti.haitec.haiticode");
    } else if (Platform.isIOS){
      launch(
        "https://apps.apple.com/us/app/haitec/id1483542214"
      );
    }
  }
}