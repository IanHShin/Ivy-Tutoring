import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_admob/firebase_admob.dart';

void main() => runApp(s_voc_health());

class s_voc_health extends StatefulWidget {

  @override
  _s_voc_healthState createState() => _s_voc_healthState();
}

class _s_voc_healthState extends State<s_voc_health> {
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
                      VOCA('Salud', 'Sante'),
                      VOCA('Sano', 'An sante'),
                      VOCA('Mareado', 'Toudi'),
                      VOCA('Depresión', 'Depresyon'),
                      VOCA('Enfermedad', 'Maladi'),
                      VOCA('Gripe', 'Grip'),
                      VOCA('Malestar', 'Malèz'),
                      VOCA('Presión arterial', 'Tansyon'),
                      VOCA('Tos', 'Tous'),
                      VOCA('Virus', 'Viris'),
                      VOCA('Cirugía', 'Operasyon'),
                      VOCA('Cirujano', 'Chirijyen'),
                      VOCA('Médico', 'Doktè'),
                      VOCA('Operación', 'Operasyon'),
                      VOCA('Emergencia', 'Emèjennsi'),
                      VOCA('Habitación', 'Chanm'),
                      VOCA('Jarabe', 'Siwo'),
                      VOCA('Vacuna', 'Vaksen'),
                      VOCA('Deprimido', 'Deprime'),
                      VOCA('Vendaje', 'Bandaj'),
                      VOCA('Tratamiento', 'Tretman'),
                      VOCA('Sedante', 'Kalman'),
                      VOCA('Analgésico', 'Kalman'),
                      VOCA('Prescripción', 'Preskripsyon'),
                      VOCA('Píldora', 'Konprime'),
                      VOCA('Curación', 'Gerizon'),
                      VOCA('Infarto de\nmiocardio', 'Kriz kadjak'),
                      VOCA('Nacimiento', 'Nesans'),
                      VOCA('Aguja', 'Zegwi'),
                      VOCA('Disparo', 'Piki'),
                      VOCA('Dolor', 'Doulè'),
                      VOCA('Alegría', 'Jwa'),
                      VOCA('Mosca', 'Mouch'),
                      VOCA('Enfermera', 'Enfimyè'),
                      VOCA('Ombligo', 'Lonbrik'),
                      VOCA('Oro', 'Lò'),
                      VOCA('Presión', 'Presyon'),
                      VOCA('Lesión', 'Blesi'),
                      VOCA('Enconado', 'Anflame'),
                      VOCA('Agotado', 'Fatige anpil'),
                      VOCA('Primeros \nauxilios', 'Premye swen'),


                      SizedBox(height: 10),
                      Container(
                        child: Text(
                          "VERBS",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 20.0,
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      VOCA('Mejorar', 'Amelyore'),
                      VOCA('Relajarse', 'Rilakse'),
                      VOCA('Sanar', 'Geri'),
                      VOCA('tratar', 'Trete'),
                      VOCA('Recuperar', 'Refè'),
                      VOCA('Sentir', 'Santi'),
                      VOCA('Rascar', 'Grate'),
                      VOCA('Toser', 'Touse'),
                      VOCA('Fumar', 'Fimen'),
                      VOCA('Descansar', 'Repoze'),
                      VOCA('Ganar peso', 'Pran pwa'),
                      VOCA('Perder peso', 'Pèdi pwa'),
                      VOCA('Estar enfermo', 'Malad'),
                      VOCA('Evitar', 'Anpeche'),
                      VOCA('Pagar', 'Peye'),

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

class VOCA extends StatelessWidget{
  final String angle;
  final String kreyol;
  const VOCA(this.angle, this.kreyol,);

  @override
  Widget build(BuildContext context) {
    return
    Column(
      children: <Widget>[
      Container(
      height: ScreenUtil.instance.setHeight(135),
      child:
      Row(
        children: <Widget>[
          GestureDetector(
            onTap: (){
              FlutterPluginTts.speak(angle);
            },
            child: Container(
                color: Colors.white,
                width: ScreenUtil.instance.setWidth(520),
                height: 45,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.play_arrow),
                    Text(angle, style: TextStyle(fontSize: ScreenUtil.instance.setSp(60)),),
                  ],
                )
            ),
          ),
          SizedBox(width: ScreenUtil.instance.setWidth(18)),
          Container(
              color: Colors.white,
              width: ScreenUtil.instance.setWidth(520),
              height: 45,
              child:
              Row(
                children: <Widget>[
                  Icon(Icons.crop_din),
                  Text(kreyol, style: TextStyle(fontSize: ScreenUtil.instance.setSp(60))),
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

