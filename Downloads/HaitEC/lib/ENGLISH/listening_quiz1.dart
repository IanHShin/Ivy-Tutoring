import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:firebase_admob/firebase_admob.dart';

void main() => runApp(listening_quiz1());

class listening_quiz1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<listening_quiz1> {
  @override
  void initState() {
    super.initState();
    FirebaseAdMob.instance
        .initialize(appId: 'ca-app-pub-5567410113651073~4007866614');
    _bannerAd = createBannerAd()
      ..load
      ..show();
    _interstitialAd = createInterstitialAd()..load();

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
    _interstitialAd.dispose();
    super.dispose();
  }

  final controller = PageController();
  int count = 0;

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
  final result = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FlutterPluginTts.setLanguage("en-US");
    FlutterPluginTts.setSpeechRate(0.3);
    return Scaffold(
        appBar: AppBar(title: Text("English"), backgroundColor: Colors.teal),
        body: ListView(
          scrollDirection: Axis.vertical,
          physics: AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(2),
                  height: ScreenUtil.instance.setHeight(1500),
                  child: PageView(
                    controller: controller,
                    children: <Widget>[
                      CARD(
                          "What is your phone number?",
                          "I don't have a phone.",
                          "✅",
                          "I love you too.",
                          "❌",
                          "See you next time.",
                          "❌",
                          "I don't think so.",
                          "❌",
                          tf1,
                          "1"),
                      CARD(
                          "Where is your mother",
                          "He is busy right now.",
                          "❌",
                          "She is beautiful.",
                          "❌",
                          "I am at the mall",
                          "❌",
                          "She is in the kitchen.",
                          "✅",
                          tf2,
                          "2"),
                      CARD(
                          "How many brothers do you have?",
                          "My brother is 16.",
                          "❌",
                          "I have three sisters",
                          "❌",
                          "I have two brothers.",
                          "✅",
                          "She is in the kitchen.",
                          "❌",
                          tf3,
                          "3"),
                      CARD(
                          "Is Mike from the United States?",
                          "Yes, he is.",
                          "✅",
                          "No, he does not.",
                          "❌",
                          "Yes, he does.",
                          "❌",
                          "I will tell my mom.",
                          "❌",
                          tf4,
                          "4"),
                      CARD(
                          "What is your name?",
                          "I am very happy",
                          "❌",
                          "You have a nice name.",
                          "❌",
                          "I am tired.",
                          "❌",
                          "My name is Willio.",
                          "✅",
                          tf5,
                          "5"),
                      CARD(
                          "How old is your brother?",
                          "I am busy very.",
                          "❌",
                          "My brother is 16.",
                          "✅",
                          "I do not understand.",
                          "❌",
                          "She is in her room.",
                          "❌",
                          tf6,
                          "6"),
                      CARD(
                          "I am going to the mall.",
                          "He is busy right now.",
                          "❌",
                          "Can I come with you?",
                          "✅",
                          "I am at the mall",
                          "❌",
                          "She is in the kitchen.",
                          "❌",
                          tf7,
                          "7"),
                      CARD(
                          "It's raining outside",
                          "I need an umbrella.",
                          "✅",
                          "You have a nice name",
                          "❌",
                          "See you next time",
                          "❌",
                          "I love you too.",
                          "❌",
                          tf8,
                          "8"),
                      CARD(
                          "Did you go to school yesterday?",
                          "Yes, I am on my way.",
                          "❌",
                          "I am going to school",
                          "❌",
                          "Yes, I went to school yesterday",
                          "✅",
                          "She is in the kitchen.",
                          "❌",
                          tf9,
                          "9"),
                      CARD(
                          "Where is your sister",
                          "She love cooking.",
                          "❌",
                          "She is beautiful.",
                          "❌",
                          "I am at the mall",
                          "❌",
                          "She is at home.",
                          "✅",
                          tf10,
                          "10"),
                      CARD(
                          "How much did you pay for that?",
                          "My brother is 16.",
                          "❌",
                          "I paid 25 dollars for it.",
                          "✅",
                          "I do not understand.",
                          "❌",
                          "I will tell my mom.",
                          "❌",
                          tf11,
                          "11"),
                      CARD(
                          "Let me tell you something!",
                          "I am tired today",
                          "❌",
                          "She is beautiful.",
                          "❌",
                          "I am listening",
                          "✅",
                          "She is in the kitchen.",
                          "❌",
                          tf1,
                          "12"),
                      CARD(
                          "What do you want?",
                          "I want is the wrong answer.",
                          "❌",
                          "I want to go to church.",
                          "✅",
                          "You have a nice name",
                          "❌",
                          "I would do anyting.",
                          "❌",
                          tf13,
                          "13"),
                      CARD(
                          "Is Willy from the United States?",
                          "Yes she is.",
                          "❌",
                          "Mike is an actor.",
                          "❌",
                          "I am at the mall",
                          "❌",
                          "No, Willy is from Haiti.",
                          "✅",
                          tf14,
                          "14"),
                      CARD(
                          "What is the name of this application",
                          "Haitech",
                          "❌",
                          "HaititEC.",
                          "❌",
                          "HaitEC",
                          "✅",
                          "Hightec.",
                          "❌",
                          tf15,
                          "15"),
                      Center(
                        child: Card(
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "LISTENING 1",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF212121),
                                  ),
                                ),
                                SizedBox(height: 40),
                                TextField(
                                  textAlign: TextAlign.center,
                                  controller: result,
                                  enabled: false,
                                  style: TextStyle(
                                    fontSize: 35,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    _interstitialAd.show();
                                    count = 0;
                                    if (tf1.text == "✅") count++;
                                    if (tf2.text == "✅") count++;
                                    if (tf3.text == "✅") count++;
                                    if (tf4.text == "✅") count++;
                                    if (tf5.text == "✅") count++;
                                    if (tf6.text == "✅") count++;
                                    if (tf7.text == "✅") count++;
                                    if (tf8.text == "✅") count++;
                                    if (tf9.text == "✅") count++;
                                    if (tf10.text == "✅") count++;
                                    if (tf11.text == "✅") count++;
                                    if (tf12.text == "✅") count++;
                                    if (tf13.text == "✅") count++;
                                    if (tf14.text == "✅") count++;
                                    if (tf15.text == "✅") count++;
                                    result.text = ("Your Score: " +
                                        count.toString() +
                                        "/20");
                                  },
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
                                SizedBox(height: 40),
                                Text("16/16"),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                SizedBox(height: 40),
              ],
            )
          ],
        ));
  }
}

