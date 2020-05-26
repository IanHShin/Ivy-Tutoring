import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

class tan_prezan extends StatefulWidget{



  @override
  _tan_prezanState createState() => _tan_prezanState();
}

class _tan_prezanState extends State<tan_prezan> {

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

        appBar: AppBar( title: Text("English"), backgroundColor: Colors.teal,
          ),

        body:
        SingleChildScrollView(
          child: new Container( padding: EdgeInsets.only(right: 5, left: 5),
              child: new Center(
                child: new Column(
                  children: <Widget>[
                    Text(
                      "TAN PREZAN, PASE AK FITI",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 30.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  RichText(textAlign: TextAlign.start, text: TextSpan(style: TextStyle(fontSize: 25, color: Colors.black), children: <TextSpan>[
                    TextSpan(text: "Prezan se yon tan ki eksprime yon aksyon ki ap fèt oubyen ki fèt pa abitid.\n\n"
                        "Li ka eksprime yon aksyon ki te kòmanse nan pase men ki kontinye nan prezan.\n\n"),
                    TextSpan(text: "a) Nan Anglè, gen 4 tip prezan:\n", style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: "1. Simple Present\n"
                    "2. Present Continuous\n"
                    "3. Present perfect\n"
                    "4. Present Perfect Continuous\n\n"),
                    TextSpan(text: "1. Simple Present= Prezan senp\n\n", style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: "Prezan senp di kisa wap fè, tankou: Mwen gade tablo a, mwen chita; Li la pou abitid tou.\n"
                        "Tankou, mwen manje pen chak maten = *I eat bread every morning.\n\n"),
                    TextSpan(text: "2. Present Continuous = Prezan kontinye.\n\n", style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: "Prezan kontinye la pou pale de yon aksyon kap fèt nan moman an la men kap kontinye.\n\n"
                        "Pa egzanp:\n\n Map manje kounye a. = *I AM EATING RIGHT NOW.\n\n"
                        "Map kouri = I* AM RUNNING.\n\n"
                        "The present continuous is formed using \'TO BE\' + the root + ing.\n"
                        "Right now, at the moment, now etc\.\.\. mo sa yo fèw konnen gen prezan kontinye nan fraz la.\n\n"),
                    TextSpan(text: "3. Present perfect. =  Pase konpoze.\n\n", style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: "Pase konpoze la pou pale de yon aksyon ki te kòmanse nan pase men ki pa kontinye nan prezan, aksyon ki fini"
                        "nan yon tan ki pa detèmine.\n"
                        "Men kòman pou fòme pase konpoze:\n"
                        "combine the present tense of the verb \'to have\' plus the past participle of the main verb of the sentence.\n"
                        "Men yon egzanp:\n\n"
                        "I have lived there\n"
                        "M te rete la a.\n\n"),
                    TextSpan(text: "4. Pase konpoze kontinye. Present Perfect Continuous.\n\n", style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: "Pase konpoze Kontinye la pou pale de yon aksyon ki te kòmanse nan pase men ki kontinye nan prezan.\n\n"
                        "Egzanp:\n\n"
                        "Map viv New Jersey depi 2014. I have been living in New Jersey since 2014.\n\n"
                        "Men kòman pou fòme pase konpoze kontinye:\n"
                        "The present perfect continuous is formed using the construction has/have been + the present participle (root + ing).\n\n"),
                    TextSpan(text: "b) Past tense = Pase.\n\n", style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: "Nou itilize tan pase pou mete yon aksyon oubyen yon sitiyasyon nan pase, ki vle di pou pale de bagay ki te fèt deja.\n\n"
                     "The past tense of regular verbs is made by adding \"d\" or \"ed\" to the base form of the verb.\n\n"
                        "I talked to Jenny Yesteday.\n"
                        "I ate a piece of cake earlier.\n\n"
                        "Fòk nou remake ke \"eat\" pa transfòme an \"eated\". To eat se yon vèb iregilye.\n\n"
                        "Vèb iregilye yo, se konnen ou sipoze konnen yo. Etidye yo epi pratike yo.\n\n"),
                    TextSpan(text: "c) Future = Fiti.\n\n", style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: "Nou itilize tan Fiti pou nou pale de yon aksyon oubyen nenpot bagay ki poko rive men ki gen pou rive.\n\n "
                    "The Future tense is formed using Subject + Will + Verb or TO BE + Going + To + Verb.\n\n"
                    "Ann wè kèk egzanp ansanm:\n\n "
                    "*I will go to school tomorrow. = \n"
                    "Mwen pral lekòl demen.\n\n "
                    "*I am going to church this Sunday. = \n"
                    "Mwen pral legliz Dimanch sa a.\n\n "
                    "*He will eat something later. = \n"
                    "L\'ap manje yon bagay talè.\n\n"
                    "*She is going to Haiti next year. = \n"
                    "Li pral Haiti lòt ane.\n\n"),

                    ]
                    ),
                   ),
                    SizedBox(height: 40),
                  ],
                ),
              )
          ),
        )
    );
  }
}

