import 'package:first_app/JAVA/method.dart';
import 'package:first_app/SPANISH/s_pati_ko.dart';
import 'package:first_app/SPANISH/s_quiz1.dart';
import 'package:first_app/SPANISH/s_quiz2.dart';
import 'package:first_app/SPANISH/s_quiz3.dart';
import 'package:first_app/SPANISH/s_tes_odyo1.dart';
import 'package:first_app/SPANISH/s_tes_odyo2.dart';
import 'package:flutter/material.dart';
import 'package:first_app/SPANISH/s_nimewo.dart';
import 'package:first_app/SPANISH/s_salitasyon.dart';
import 'package:first_app/SPANISH/s_alfabe.dart';
import 'package:first_app/SPANISH/s_colors.dart';
import 'package:first_app/SPANISH/s_days_months.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:first_app/MENU/tradwi.dart';
import 'package:first_app/MENU/pwononsyasyon.dart';
import 'package:first_app/SPANISH/s_voc_personalites.dart';
import 'package:first_app/SPANISH/s_voc_travels.dart';
import 'package:first_app/SPANISH/s_voc_activities.dart';
import 'package:first_app/SPANISH/s_voc_health.dart';
import 'package:first_app/SPANISH/s_tools.dart';
import 'package:first_app/SPANISH/s_classroom.dart';
import 'package:first_app/SPANISH/s_manb_fanmi.dart';
import 'package:first_app/SPANISH/s_restoran.dart';
import 'package:first_app/SPANISH/s_indefinite_article.dart';
import 'package:first_app/SPANISH/s_definite_article.dart';
import 'package:first_app/ENGLISH/dictionary.dart';
import 'package:first_app/SPANISH/s_lopital.dart';
import 'package:first_app/SPANISH/s_masculine_feminine.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'dart:io';

void main() => runApp(spanish());

class spanish extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<spanish> {

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

  @override
  Widget build(BuildContext context) {

    FlutterPluginTts.setLanguage("es-ES");
    if(Platform.isIOS){
      FlutterPluginTts.setSpeechRate(0.3);
    } else {
      FlutterPluginTts.setSpeechRate(0.4);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Spanish"),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: ListView(
          scrollDirection: Axis.vertical,
          physics: AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          children: <Widget>[

            CIRCLE('images/abc.png', "1. Alfabeto", () => s_alfabe()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CIRCLE('images/num.png', "2. Numeros", () => s_nimewo()),
                CIRCLE(
                    'images/greeting.png', "3. Saludos", () => s_salitasyon()),
              ],
            ),
            CIRCLE(
                'images/calendar.png', "4. Calendario", () => s_days_months()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CIRCLE('images/quiz.jpeg', "5. Quiz 1", () => s_quiz1()),
                CIRCLE('images/quiz.jpeg', "6. Prueba de Audio 1", () => s_tes_odyo1()),
              ],
            ),
            CIRCLE('images/voca.png', "7. Masculino y femenino",
                () => s_masculine_feminine()),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CIRCLE('images/vocabulary.png', "8. Artículos indefinidos",
                    () => s_indefinite_article()),
                CIRCLE('images/vocabulary.png', "9. Artículos definidos",
                    () => s_definite_article()),
              ],
            ),
            CIRCLE('images/voca.png', "10. Vaca & Personalidad",
                    () => s_voc_personalites()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CIRCLE('images/quiz.jpeg', "11. Prueba de Audio 2", () => s_tes_odyo2()),
                CIRCLE('images/quiz.jpeg', "12. Quiz 2", () => s_quiz2()),
              ],
            ),
            CIRCLE('images/voca.png', "13. Vaca & Salud", () => s_voc_health()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CIRCLE('images/colors.png', "14. Colores", () => s_colors()),
                CIRCLE('images/body.png', "15. Partes del Cuerpo",
                    () => s_pati_ko()),
              ],
            ),
            CIRCLE("images/quiz.jpeg", "16. Quiz 3", () => s_quiz3()),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CIRCLE('images/class.png', "17. Aula", () => s_classroom()),
                CIRCLE('images/tools_col.png', "18. Herramientas",
                    () => s_tools()),
              ],
            ),
            CIRCLE(
                'images/voca.png', "19. Vaca & Viaje", () => s_voc_travels()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CIRCLE(
                    'images/family.png', "20. Familia", () => s_manb_fanmi()),
                CIRCLE('images/restaurant.png', "21. Restaurante",
                    () => s_restoran()),
              ],
            ),
            CIRCLE('images/hospital.png', "22. Hospital", () => s_lopital()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CIRCLE(
                    'images/voca.png', "23. Diccionario", () => dictionary()),
                CIRCLE(
                    'images/translate.png', "24. Translation", () => tradwi()),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget CIRCLE(String img, String text, Function pageName) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => pageName(),
          ),
        );
      },
      child: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        img,
                      ),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(35),
                    ),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            text,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

