import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:firebase_admob/firebase_admob.dart';

class s_lopital extends StatefulWidget {
  @override
  _s_lopitalState createState() => _s_lopitalState();
}

class _s_lopitalState extends State<s_lopital> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spanish"),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: new Container(
          padding: EdgeInsets.all(8.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Text(
                  "HOSPITAL\n",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 25.0,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Display("Seguro de salud", "Asirans Sante"),
                Display("Emergencia médica", "Emèjennsi medikal"),
                Display("Sala de emergencias", "Chanm Emèjennsi"),
                Display("Dolor de estómago", "Vant fè mal"),
                Display("Dolor de muelas", "Dan fè mal"),
                Display("Estoy mejorando", "M ap fè mye"),
                Display("Fuera de combate", "Pèdi konesans, Enkonsyan"),
                Display("Terrible dolor de cabeza", "Move tèt fè mal"),
                Display("Tiene un terrible dolor de cabeza",
                    "Li gen yon move tèt fè mal"),
                Display("Hacer algunas pruebas", "Fè kèk tès"),
                Display("Revisar tu salud", "Tcheke sante w"),
                Display("Sentirse un poco enfermo", "Santi w yon ti jan malad"),
                Display("Anormal", "Anòmal"),
                Display("Ambulancia", "Anbilans"),
                Display("Anemia", "Anemi"),
                Display("Donador de sangre", "Donatè san"),
                Display("Presión arterial", "Tansyon"),
                Display("Deshidratado", "Dezidrate"),
                Display("Es fácil deshidratarse en este clima cálido.",
                    "Li fasil pou w dezidrate nan chalè sa"),
                Display("Enfermedad", "Maladi"),
                Display("Fiebre", "Fyèv"),
                Display("Infarto de miocardio", "Kriz kadyak"),
                Display("VIH", "Viris ki bay SIDA"),
                Display("La enfermera demostrará cómo bañar a una bebé.",
                    "Enfimyè a pral montre kòman pou nou benyen timoun"),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Display(String espagnol, String kreyol) {
    return Container(
      height: ScreenUtil.instance.setHeight(300),
      child: Card(
        child: GestureDetector(
          onTap: () {
            FlutterPluginTts.speak(espagnol);
          },
          child: Container(
            padding: EdgeInsets.all(0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ListTile(
                  title: Text(
                    espagnol,
                    style: TextStyle(fontSize: 17),
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
