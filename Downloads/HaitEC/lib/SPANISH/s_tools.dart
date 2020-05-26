import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_admob/firebase_admob.dart';

void main() => runApp(s_tools());

class s_tools extends StatefulWidget {
  @override
  _s_toolsState createState() => _s_toolsState();
}

class _s_toolsState extends State<s_tools> {
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
                      "Herramientas",
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
                      TOOLS('Herramientas', 'Zouti', 'images/tools.png'),
                      TOOLS('Tornillo', 'Vis', 'images/screw.png'),
                      TOOLS('Martillo', 'Mato', 'images/hammer.png'),
                      TOOLS('Hacha', 'Rach', 'images/axe.png'),
                      TOOLS('Llave inglesa', 'Kle', 'images/wrench.png'),
                      TOOLS('Sierra', 'Goyin', 'images/saw.png'),
                      TOOLS('Llave Ajustable', 'Ajistab',
                          'images/adjustable.png'),
                      TOOLS('Clavo', 'Klou', 'images/nail.png'),
                      TOOLS('Allen', 'kle L', 'images/allen.png'),
                      TOOLS('Metro', 'Mèt', 'images/measure.png'),
                      TOOLS('Émbolo', 'vantouz', 'images/plunger.png'),
                      TOOLS('Alicates', 'Pens', 'images/pliers.png'),
                      TOOLS('Destornillador', 'Tounvis',
                          'images/screwdriver.png'),
                      TOOLS('Pala', 'Linèt', 'images/glasses.png'),
                      TOOLS('Shovel', 'Pèl', 'images/shovel.png'),
                      TOOLS('Escalera', 'Echèl', 'images/ladder.png'),
                      TOOLS('Tijeras', 'Sizo', 'images/scissors.png'),
                      TOOLS('Bolígrafo', 'Plim', 'images/pen.png'),
                      TOOLS('Lápiz', 'Kreyon', 'images/pencil.png'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}

class TOOLS extends StatelessWidget {
  final String angle;
  final String kreyol;
  final String img;
  const TOOLS(this.angle, this.kreyol, this.img);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil.instance.setHeight(270),
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
                  leading: Icon(Icons.play_arrow),
                  trailing: Image.asset(
                    img,
                    width: 45,
                    color: Colors.black,
                  ),
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
