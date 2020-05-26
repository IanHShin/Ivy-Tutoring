import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(voc_activities());

class voc_activities extends StatefulWidget {
  @override
  _voc_activitiesState createState() => _voc_activitiesState();
}

class _voc_activitiesState extends State<voc_activities> {
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
            padding: EdgeInsets.all(3),
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 5),
                  Container(
                    child: Text(
                      "VOCABULARIOS",
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
                      VOCA('Música', 'Mizik'),
                      VOCA('Concierto', 'Konsè'),
                      VOCA('Película', 'Film'),
                      VOCA('Cine theather', 'Sinema'),
                      VOCA('Espectáculo', 'Spektak'),
                      VOCA('Night club', 'Club'),
                      VOCA('Club nocturno', 'Chantè'),
                      VOCA('Álbum', 'Albòm'),
                      VOCA('Actuación', 'Pèfòmans'),
                      VOCA('Festival', 'Festival'),
                      VOCA('Carnaval', 'Kanaval'),
                      VOCA('Campeonato', 'Chanpyona'),
                      VOCA('Escenario', 'Stang'),
                      VOCA('Equipo', 'Ekip'),
                      VOCA('Sensato/a', 'Sansib'),
                      VOCA('Tradicional', 'Tradisyonèl'),
                      VOCA('Ansioso/a', 'Enkyè'),
                      VOCA('Deprimido/a', 'Deprime'),
                      VOCA('Trastornado/a', 'Fache'),
                      VOCA('Enojado/a', 'Fache'),
                      VOCA('Emocionado/a', 'Eksite'),
                      VOCA('Preocupado/a', 'Enkyete'),
                      VOCA('Solo/a', 'Sèl'),
                      VOCA('Calm', 'Kalm'),
                      VOCA('Contento/a', 'Kontan'),
                      VOCA('Sad', 'Tris'),
                      VOCA('Triste', 'Brav'),
                      VOCA('Hablador/a', 'Pale Anpil'),
                      VOCA('Inteligente', 'Entelijan'),
                      VOCA('Debil', 'Fèb'),
                      VOCA('Simpático/a', 'Amikal'),
                      VOCA('Interesante', 'Enteresan'),
                      VOCA('Amable', 'Janti'),
                      VOCA('Agradable', 'Sempa'),
                      VOCA('Sabio/a', 'Saj'),
                      VOCA('Cobarde', 'Lach'),
                      VOCA('Fuerte', 'Fò'),
                      VOCA('Serio/a', 'Serye'),
                      VOCA('Perezoso/a', 'Parese'),
                      SizedBox(height: 10),
                      Container(
                        child: Text(
                          "ADJECTIVES",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      VOCA('Jugar', 'Jwe'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}

class VOCA extends StatelessWidget {
  final String angle;
  final String kreyol;
  const VOCA(
    this.angle,
    this.kreyol,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: ScreenUtil.instance.setHeight(135),
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  FlutterPluginTts.speak(angle);
                },
                child: Container(
                    color: Colors.amber,
                    width: ScreenUtil.instance.setWidth(520),
                    height: 45,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.play_arrow),
                        Text(
                          angle,
                          style: TextStyle(
                              fontSize: ScreenUtil.instance.setSp(60)),
                        ),
                      ],
                    )),
              ),
              SizedBox(width: ScreenUtil.instance.setWidth(18)),
              Container(
                  color: Colors.teal,
                  width: ScreenUtil.instance.setWidth(520),
                  height: 45,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.crop_din),
                      Text(kreyol,
                          style: TextStyle(
                              fontSize: ScreenUtil.instance.setSp(60))),
                    ],
                  ))
            ],
          ),
        ),
        SizedBox(height: 10)
      ],
    );
  }
}
