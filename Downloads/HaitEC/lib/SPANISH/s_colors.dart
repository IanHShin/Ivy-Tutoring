import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:firebase_admob/firebase_admob.dart';

void main() => runApp(s_colors());

class s_colors extends StatefulWidget {
  @override
  _s_colorsState createState() => _s_colorsState();
}

class _s_colorsState extends State<s_colors> {
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

    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);

    return Scaffold(
      appBar: AppBar(title: Text("Spanish"), backgroundColor: Colors.teal),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              color("AZUL", Colors.blue, "ROJO", Colors.red),
              color("NEGRO", Colors.black, "GRIS", Colors.grey),
              color("ROSADO", Colors.pink, "AMARILLO", Colors.yellow),
              color("ÁMBAR", Colors.amber, "VERDA AZULADO", Colors.teal),
              color("VERDE", Colors.green, "MARRÓN", Colors.brown),
              color("ÍNDIGO", Colors.indigo, "LIMA", Colors.lime),
              color("NARANJA", Colors.orange, "PÚRPURA", Colors.purple),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class color extends StatelessWidget {
  String col1, col2;
  Color _color1, _color2;
  color(this.col1, this._color1, this.col2, this._color2);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil.instance.setHeight(500),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: <Widget>[
              GestureDetector(
                child: Image.asset(
                  "images/redball.png",
                  color: _color1,
                  height: ScreenUtil.instance.setHeight(350),
                ),
                onTap: () {
                  FlutterPluginTts.speak(col1);
                },
              ),
              Text(
                this.col1,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              GestureDetector(
                child: Image.asset(
                  "images/redball.png",
                  color: _color2,
                  height: ScreenUtil.instance.setHeight(350),
                ),
                onTap: () {
                  FlutterPluginTts.speak(col2);
                },
              ),
              Text(
                col2,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
