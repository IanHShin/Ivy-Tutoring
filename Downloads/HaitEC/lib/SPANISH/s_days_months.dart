import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_admob/firebase_admob.dart';

void main() => runApp(s_days_months());

class s_days_months extends StatefulWidget {
  @override
  _s_days_monthsState createState() => _s_days_monthsState();
}

class _s_days_monthsState extends State<s_days_months> {
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
                      "DÍAS",
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
                      Salitasyon('Lunes', 'Lendi'),
                      Salitasyon('Martes', 'Madi'),
                      Salitasyon('Miércoles', 'Mèkredi'),
                      Salitasyon('Jueves', 'Jedi'),
                      Salitasyon('Viernes', 'Vandredi'),
                      Salitasyon('Sábado', 'Samdi'),
                      Salitasyon('Domingo', 'Dimanch'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Text(
                      "MESES",
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
                      Salitasyon('Enero', 'Janvye'),
                      Salitasyon('Febrero', 'Fevriye'),
                      Salitasyon('Marzo', 'Mas'),
                      Salitasyon('Abril', 'Avril'),
                      Salitasyon('Mayo ', 'Me'),
                      Salitasyon('Junio', 'Jen'),
                      Salitasyon('Julio', 'Jiyè'),
                      Salitasyon('Agosto', 'Out'),
                      Salitasyon('Septiembre', 'Septanm'),
                      Salitasyon('Octubre', 'Oktob'),
                      Salitasyon('Noviembre', 'Novanm'),
                      Salitasyon('Diciembre ', 'Desanm'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Text(
                      "ESTACIONES",
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
                      Salitasyon('Primavera', 'Prentan'),
                      Salitasyon('Verano', 'Ete'),
                      Salitasyon('Otoño', 'Otòn'),
                      Salitasyon('Invierno', 'Ivè'),
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

class Salitasyon extends StatelessWidget {
  final String angle;
  final String kreyol;
  const Salitasyon(this.angle, this.kreyol);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil.instance.setHeight(260),
      child: Card(
          child: InkWell(
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
          color: Colors.teal[10]),
    );
  }
}
