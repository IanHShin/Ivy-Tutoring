import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:firebase_admob/firebase_admob.dart';



void main() => runApp(tes_odyo2());
class tes_odyo2 extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<tes_odyo2> {

  @override
  void initState() {
    super.initState();
    FirebaseAdMob.instance.initialize(appId: 'ca-app-pub-5567410113651073~4007866614');
    _bannerAd = createBannerAd()..load();
    RewardedVideoAd.instance.listener =
        (RewardedVideoAdEvent event, {String rewardType, int rewardAmount}) {
      print("RewardedVideoAd event $event");
      if (event == RewardedVideoAdEvent.rewarded) {
        setState(() {
          _total += rewardAmount;
        });
      }
    };

    FirebaseAdMob.instance
        .initialize(appId: 'ca-app-pub-5567410113651073~4007866614');
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
    super.dispose();
  }

  final controller = PageController();
  int count = 0;
  int _total=0;
  int F_total = 0;
  final tf1 = TextEditingController();
  final tf2 = TextEditingController();
  final tf3 = TextEditingController();
  final tf4 = TextEditingController();
  final tf5 = TextEditingController();
  final tf6 = TextEditingController();
  final tf7 = TextEditingController();
  final tf8 = TextEditingController();
  final tf9 = TextEditingController();
  final tf10 = TextEditingController();
  final tf11 = TextEditingController();
  final tf12 = TextEditingController();
  final tf13 = TextEditingController();
  final tf14 = TextEditingController();
  final tf15 = TextEditingController();

  final tf1a = TextEditingController();
  final tf2a = TextEditingController();
  final tf3a = TextEditingController();
  final tf4a = TextEditingController();
  final tf5a = TextEditingController();
  final tf6a = TextEditingController();
  final tf7a = TextEditingController();
  final tf8a = TextEditingController();
  final tf9a = TextEditingController();
  final tf10a = TextEditingController();
  final tf11a = TextEditingController();
  final tf12a = TextEditingController();
  final tf13a = TextEditingController();
  final tf14a = TextEditingController();
  final tf15a = TextEditingController();
  final result = TextEditingController();

  String tf1_text = "head";
  String tf2_text = "hair";
  String tf3_text = "mouth";
  String tf4_text = "nose";
  String tf5_text = "tongue";
  String tf6_text = "hand";
  String tf7_text = "eyes";
  String tf8_text = "knee";
  String tf9_text = "leg";
  String tf10_text = "belly";
  String tf11_text = "chest";
  String tf12_text = "heart";
  String tf13_text = "finger";
  String tf14_text = "shoulder";
  String tf15_text = "neck";


