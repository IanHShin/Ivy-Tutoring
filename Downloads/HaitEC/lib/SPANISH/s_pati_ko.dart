import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_admob/firebase_admob.dart';

void main() => runApp(s_pati_ko());

class s_pati_ko extends StatefulWidget {
  @override
  _s_pati_koState createState() => _s_pati_koState();
}

class _s_pati_koState extends State<s_pati_ko> {
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
                      "PARTES DEL CUERPO",
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
                      Pati_ko('Cabeza', 'Tèt', 'images/head.png'),
                      Pati_ko('Pelo', 'Cheve', 'images/hair.png'),
                      Pati_ko('Ojos', 'Je', 'images/eyes.png'),
                      Pati_ko('Nariz', 'Nen', 'images/nose.png'),
                      Pati_ko('Boca', 'Bouch', 'images/mouth.png'),
                      Pati_ko('Lengua', 'Lang', 'images/tongue.png'),
                      Pati_ko('Dientes', 'Dan', 'images/teeth.png'),
                      Pati_ko('Labios', 'Lèv', 'images/lips.png'),
                      Pati_ko('Cuello', 'Kou', 'images/neck.png'),
                      Pati_ko('Mano', 'Men', 'images/hand.png'),
                      Pati_ko('Dedo', 'dwèt', 'images/finger.png'),
                      Pati_ko('Oído', 'Zorèy', 'images/ears.png'),
                      Pati_ko('Cofre', 'Pwatrin', 'images/chest.png'),
                      Pati_ko('Livianos', 'Poumon', 'images/lungs.png'),
                      Pati_ko('Corazón', 'Kè', 'images/heart.png'),
                      Pati_ko('Brazo', 'Bra', 'images/arm.png'),
                      Pati_ko('Pierna', 'Janm', 'images/leg.png'),
                      Pati_ko('Hueso', 'Zo', 'images/bone.png'),
                      Pati_ko('Pies', 'Pye', 'images/feet.png'),
                    ],
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Pati_ko extends StatelessWidget {
  final String angle;
  final String kreyol;
  final String img;
  const Pati_ko(this.angle, this.kreyol, this.img);

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
                    trailing: Image.asset(img),
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
