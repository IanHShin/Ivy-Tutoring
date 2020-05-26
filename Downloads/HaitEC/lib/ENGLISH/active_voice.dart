import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

class active_voice extends StatefulWidget{


  @override
  _active_voiceState createState() => _active_voiceState();
}

class _active_voiceState extends State<active_voice> {
  void initState() {
    super.initState();
    FirebaseAdMob.instance.initialize(appId: 'ca-app-pub-5567410113651073~4007866614');
    _bannerAd = createBannerAd()..load()..show();

    FirebaseAdMob.instance
        .initialize(appId: 'ca-app-pub-5567410113651073~4007866614');
    super.initState();
  }

  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    nonPersonalizedAds: true,
    keywords: <String>['This', 'That'],
  );

  BannerAd _bannerAd;

  BannerAd createBannerAd() {
    return BannerAd(
        adUnitId: 'ca-app-pub-5567410113651073/8712404787',
        size: AdSize.banner,
        listener: (MobileAdEvent event) {
          print("BannerAd $event");
        });
  }

  @override
  void dispose() {
    _bannerAd.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    String a = "Active Voice";

    return Scaffold(

        appBar: AppBar( title: Text("English"), backgroundColor: Colors.teal,
        ),

        body:
        SingleChildScrollView(
          child: new Container( padding: EdgeInsets.only(top: 10.0, right: 5, left: 5),
              child: new Center(
                child: new Column(
                  children: <Widget>[

                    Text(
                      "Active and passive Voice\n",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 25.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "- Active Voice:\n"
                          "Sijè a fè akson an.\n"
                          "Ex: The cat eats the mouse.\n"
                          "*Chat la manje sourit la.\n\n"
                          "'The cat' se sijè a, li fè aksyon an, li manje sourit la. Sourit la se objè a.\n\n"

                       "- Passive Voice:\n"
                          "Sijè a sibi aksyon an.\n"
                          "Ex: The mouse is eaten by the cat.\n"
                          "*Se sourit la chat la manje.\n"
                          "oubyen\n"
                          "*Sourit la manje pa chat la.\n\n"
                          "'The mouse' se sijè a, li sibi aksyon an, chat la manje li. Sijè a tounen objè a.\n\n"
                          "Men koman pou nou jwenn vwa pasiv lè nou gen vwa aktiv:\n"
                          "Sijè a ap tounen objè a, objè a ap tounen sije a, nap itilize vèb 'to be' nan tan vèb prensipal la te ye a,"
                          "plis patisip pase vèb presipal la.\n\n"
                          "Subject + is/are or was/were + past participle + by + object\n\n"
                          "Men kèk egzanp:\n\n"
                          "-We are going to watch a movie.\n"
                          "*A movie is going to be watched by us.\n\n"
                          "-I ate an apple.\n"
                          "*An apple was eaten by me.\n\n"
                          "-She posted a video on Instagram.\n"
                          "*A video was posted on Instagram by her.\n\n"
                          "Si nou remake, lè sijè a se I, You, She etc... Nou ranplase li pa yon pwonon Me, You, Her etc...\n"
                          "Ex:\n\n"
                          "-He kicked the ball.\n"
                          "*The ball was kicked by him.\n\n"
                          "-I changed the flat tire\n"
                          "*The flat tire was changed by Me\n",
                      style: TextStyle(
                        fontSize: 25,

                      ),),
                    SizedBox(height: 50),
                  ],
                ),
              )
          ),
        )
    );
  }
}
