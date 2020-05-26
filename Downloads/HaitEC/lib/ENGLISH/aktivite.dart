import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

class aktivite extends StatefulWidget {
  @override
  _aktiviteState createState() => _aktiviteState();
}

class _aktiviteState extends State<aktivite> {

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("English"),
          backgroundColor: Colors.teal,
        ),
        body: SingleChildScrollView(
          child: new Container(
              padding: EdgeInsets.all(8.0),
              child: new Center(
                child: new Column(
                  children: <Widget>[
                    new Text(
                      "SOME ACTIVITIES",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 30.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    new Text(
                      "kèk aktivite \n",
                      style: TextStyle(fontSize: 25, color: Colors.teal),
                    ),
                    RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                          style: TextStyle(fontSize: 20, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                                text: "PLAYING SOCCER\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    "I like playing Soccer. Playing Soccer is fun and it makes you sweat. Sweating is good for your body.\n\n"),
                            TextSpan(
                                text: "COOKING\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    "My mother likes to cook. She does not like to eat take out, instead, she cooks so often. "
                                    "Cooking is a really good way to save money.\n\n"),
                            TextSpan(
                                text: "Running\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    "People who play sports always like to run. "
                                    "Running is a great way to help improve cardiovascular health. \n\n"),
                            TextSpan(
                                text: "Playing Video Games\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    "Playing video games is a nice way to spend free times. "
                                    "Simple video games that don\’t require a lot of thought, can help people relax.\n\n"),
                            TextSpan(
                                text: "Dancing\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    "Dancing is a great way to exercise and stay in shape. "
                                    "It is more fun than a lot of other hobbies. Some people like dancing better than going to the gym.\n\n"),
                            TextSpan(
                                text: "Panting\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    "Painting is a really nice creative activity. Painting also helps people use their senses. "
                                    "Creative activities lessen stress in the body.\n\n"),
                            TextSpan(
                                text: "Traveling\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    "Most people in the world like to travel. People who work inside an air plane travel the most."
                                    "These people are called flight attendant.\n\n"),
                            TextSpan(
                                text: "Writing\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    "The best way to improve you writing skills is to write more often. Practice makes perfect.\n\n"),
                            TextSpan(
                                text: "Reading\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    "Reading is one of the most important thing a student can do. Reading is the best way to teach yourself. "
                                    "The more you read, the more you will learn.\n\n"),
                            TextSpan(
                                text: "Fishing\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    "Fishing is fun. Some people think of fishing as a way to release stress.\n\n"),
                            TextSpan(
                                text: "Hunting\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    "Hunting is the practice of killing or trapping animals. Hunting is mostly done by humans for food.\n\n"),
                            TextSpan(
                                text: "Computer\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    "Everyone should be able to manage a computer. "
                                    "People who likes staying on their computer are often good with them.\n\n"),
                            TextSpan(
                                text: "Biking\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    "Biking is another great way to exercise. "
                                    "Some people use biking as a way to loose weight because they do it so often and so much.\n\n"),
                            TextSpan(
                                text: "Drawing\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    "Drawing is a really nice and simple way to show creativity. "
                                    "Can you draw someone\'s picture just by looking at them?\n\n"),
                            TextSpan(
                                text: "Football\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    "Unlike the other countries, in USA, Football is what we play with hand. "
                                    "Football is the most popular sport in the United States.\n\n"),
                            TextSpan(
                                text: "Making research\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    "The Internet is probably the most important resource to use when making research."
                                    "Nowadays, people almost never go to the library. "
                                    "Since they can find almost any information they want on the Internet.\n\n"),
                            TextSpan(
                                text: "VOKABILÈ\n\n",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.teal)),
                            TextSpan(
                                text: "*Playing Soccer = Jwe foutbòl\n\n"
                                    "*Cooking = Fè manje\n\n"
                                    "*Running = Kouri\n\n"
                                    "*Playing Video Games = Jwe jwèt videyo\n\n"
                                    "*Dancing = Danse\n\n"
                                    "*Painting = Pentire\n\n"
                                    "*Traveling = Vwayaje\n\n"
                                    "*Reading = Fè lekti\n\n"
                                    "*Fishing = Peche Pwason\n\n"
                                    "*Hunting = Ale Lachas\n\n"
                                    "*Computer = Òdinatè\n\n"
                                    "*Biking = Monte Bekàn\n\n"
                                    "*Football = Foutbòl Ameriken\n\n"
                                    "*Making Research = Fè Rechèch",
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                          ]),
                    ),
                    SizedBox(height: 50),
                  ],
                ),
              ),
          ),
        ),
    );
  }
}
