import 'package:flutter/material.dart';
import 'package:translator/translator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_admob/firebase_admob.dart';

void main() => runApp(s_classroom());
class s_classroom extends StatefulWidget {
  @override
  _s_classroomState createState() => _s_classroomState();
}

class _s_classroomState extends State<s_classroom> {
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

  final trans = GoogleTranslator();

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
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  Container(
                    child: Text(
                      "EN EL AULA",
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
                      Say('Alumno','Elèv'),
                      Say('Profesor','Pwofesè'),
                      Say('Compañero de clase','Kamarad de klas'),
                      Say('Libro','Liv'),
                      Say('Cuaderno','Kaye'),
                      Say('Lápiz','Kreyon'),
                      Say('Bolígrafo','Plim'),
                      Say('Borrador','Efasè'),
                      Say('Regla','Règ'),
                      Say('Silla','Chèz'),
                      Say('Tiza','Lakrè'),
                      Say('Ventana','Fenèt'),
                      Say('Papelera','Poubèl'),
                      Say('Luz','Limyè'),
                      Say('Pared','Mi'),
                      Say('Piso','Atè'),
                      Say('Techo','Plafon'),
                      Say('Escritorio','Biro'),
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

class Say extends StatelessWidget{
  final String angle;
  final String kreyol;
  const Say(this.angle, this.kreyol);
  @override
  Widget build(BuildContext context) {

    return Container(height: ScreenUtil.instance.setHeight(270), child:
    Card(child: GestureDetector(onTap: () {

      FlutterPluginTts.speak(angle);
    } ,
      child: Container(
        padding:  EdgeInsets.all(0.0),
        child:  Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              title:Text(angle, style: TextStyle(fontSize: 20),),
              subtitle: Text(kreyol, style: TextStyle(fontSize: 15),),
              leading: Icon(Icons.play_arrow),
            )
          ],),),
    ),
      color: Colors.teal[10], )
    );

  }
}
