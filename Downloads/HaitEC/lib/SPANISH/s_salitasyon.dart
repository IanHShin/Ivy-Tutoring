import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_admob/firebase_admob.dart';


void main() => runApp(s_salitasyon());

class s_salitasyon extends StatefulWidget {
  @override
  _s_salitasyonState createState() => _s_salitasyonState();
}

class _s_salitasyonState extends State<s_salitasyon> {
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
                      "SALUDOS",
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
                      Salitasyon('Hola', 'Alo'),
                      Salitasyon('Buenos días', 'Bonjou'),
                      Salitasyon('Buenas tardes', 'Bon apremidi'),
                      Salitasyon('Buenas noches', 'Bonswa'),
                      Salitasyon('Buenas noches', 'Bon nwit'),
                      Salitasyon('¿Cómo estás?', 'Koman ou ye?'),
                      Salitasyon('¿Estoy bien y tu?', 'Mwen byen e ou?'),
                      Salitasyon('¿Que tal tu día?', 'Koman jounen ou te ye?'),
                      Salitasyon(
                          '¿Que tal fue tu noche?', 'Koman nwit ou te ye?'),
                      Salitasyon('Estuvo bien.', 'Li te byen.'),
                      Salitasyon('¿Qué pasa?', 'Sak pase?'),
                      Salitasyon(
                          '¿Cómo está tu familia?', 'Koman fanmi ou ye?'),
                      Salitasyon('¿Cuál es su nombre?', 'Koman ou rele?'),
                      Salitasyon('Mi nombre es Nixon.', 'Mwen rele Nixon'),
                      Salitasyon(
                          'Encantado de conocerte!', 'M kontan rekonèt ou'),
                      Salitasyon('¡Buen trabajo!', 'Bon travay!'),
                      Salitasyon('Felicidades!', 'Felisitasyon'),
                      Salitasyon('Gracias!', 'Mèsi!'),
                      Salitasyon('¡Nos vemos más tarde!', 'Nap wè pita!'),
                      Salitasyon('Adiós!', 'Orevwa!'),
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

  Widget Salitasyon(String angle, String kreyol) {
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
                    trailing: Icon(Icons.play_arrow),
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
