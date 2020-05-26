import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(s_manb_fanmi());

class s_manb_fanmi extends StatefulWidget {
  @override
  _s_manb_fanmiState createState() => _s_manb_fanmiState();
}

class _s_manb_fanmiState extends State<s_manb_fanmi> {
  @override
  void initState() {
    FirebaseAdMob.instance
        .initialize(appId: 'ca-app-pub-5567410113651073~4007866614');
    _bannerAd = createBannerAd()
      ..load()
      ..show();
    _interstitialAd = createInterstitialAd()
      ..load()
      ..show();
    RewardedVideoAd.instance.load(
        adUnitId: 'ca-app-pub-5567410113651073/5229097914',
        targetingInfo: targetingInfo);
    super.initState();
  }

  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    nonPersonalizedAds: true,
    keywords: <String>['This', 'That'],
  );

  BannerAd _bannerAd;
  InterstitialAd _interstitialAd;

  BannerAd createBannerAd() {
    return BannerAd(
        adUnitId: 'ca-app-pub-5567410113651073/8712404787',
        size: AdSize.banner,
        listener: (MobileAdEvent event) {
          print("BannerAd $event");
        });
  }

  InterstitialAd createInterstitialAd() {
    return InterstitialAd(
        adUnitId: 'ca-app-pub-5567410113651073/3761145214',
        listener: (MobileAdEvent event) {
          print("IntersttialAd $event");
        });
  }

  @override
  void dispose() {
    _bannerAd.dispose();
    _interstitialAd.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spanish"),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        physics: AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        children: <Widget>[
          Container(
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  Container(
                    child: Text(
                      "MIEMBROS DE LA FAMILIA",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 25.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Say('Madre', 'Manman'),
                      Say('Padre', 'Papa'),
                      Say('Papá', 'Papa'),
                      Say('Niños', 'Pitit yo'),
                      Say('hijo', 'Pitit gason'),
                      Say('Hija', 'Pitit fi'),
                      Say('Hermana', 'Sè'),
                      Say('Hermano', 'Frè'),
                      Say('Abuelo', 'Gran papa'),
                      Say('Abuela', 'Grann'),
                      Say('Nieto', 'Pitit pitit (gason)'),
                      Say('Nieta', 'Pitit pitit (fi)'),
                      Say('Tía', 'Matant'),
                      Say('Tío', 'Tonton'),
                      Say('Sobrina', 'Nyès'),
                      Say('Sobrino', 'Neve'),
                      Say('Primo', 'Kouzen'),
                      Say('Prima', 'Kouzin'),
                      Say('Marido', 'Mari'),
                      Say('Esposa', 'Madanm'),
                      Say('Cuñada', 'Bèl sè'),
                      Say('Cuñado', 'Bò frè'),
                      Say('Suegra', 'Bèl mè'),
                      Say('Suegro', 'Bò pè'),
                      Say('Prometido', 'Fiyanse (gason)'),
                      Say('Prometida', 'Fiyanse (fi)'),
                    ],
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Say extends StatelessWidget {
  final String angle;
  final String kreyol;
  const Say(this.angle, this.kreyol);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil.instance.setHeight(270),
      child: Card(
        child: GestureDetector(
          onTap: () {
            FlutterPluginTts.speak(angle);
          },
          child: Container(
            padding: EdgeInsets.all(0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ListTile(
                  title: Text(
                    angle,
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text(
                    kreyol,
                    style: TextStyle(fontSize: 15),
                  ),
                  leading: Icon(Icons.play_arrow),
                )
              ],
            ),
          ),
        ),
        color: Colors.teal[10],
      ),
    );
  }
}
