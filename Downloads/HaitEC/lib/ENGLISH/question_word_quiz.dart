import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';

void main() => runApp(question_word_quiz());

class question_word_quiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}
class _myAppState extends State<question_word_quiz> {
  @override
  void initState() {
    super.initState();
    FirebaseAdMob.instance.initialize(appId: 'ca-app-pub-5567410113651073~4007866614');
    _bannerAd = createBannerAd()..load();
    _interstitialAd = createInterstitialAd()..load();
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
    _interstitialAd.dispose();
    super.dispose();
  }

  int _total;

  final tf1 = TextEditingController();
  final tf11 = TextEditingController();
  final tf2 = TextEditingController();
  final tf12 = TextEditingController();
  final tf3 = TextEditingController();
  final tf13 = TextEditingController();
  final tf4 = TextEditingController();
  final tf14 = TextEditingController();
  final tf5 = TextEditingController();
  final tf15 = TextEditingController();
  final tf6 = TextEditingController();
  final tf16 = TextEditingController();
  final tf7 = TextEditingController();
  final tf17 = TextEditingController();
  final tf8 = TextEditingController();
  final tf18 = TextEditingController();
  final tf9 = TextEditingController();
  final tf19 = TextEditingController();
  final tf10 = TextEditingController();
  final tf20 = TextEditingController();

  final tf1answer = TextEditingController();
  final tf11answer = TextEditingController();
  final tf2answer = TextEditingController();
  final tf12answer = TextEditingController();
  final tf3answer = TextEditingController();
  final tf13answer = TextEditingController();
  final tf4answer = TextEditingController();
  final tf14answer = TextEditingController();
  final tf5answer = TextEditingController();
  final tf15answer = TextEditingController();
  final tf6answer = TextEditingController();
  final tf16answer = TextEditingController();
  final tf7answer = TextEditingController();
  final tf17answer = TextEditingController();
  final tf8answer = TextEditingController();
  final tf18answer = TextEditingController();
  final tf9answer = TextEditingController();
  final tf19answer = TextEditingController();
  final tf10answer = TextEditingController();
  final tf20answer = TextEditingController();

  final result = TextEditingController();

int count = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("English"),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        physics: AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        children: <Widget>[
          Text(
            "QUESTION WORDS QUIZ",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 30.0,
              color: Colors.teal,
              fontWeight: FontWeight.bold,
            ),
          ),
          new Container(
              padding: EdgeInsets.all(5.0),
              child: new Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ROW("1. ",tf1, "is your name?", tf1answer),
                    ROW("2. ", tf2, "old are you?", tf2answer),
                    ROW("3. ", tf3, "did you go last night?", tf3answer),
                    ROW("4. ", tf4, "are you going to the movies?", tf4answer),
                    ROW("5. ", tf5, "pens do you have?", tf5answer),
                    ROW("6. ", tf6, "milk should I drink?", tf6answer),
                    ROW("7. ", tf7, "did you go out with?", tf7answer),
                    ROW("8. ", tf8, "is your mom? (location)", tf8answer),
                    ROW("9. ", tf9, "one do you prefer?", tf9answer),
                    ROW("10. ", tf10, "does it take you to get home?", tf10answer),
                    ROW("11. ", tf11, "do you go to the gym?", tf11answer),
                    ROW("12. ", tf12, "is this girl?", tf12answer),
                    ROW("13. ", tf13, "is your sister? (age)", tf13answer),
                    ROW("14. ", tf14, "is he so angry?", tf14answer),
                    ROW("15. ", tf15, "one do you like better?", tf15answer),
                    ROW("16. ", tf16, "are we going to the park again?", tf16answer),
                    ROW("17. ", tf17, "car is this?", tf17answer),
                    ROW("18. ", tf18, "are you going tomorrow?", tf18answer),
                    ROW("19. ", tf19, "did you pay for it?", tf19answer),
                    ROW("20. ", tf20, "are you crying?", tf20answer),

                    TextField( textAlign: TextAlign.center,
                      controller: result,
                      enabled: false,
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        child: GestureDetector(
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
                      ),
                    ),
                  ],
                ),
              )),
          SizedBox(height: 50),
        ],
      ),
    );
  }

  Trim(String a) {
    return a.toString().toLowerCase().trim();
  }
  void grade (TextEditingController tf, String text, TextEditingController tfanswer){
    if (Trim(tf.text) == text) {
      tfanswer.text = "✅";
    } else
      tfanswer.text = "❌";
  }
  
  verifye() {
    _interstitialAd.show();
    grade(tf1, "what", tf1answer);
    grade(tf2, "how", tf2answer);
    grade(tf3, "where", tf3answer);
    grade(tf4, "when", tf4answer);
    grade(tf5, "how many", tf5answer);
    grade(tf6, "how much", tf6answer);
    grade(tf7, "who", tf7answer);
    grade(tf8, "where", tf8answer);
    grade(tf9, "which", tf9answer);
    grade(tf10, "how long", tf10answer);
    grade(tf11, "how often", tf11answer);
    grade(tf12, "who", tf12answer);
    grade(tf13, "how old", tf13answer);
    grade(tf14, "why", tf14answer);
    grade(tf15, "which", tf15answer);
    grade(tf16, "when", tf16answer);
    grade(tf17, "whose", tf17answer);
    grade(tf18, "where", tf18answer);
    grade(tf19, "how much", tf19answer);
    grade(tf20, "why", tf20answer);

    count = 0;
    if (tf1answer.text=="✅")
      count++;
    if (tf2answer.text=="✅")
      count++;
    if (tf3answer.text=="✅")
      count++;
    if (tf4answer.text=="✅")
      count++;
    if (tf5answer.text=="✅")
      count++;
    if (tf6answer.text=="✅")
      count++;
    if (tf7answer.text=="✅")
      count++;
    if (tf8answer.text=="✅")
      count++;
    if (tf9answer.text=="✅")
      count++;
    if (tf10answer.text=="✅")
      count++;
    if (tf11answer.text=="✅")
      count++;
    if (tf12answer.text=="✅")
      count++;
    if (tf13answer.text=="✅")
      count++;
    if (tf14answer.text=="✅")
      count++;
    if (tf15answer.text=="✅")
      count++;
    if (tf16answer.text=="✅")
      count++;
    if (tf17answer.text=="✅")
      count++;
    if (tf18answer.text=="✅")
      count++;
    if (tf19answer.text=="✅")
      count++;
    if (tf20answer.text=="✅")
      count++;

    result.text=("Your Score: "+ count.toString() +"/20");
  }

}
class ROW extends StatelessWidget{
  TextEditingController tf, tfanswer;
  String ques, num;
  ROW(this.num, this.tf, this.ques, this.tfanswer);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(num, style: TextStyle(fontSize: 20,),),
            Flexible(
              flex: 2,
              child: Container(
                  padding: EdgeInsets.only(top: 3.0),
                  width: 100,
                  height: 20,
                  child: TextField(
                    controller: tf,
                    decoration: InputDecoration(hintText: "Repons"),
                    style:
                    TextStyle(fontSize: 17, color: Colors.black),
                  )
              ),
            ),
            Flexible(
              flex: 4,
              child: Container(
              child: Text(" "+ ques,
                style:
                TextStyle(fontSize: 17, color: Colors.black),
              ),
            ),
            )
          ],
        ),

        SizedBox(height: 5),
        Center(
          child: Container(
              width: 35,
              height: 25,
              child: TextField( enabled: false,
                controller: tfanswer,
                style: TextStyle(fontSize: 20,),
              )
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