class CARD extends StatelessWidget {
  final String speak,
      text1,
      text2,
      text3,
      text4,
      choice1,
      choice2,
      choice3,
      choice4,
      swipe;
  final Color col = Colors.teal;
  TextEditingController tf;

  CARD(this.speak, this.text1, this.choice1, this.text2, this.choice2,
      this.text3, this.choice3, this.text4, this.choice4, this.tf, this.swipe);
  @override
  Widget build(BuildContext context) {
    FlutterPluginTts.setSpeechRate(0.4);
    return Column(
      children: <Widget>[
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Choose the correct answer.\nPress the play button to listen.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Card(
                color: Colors.amber,
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 100,
                  child: GestureDetector(
                    child: IconButton(
                        icon: Icon(Icons.play_arrow),
                        onPressed: () {
                          FlutterPluginTts.speak(speak);
                        }),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Column(
                children: <Widget>[
                  GestureDetector(
                    child: Card(
                      color: Colors.teal,
                      child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: double.infinity,
                          child: Text(
                            text1,
                            textAlign: TextAlign.center,
                          )),
                    ),
                    onTap: () {
                      FlutterPluginTts.speak(text1);
                      tf.text = (choice1);
                    },
                  ),
                  GestureDetector(
                    child: Card(
                      color: Colors.teal,
                      child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: double.infinity,
                          child: Text(
                            text2,
                            textAlign: TextAlign.center,
                          )),
                    ),
                    onTap: () {
                      FlutterPluginTts.speak(text2);
                      tf.text = (choice2);
                    },
                  ),
                  GestureDetector(
                    child: Card(
                      color: Colors.teal,
                      child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: double.infinity,
                          child: Text(
                            text3,
                            textAlign: TextAlign.center,
                          )),
                    ),
                    onTap: () {
                      FlutterPluginTts.speak(text3);
                      tf.text = (choice3);
                    },
                  ),
                  GestureDetector(
                    child: Card(
                      color: Colors.teal,
                      child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: double.infinity,
                          child: Text(
                            text4,
                            textAlign: TextAlign.center,
                          )),
                    ),
                    onTap: () {
                      FlutterPluginTts.speak(text4);
                      tf.text = (choice4);
                    },
                  ),
                ],
              ),
              TextField(
                textAlign: TextAlign.center,
                controller: tf,
                enabled: false,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(swipe + "/16 Swipe..."),
            ],
          ),
        )
      ],
    );
  }
}