  @override
  Widget build(BuildContext context) {
    FlutterPluginTts.setLanguage("en-US");
    FlutterPluginTts.setSpeechRate(0.2);
    return
      Scaffold(
          appBar: AppBar(title: Text("English"), backgroundColor: Colors.teal),
          body:
          ListView(
            scrollDirection: Axis.vertical,
            physics: AlwaysScrollableScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(height: ScreenUtil.instance.setHeight(1660),
                    child: PageView(
                      children: <Widget>[
                        CENTER(tf1_text, tf1,tf1a, "1/16 swipe..."),
                        CENTER(tf2_text, tf2, tf2a, "2/16 swipe..."),
                        CENTER(tf3_text, tf3, tf3a, "3/16 swipe..."),
                        CENTER(tf4_text, tf4, tf4a, "4/16 swipe..."),
                        CENTER(tf5_text, tf5, tf5a, "5/16 swipe..."),
                        CENTER(tf6_text, tf6, tf6a, "6/16 swipe..."),
                        CENTER(tf7_text, tf7, tf7a, "7/16 swipe..."),
                        CENTER(tf8_text, tf8, tf8a, "8/16 swipe..."),
                        CENTER(tf9_text, tf9, tf9a, "9/16 swipe..."),
                        CENTER(tf10_text, tf10, tf10a, "10/16 swipe..."),
                        CENTER(tf11_text, tf11, tf11a, "11/16 swipe..."),
                        CENTER(tf12_text, tf12, tf12a, "12/16 swipe..."),
                        CENTER(tf13_text, tf13, tf13a, "13/16 swipe..."),
                        CENTER(tf14_text, tf14, tf14a, "14/16 swipe..."),
                        CENTER(tf15_text, tf15, tf15a, "15/16 swipe..."),
                        Column( mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("This video is worth 5 points.", style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),),
                            Text("Gade video sa net pou 5 pwen.", style: TextStyle(
                              fontSize: 20.0,
                            ),),
                            SizedBox(height: 40),
                            TextField( textAlign: TextAlign.center,
                              enabled: false,
                              style: TextStyle(
                                fontSize: 35,
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                RewardedVideoAd.instance.show();
                              },
                              child: Container(
                                child: Center(
                                    child: Text(
                                      'WATCH VIDEO NOW',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF212121),
                                      ),
                                    )),
                                color: Color(0xFFFFC107),
                                margin: EdgeInsets.only(top: 10.0),
                                width: 300,
                                height: 80.0,
                              ),
                            ),
                              SizedBox(
                                height: 30,
                              ),
                              Text("16/16 Swipe...")
                          ],
                        ),


                        Column( mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("TEST AUDIO 2", style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF212121),
                        ),),
                            SizedBox(height: 40),
                            TextField( textAlign: TextAlign.center,
                              controller: result,
                              enabled: false,
                              style: TextStyle(
                                fontSize: 35,
                              ),
                            ),
                            GestureDetector(
                              onTap: (verifye),
                              child: Container(
                                child: Center(
                                    child: Text(
                                      'GET RESULT',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF212121),
                                      ),
                                    )),
                                color: Color(0xFFFFC107),
                                margin: EdgeInsets.only(top: 10.0),
                                width: double.infinity,
                                height: 80.0,
                              ),
                            ),
                          ],
                        )

                      ],
                      scrollDirection: Axis.horizontal,
                      controller: controller,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
            ],
          )
      );
  }

  String Trim(String a) {
    return a.toString().trim().toLowerCase().split(" ").join("");
  }
  void grade (TextEditingController tf, String text, TextEditingController tfa){
    if (Trim(tf.text) == text) {
      tfa.text = "✅";
    } else
      tfa.text = "❌";
  }

  verifye() {
    RewardedVideoAd.instance.show();
    grade(tf1, tf1_text, tf1a);
    grade(tf2, tf2_text, tf2a);
    grade(tf3, tf3_text, tf3a);
    grade(tf4, tf4_text, tf4a);
    grade(tf5, tf5_text, tf5a);
    grade(tf6, tf6_text, tf6a);
    grade(tf7, tf7_text, tf7a);
    grade(tf8, tf8_text, tf8a);
    grade(tf9, tf9_text, tf9a);
    grade(tf10, tf10_text, tf10a);
    grade(tf11, tf11_text, tf11a);
    grade(tf12, tf12_text, tf12a);
    grade(tf13, tf13_text, tf13a);
    grade(tf14, tf14_text, tf14a);
    grade(tf15, tf15_text, tf15a);

    count = 0;
    if (tf1a.text=="✅")
      count++;
    if (tf2a.text=="✅")
      count++;
    if (tf3a.text=="✅")
      count++;
    if (tf4a.text=="✅")
      count++;
    if (tf5a.text=="✅")
      count++;
    if (tf6a.text=="✅")
      count++;
    if (tf7a.text=="✅")
      count++;
    if (tf8a.text=="✅")
      count++;
    if (tf9a.text=="✅")
      count++;
    if (tf10a.text=="✅")
      count++;
    if (tf11a.text=="✅")
      count++;
    if (tf12a.text=="✅")
      count++;
    if (tf13a.text=="✅")
      count++;
    if (tf14a.text=="✅")
      count++;
    if (tf15a.text=="✅")
      count++;

    F_total = count + _total;

    result.text=("Your Score: "+ F_total.toString() +"/20");

  }

}


class CENTER extends StatelessWidget {
  final String text, swipe;
  final Color col = Colors.white;
  TextEditingController tf, tfa;

  CENTER(this.text, this.tf, this.tfa, this.swipe);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column( crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "LISTEN AND WRITE",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.teal),
          ),
          SizedBox(height: 100),

          TextField(
            controller: tf,
            autofocus: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.amberAccent)),
              hintText: 'Repons',
              labelStyle: const TextStyle(color: Colors.amberAccent),
              suffixIcon: IconButton(
                icon: Icon(Icons.volume_up),
                onPressed: () {
                  FlutterPluginTts.speak(text);
                },
                color: Colors.black,),
            ),
          ),
          TextField( textAlign: TextAlign.center,
            controller: tfa,
            enabled: false,
            style: TextStyle(
              fontSize: 30,
            ),
          ),

          FlatButton(
            onPressed: () {},
            child: Text(swipe),
          ),
        ],
      ) ,
    );
  }
}


