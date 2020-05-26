import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

class aprann_le extends StatefulWidget {
  @override
  _aprann_leState createState() => _aprann_leState();
}

class _aprann_leState extends State<aprann_le> {
  void initState() {
    super.initState();
    FirebaseAdMob.instance
        .initialize(appId: 'ca-app-pub-5567410113651073~4007866614');
    _bannerAd = createBannerAd()
      ..load()
      ..show();

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
    return Scaffold(
        appBar: AppBar(
          title: Text("English"),
          backgroundColor: Colors.teal,
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      "APRANN LÈ\n",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 30.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(),
                    Container(
                      padding: EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Image.asset(
                            'images/clock2.png',
                            height: 80,
                            width: 80,
                          ),
                          Image.asset(
                            'images/clock6.png',
                            height: 80,
                            width: 80,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 30.0, right: 30.0, bottom: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "3:00",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text("6:00", style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Image.asset(
                            'images/clock10.png',
                            height: 80,
                            width: 80,
                          ),
                          Image.asset(
                            'images/clock12.png',
                            height: 80,
                            width: 80,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 30.0, right: 30.0, bottom: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "10:00",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text("12:00", style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                    Divider(),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          style: TextStyle(fontSize: 25, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                                text: "* What time is it? = \n"
                                    "Kilè li ye?\n\n"
                                    "* Do you know what time it is? = \n"
                                    "Ou konnen kilè li ye?\n\n"
                                    "* Can you tell me the time please? = \n"
                                    "Ou ka dim kilè li ye svp?\n\n"
                                    "* What time can we meet? = \n"
                                    "A kilè nou ka rankontre?\n\n"
                                    "* What is the time? = \n"
                                    "Kilè li ye?\n\n"
                                    "* It is eight o\'clock = \n"
                                    "Li ywitè won\n\n"
                                    "* It\'s five o\'clock = \n"
                                    "Li senkè won\n\n"
                                    "* It\'s midnight = \n"
                                    "Li minwi\n\n"
                                    "* It\'s noon = \n"
                                    "Li midi\n\n"
                                    "* What time is the ceremony? = \n"
                                    "A kilè seremoni an?\n\n"
                                    "* It\'s nine forty five = \n"
                                    "Li 9:45\n\n"
                                    "* It\'s a quater to nine = \n"
                                    "Nevè mwen ka\n\n"
                                    "* It\'s forty five after eight. = \n"
                                    "Ywitè 45\n\n"
                                    "* It\'s time to go to the movies = \n"
                                    "Se lè pou nou ale nan sinema\n\n"
                                    "* It\'s too late = \n"
                                    "Li twò ta\n\n"
                                    "* It\'s too soon = \n"
                                    "Li twò bonè\n\n"
                                    "* Time went by too fast = \n"
                                    "Lè a kouri twòp\n\n"
                                    "* The super market opens at 8 am = \n"
                                    "Makèt la ouvè a 8 è nan maten\n\n"
                                    "* My class starts at nine in the morning = \n"
                                    "Klas mwen komanse a 9 è nan maten\n"),
                          ]),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              )),
        ));
  }
}
