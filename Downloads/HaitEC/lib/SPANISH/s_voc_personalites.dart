import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_admob/firebase_admob.dart';

void main() => runApp(s_voc_personalites());

class s_voc_personalites extends StatefulWidget {

  @override
  _s_voc_personalitesState createState() => _s_voc_personalitesState();
}

class _s_voc_personalitesState extends State<s_voc_personalites> {
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

      body:
      ListView(
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
                  Column( mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 5),
                      VOCA('Aburrido/a', 'Annwiye'),
                      VOCA('Paciente', 'Pasyan'),
                      VOCA('Impaciente', 'Enpasyan'),
                      VOCA('Ingenuo/a', 'Nayiv'),
                      VOCA('Personalidad', 'Pèsonalite'),
                      VOCA('Estricto/a', 'Strik'),
                      VOCA('Cariñoso/a', 'Afektye'),
                      VOCA('Celoso/a', 'Jalou'),
                      VOCA('Curioso/a', 'Kirye'),
                      VOCA('Mentiroso/a', 'Mantè'),
                      VOCA('Gracioso/a', 'Amizan'),
                      VOCA('Orgulloso/a', 'Fyè'),
                      VOCA('Tímido/a', 'Timid'),
                      VOCA('Sensato/a', 'Sansib'),
                      VOCA('Sensible', 'Sansib'),
                      VOCA('Tradicional', 'Tradisyonèl'),
                      VOCA('Ansioso/a', 'Enkyè'),
                      VOCA('Deprimido/a', 'Deprime'),
                      VOCA('Trastornado/a', 'Fache'),
                      VOCA('Enojado/a', 'Fache'),
                      VOCA('Emocionado/a', 'Eksite'),
                      VOCA('Preocupado/a', 'Enkyete'),
                      VOCA('Solo/a', 'Sèl (pou kont li)'),
                      VOCA('Calma', 'Kalm'),
                      VOCA('Contento/a', 'Kontan'),
                      VOCA('Sad', 'Tris'),
                      VOCA('Triste', 'Brav'),
                      VOCA('Hablador/a', 'Pale Anpil'),
                      VOCA('Inteligente', 'Entelijan'),
                      VOCA('Débil', 'Fèb'),
                      VOCA('Simpático/a', 'Amikal'),
                      VOCA('Interesante', 'Enteresan'),
                      VOCA('Amable', 'Janti'),
                      VOCA('Agradable', 'Senpa'),
                      VOCA('Sabio/a', 'Saj'),
                      VOCA('Cobarde', 'Lach'),
                      VOCA('Fuerte', 'Fò'),
                      VOCA('Serio/a', 'Serye'),
                      VOCA('Perezoso/a', 'Parese'),

                      SizedBox(height: 10),
                      Container(
                        child: Text(
                          "VERBOS",
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
                      VOCA('Ser', 'Se'),
                      VOCA('Estar', 'Se'),
                      VOCA('Gustar ', 'Renmen'),
                      VOCA('Odiar', 'Rayi'),
                      VOCA('Adorar', 'Adore'),
                      VOCA('Sentir', 'Santi'),
                      VOCA('Impresionar', 'Enpresyone'),
                      VOCA('Argumentar', 'diskite'),
                      VOCA('Salir', 'Soti'),
                      VOCA('proponer', 'Propoze'),
                      VOCA('Besar', 'Bo'),
                      VOCA('Convertirse', 'Devni'),
                      VOCA('Rechazar', 'Refize'),
                      VOCA('Estar enfermo/a', 'Malad'),
                      VOCA('Estar celoso/a', 'Jalou'),

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

  Widget VOCA(String espanyol, String kreyol){
    return Column( crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: ScreenUtil.instance.setHeight(135),
            child:
            Row(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    FlutterPluginTts.speak(espanyol.replaceAll("/a", ""));
                  },
                  child: Container(
                      color: Colors.white,
                      width: ScreenUtil.instance.setWidth(520),
                      height: 45,
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.play_arrow),
                          Text(espanyol, style: TextStyle(fontSize: ScreenUtil.instance.setSp(60),),),
                        ],
                      )
                  ),
                ),
                SizedBox(width: ScreenUtil.instance.setWidth(18),),
                Container(
                    color: Colors.white,
                    width: ScreenUtil.instance.setWidth(520),
                    height: 45,
                    child:
                    Row(
                      children: <Widget>[
                        Icon(Icons.crop_din),
                        Text(kreyol, style: TextStyle(fontSize: ScreenUtil.instance.setSp(60),)),
                      ],
                    )
                )
              ],
            ) ,
          ) ,
          SizedBox(height: 10)
        ],
      );
  }
}


