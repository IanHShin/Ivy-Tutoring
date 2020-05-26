import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_admob/firebase_admob.dart';

void main() => runApp(voc_health());

class voc_health extends StatefulWidget {

  @override
  _voc_healthState createState() => _voc_healthState();
}

class _voc_healthState extends State<voc_health> {

  void initState() {
    super.initState();
    FirebaseAdMob.instance.initialize(appId: 'ca-app-pub-5567410113651073~4007866614');
    _bannerAd = createBannerAd()..load()..show();

    FirebaseAdMob.instance
        .initialize(appId: 'ca-app-pub-5567410113651073~4007866614');
    super.initState();
  }

  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    nonPersonalizedAds: true,
    keywords: <String>['This', 'That'],
  );

  BannerAd _bannerAd;

  BannerAd createBannerAd() {
    return BannerAd(
        adUnitId: 'ca-app-pub-5567410113651073/8712404787',
        size: AdSize.banner,
        listener: (MobileAdEvent event) {
          print("BannerAd $event");
        });
  }

  @override
  void dispose() {
    _bannerAd.dispose();
    super.dispose();
  }


  Widget build(BuildContext context) {
    FlutterPluginTts.setLanguage("en-US");
    FlutterPluginTts.setSpeechRate(0.4);

    return Scaffold(
      appBar: AppBar(
        title: Text("English"),
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
                      "VOCABULARIES",
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
                      VOCA('Health', 'Sante'),
                      VOCA('Healthy', 'An sante'),
                      VOCA('Dizzy', 'Toudi'),
                      VOCA('Depression', 'Depresyon'),
                      VOCA('Disease', 'Maladi'),
                      VOCA('Illness', 'Maladi'),
                      VOCA('Flu', 'Grip'),
                      VOCA('Discomfort', 'Malèz'),
                      VOCA('Blood Presssure', 'Tansyon'),
                      VOCA('Cough', 'Tous'),
                      VOCA('Virus', 'Viris'),
                      VOCA('Surgery', 'Operasyon'),
                      VOCA('Surgeon', 'Chirijyen'),
                      VOCA('Doctor', 'Doktè'),
                      VOCA('Operation', 'Operasyon'),
                      VOCA('Emergency', 'Emèjennsi'),
                      VOCA('Room', 'Chanm'),
                      VOCA('Syrup', 'Siwo'),
                      VOCA('Vaccine', 'Vaksen'),
                      VOCA('Depressed', 'Deprime'),
                      VOCA('Bandage', 'Bandaj'),
                      VOCA('Treatment', 'Tretman'),
                      VOCA('Sedative', 'Kalman'),
                      VOCA('Painkiller', 'Kalman'),
                      VOCA('Prescription', 'Preskripsyon'),
                      VOCA('Pill', 'Konprime'),
                      VOCA('Healing', 'Gerizon'),
                      VOCA('Heart attack', 'Kriz kadjak'),
                      VOCA('Birth', 'Nesans'),
                      VOCA('Needle', 'Zegwi'),
                      VOCA('Shot', 'Piki'),
                      VOCA('Sorrow', 'Tristès'),
                      VOCA('Joy', 'Jwa'),
                      VOCA('Fly', 'Mouch'),
                      VOCA('Nurse', 'Enfimye (è)'),
                      VOCA('Navel', 'Lonbrik'),
                      VOCA('Gold', 'Lò'),
                      VOCA('Pressure', 'Presyon'),
                      VOCA('Injury', 'Blesi'),
                      VOCA('Inflamed', 'Anflame'),
                      VOCA('Exhausted', 'Fatige anpil'),
                      VOCA('First aid', 'Premye swen'),


                      SizedBox(height: 10),
                      Container(
                        child: Text(
                          "VERBS",
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
                      VOCA('To improve', 'Amelyore'),
                      VOCA('To Relax', 'Rilakse'),
                      VOCA('To heal', 'Geri'),
                      VOCA('To treat', 'Trete'),
                      VOCA('To recover', 'Refè'),
                      VOCA('To feel', 'Santi'),
                      VOCA('To scratch', 'Grate'),
                      VOCA('To beat', 'Bat'),
                      VOCA('To cough', 'Touse'),
                      VOCA('To smoke', 'Fimen'),
                      VOCA('To rest', 'Repoze'),
                      VOCA('To gain weight', 'Pran pwa'),
                      VOCA('To lose weight', 'Pèdi pwa'),
                      VOCA('To be sick', 'Malad'),
                      VOCA('To prevent', 'Anpeche'),
                      VOCA('To Pay', 'Peye'),

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
              FlutterPluginTts.setLanguage('en-US');
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

