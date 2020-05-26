import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

class adjektif_prefiks extends StatefulWidget {
  @override
  _adjektif_prefiksState createState() => _adjektif_prefiksState();
}

class _adjektif_prefiksState extends State<adjektif_prefiks> {

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

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("English"),
          backgroundColor: Colors.teal,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          physics: AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          children: <Widget>[
            Container(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      "KÈK ADJEKTIF",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 30.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.only(bottom: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "POZITIF\n\n"
                                  "Able\n\n"
                                  "Kind\n\n"
                                  "Usual\n\n"
                                  "Happy\n\n"
                                  "Friendly\n\n"
                                  "Patient\n\n"
                                  "Perfect\n\n"
                                  "Possible\n\n"
                                  "Polite\n\n"
                                  "Pure\n\n"
                                  "Moral\n\n"
                                  "Mature\n\n"
                                  "Visible\n\n"
                                  "Efficient\n\n"
                                  "Appropriate\n\n"
                                  "Formal\n\n"
                                  "Correct\n\n"
                                  "Complete\n\n"
                                  "Active\n\n"
                                  "Acceptable\n\n"
                                  "Predictable\n\n"
                                  "Known\n\n"
                                  "Healthy\n\n"
                                  "Fair\n\n"
                                  "Interesting\n\n"
                                  "Licit\n\n"
                                  "Legal\n\n"
                                  "Legible\n\n"
                                  "Spell\n\n"
                                  "Read\n\n"
                                  "Treat\n\n"
                                  "Rational\n\n"
                                  "Regular\n\n"
                                  "Responsible\n\n"
                                  "Honest\n\n"
                                  "Obey\n\n"
                                  "Order\n\n"
                                  "Agree\n\n"
                                  "Advantage\n\n"
                                  "Satisfy\n\n"
                                  "Like\n\n"
                                  "Connect\n",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            )),
                        Container(
                            padding: EdgeInsets.only(bottom: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "NEGATIF\n\n"
                                  "Unable\n\n"
                                  "Unkind\n\n"
                                  "Unusual\n\n"
                                  "Unhappy\n\n"
                                  "Unfriendly\n\n"
                                  "Impatient\n\n"
                                  "Imperfect\n\n"
                                  "Impossible\n\n"
                                  "Impolite\n\n"
                                  "Impure\n\n"
                                  "Immoral\n\n"
                                  "Immature\n\n"
                                  "Invisible\n\n"
                                  "Inefficient\n\n"
                                  "Inappropriate\n\n"
                                  "Informal\n\n"
                                  "Incorrect\n\n"
                                  "Incomplete\n\n"
                                  "Inactive\n\n"
                                  "Unacceptable\n\n"
                                  "Unpredictable\n\n"
                                  "Unknown\n\n"
                                  "Unhealthy\n\n"
                                  "Unfair\n\n"
                                  "Uninteresting\n\n"
                                  "Illicit\n\n"
                                  "Illegal\n\n"
                                  "Illegible\n\n"
                                  "Misspell\n\n"
                                  "Misread\n\n"
                                  "Mistreat\n\n"
                                  "Irrational\n\n"
                                  "Irregular\n\n"
                                  "Irresponsible\n\n"
                                  "Dishonest\n\n"
                                  "Disobey\n\n"
                                  "Disorder\n\n"
                                  "Disagree\n\n"
                                  "Disadvantage\n\n"
                                  "Dissatisfy\n\n"
                                  "Dislike\n\n"
                                  "Disconnect\n",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
          ],
        ));
  }
}
