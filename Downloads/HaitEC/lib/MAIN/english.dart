
import 'package:first_app/ENGLISH/classroom.dart';
import 'package:first_app/ENGLISH/jwet_mo.dart';
import 'package:first_app/ENGLISH/question_word_quiz.dart';
import 'package:first_app/ENGLISH/question_words.dart';
import 'package:first_app/ENGLISH/synonyms_of_very.dart';
import 'package:first_app/ENGLISH/tes_odyo1.dart';
import 'package:first_app/ENGLISH/quiz1.dart';
import 'package:first_app/ENGLISH/quiz2.dart';
import 'package:first_app/ENGLISH/quiz3.dart';
import 'package:first_app/ENGLISH/quiz4.dart';
import 'package:first_app/ENGLISH/quiz5.dart';
import 'package:first_app/ENGLISH/tes_odyo2.dart';
import 'package:first_app/ENGLISH/this_that.dart';
import 'package:first_app/ENGLISH/tools.dart';
import 'package:first_app/ENGLISH/voc_personalites.dart';
import 'package:first_app/MENU/tradwi.dart';
import 'package:flutter/material.dart';
import 'package:first_app/ENGLISH/veb_iregilye.dart';
import 'package:first_app/MENU/pwononsyasyon.dart';
import 'package:first_app/ENGLISH/manb_fanmi.dart';
import 'package:first_app/ENGLISH/konplete.dart';
import 'package:first_app/ENGLISH/tes_odyo3.dart';
import 'package:first_app/ENGLISH/veb_iregilye_pratik.dart';
import 'package:first_app/ENGLISH/jwet_manje.dart';
import 'package:first_app/ENGLISH/prezantasyon.dart';
import 'package:first_app/ENGLISH/aktivite.dart';
import 'package:first_app/ENGLISH/tan_prezan.dart';
import 'package:first_app/ENGLISH/jwet_vokabile.dart';
import 'package:first_app/ENGLISH/adjektif_prefiks.dart';
import 'package:first_app/ENGLISH/vokabile.dart';
import 'package:first_app/ENGLISH/adjektif_prefiks_pratik.dart';
import 'package:first_app/ENGLISH/tes_vokabile_body.dart';
import 'package:first_app/ENGLISH/tes_grame.dart';
import 'package:first_app/ENGLISH/ekspresyon_pwoveb.dart';
import 'package:first_app/ENGLISH/diferans.dart';
import 'package:first_app/ENGLISH/restoran.dart';
import 'package:first_app/ENGLISH/lopital.dart';
import 'package:first_app/ENGLISH/aprann_le.dart';
import 'package:first_app/ENGLISH/alfabe.dart';
import 'package:first_app/ENGLISH/nimewo.dart';
import 'package:first_app/ENGLISH/salitasyon.dart';
import 'package:first_app/ENGLISH/days_months.dart';
import 'package:first_app/ENGLISH/pati_ko.dart';
import 'package:first_app/ENGLISH/verbs.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:first_app/ENGLISH/prepositions.dart';
import 'package:first_app/ENGLISH/tes_vokabile_classroom.dart';
import 'package:first_app/ENGLISH/active_voice.dart';
import 'package:first_app/ENGLISH/active_voice_quiz.dart';
import 'package:first_app/ENGLISH/possessive_adj.dart';
import 'package:first_app/ENGLISH/colors.dart';
import 'package:first_app/ENGLISH/voc_activities.dart';
import 'package:first_app/ENGLISH/voc_health.dart';
import 'package:first_app/ENGLISH/voc_travels.dart';
import 'package:first_app/ENGLISH/listening_quiz1.dart';
import 'package:first_app/ENGLISH/indefinite_article.dart';
import 'package:first_app/ENGLISH/definite_article.dart';
import 'dart:ui';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() => runApp(english());
class english extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<english> {

  @override
  void initState() {

    super.initState();
    FirebaseAdMob.instance
        .initialize(appId: 'ca-app-pub-5567410113651073~4007866614');
    _bannerAd = createBannerAd()..load();

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

  TextEditingController score;

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
      appBar: AppBar(
        title: Text("English"),
        backgroundColor: Colors.teal,
      ),
      body:
          //SingleChildScrollView( child:
          new Container(
        padding: EdgeInsets.all(5),
        child: ListView(
          scrollDirection: Axis.vertical,
          physics: AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          children: <Widget>[
            SizedBox( height: 2.0),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => alfabe(),
                  ),
                );
              },
              child: CIRCLE('images/abc.png', "1. Alphabet"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => nimewo(),
                      ),
                    );
                  },
                  child: CIRCLE('images/num.png', "2. Numbers"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => salitasyon(),
                      ),
                    );
                  },
                  child: CIRCLE('images/greeting.png', "3. Greetings"),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => quiz1(),
                  ),
                );
              },
              child: CIRCLE('images/quiz.jpeg', "4. Quiz 1"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => indefinite_article(),
                      ),
                    );
                  },
                  child: CIRCLE('images/indefinite_article.png', "5. Indefinite Articles"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => definite_article(),
                      ),
                    );
                  },
                  child: CIRCLE('images/definite_article.png', "6. Definite Article"),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => voc_personalites(),
                  ),
                );
              },
              child: CIRCLE('images/voca.png', "7. Personalities & Vocabularies"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => colors(),
                      ),
                    );
                  },
                  child: CIRCLE('images/colors.png', "8. Colors"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => quiz22(),
                      ),
                    );
                  },
                  child: CIRCLE('images/quiz.jpeg', "9. Quiz 2"),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => pati_ko(),
                  ),
                );
              },
              child: CIRCLE('images/body.png', "10. Body parts"),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => quiz3(),
                      ),
                    );
                  },
                  child: CIRCLE('images/quiz.jpeg', "11. Quiz 3"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => tes_vokabile_body(),
                      ),
                    );
                  },
                  child: CIRCLE('images/quiz.jpeg', "12. Vocab Quiz 1"),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => days_months(),
                  ),
                );
              },
              child: CIRCLE('images/calendar.png', "13. Calender"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => tes_odyo1(),
                      ),
                    );
                  },
                  child: CIRCLE('images/audio.png', "14. Audio Test 1"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => tes_odyo2(),
                      ),
                    );
                  },
                  child: CIRCLE('images/audio.png', "15. Audio Test 2"),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => voc_activities(),
                  ),
                );
              },
              child: CIRCLE('images/voca.png', "16. Activites & Vocabularies"),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => listening_quiz1(),
                        ),
                      );
                    },
                    child: CIRCLE('images/audio.png', "17. Listening 1"),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => verbs(),
                        ),
                      );
                    },
                    child: CIRCLE('images/verbs.png', "18. Verbs"),
                  ),
                  ]
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => prezantasyon(),
                      ),
                    );
                  },
                  child: CIRCLE('images/presentation.png', "19. Presentation"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => tan_prezan(),
                      ),
                    );
                  },
                  child: CIRCLE('images/pencil_col.png', "20. Tenses"),
                ),
              ],
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => vokabile(),
                      ),
                    );
                  },
                  child: CIRCLE('images/voca.png', "21. Vocabularies"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => jwet_vokabile(),
                      ),
                    );
                  },
                  child: CIRCLE('images/quiz.jpeg', "22. Vocab Game"),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => possessive_adj(),
                  ),
                );
              },
              child: CIRCLE('images/vocabulary.png',
                  "23. Possessive Adjectives/Pronouns"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => jwet_manje(),
                      ),
                    );
                  },
                  child: CIRCLE('images/quiz.jpeg', "24. Food Quiz"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => prepositions(),
                      ),
                    );
                  },
                  child: CIRCLE('images/learn.png', "25. Prepositions"),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => classroom(),
                  ),
                );
              },
              child: CIRCLE('images/class.png', "26. Classroom"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            tes_vokabile_classroom(),
                      ),
                    );
                  },
                  child: CIRCLE('images/quiz.jpeg', "27. Vocab Quiz 2"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => this_that(),
                      ),
                    );
                  },
                  child: CIRCLE('images/vocabulary.png', "28. Demonstatives"),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => voc_health(),
                  ),
                );
              },
              child: CIRCLE('images/voca.png', "29. Health & Vocabularies "),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => tes_grame(),
                      ),
                    );
                  },
                  child: CIRCLE('images/quiz.jpeg', "30. Grammar Quiz"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => question_words(),
                      ),
                    );
                  },
                  child: CIRCLE('images/learn.png', "31. Question Words"),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => question_word_quiz(),
                  ),
                );
              },
              child: CIRCLE('images/quiz.jpeg', "32. Question Quiz"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => synonyms_of_very(),
                      ),
                    );
                  },
                  child:
                      CIRCLE('images/vocabulary.png', "33. Instead of 'Very'"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => tools(),
                      ),
                    );
                  },
                  child: CIRCLE('images/tools_col.png', "34. Tools"),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => voc_travels(),
                  ),
                );
              },
              child: CIRCLE('images/voca.png', "35. Travel & Vocabularies"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => quiz4(),
                      ),
                    );
                  },
                  child: CIRCLE('images/quiz.jpeg', "36. Quiz 4"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => quiz5(),
                      ),
                    );
                  },
                  child:
                  CIRCLE('images/quiz.jpeg', "37. Quiz 5"),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => ekspresyon_pwoveb(),
                      ),
                    );
                  },
                  child: CIRCLE('images/learn.png', "38. Expresssions"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => diferans(),
                      ),
                    );
                  },
                  child: CIRCLE('images/vocabulary.png', "39. Differences"),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => restoran(),
                  ),
                );
              },
              child: CIRCLE('images/restaurant.png', "40. Restaurant"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => lopital(),
                      ),
                    );
                  },
                  child: CIRCLE('images/hospital.png', "41. Hospital"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => jwet_mo(),
                      ),
                    );
                  },
                  child: CIRCLE('images/quiz.jpeg', "42. Words Game"),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => manb_fanmi(),
                  ),
                );
              },
              child: CIRCLE('images/family.png', "43. Family Members"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => konplete(),
                      ),
                    );
                  },
                  child: CIRCLE('images/quiz.jpeg', "44. Completion Quiz"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => active_voice(),
                      ),
                    );
                  },
                  child: CIRCLE('images/pencil_col.png', "45. Act/Pass Voice"),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => active_voice_quiz(),
                  ),
                );
              },
              child: CIRCLE('images/quiz.jpeg', "46. Act/Pass Quiz"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => aktivite(),
                      ),
                    );
                  },
                  child: CIRCLE('images/quiz.jpeg', "47. Activities"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => aprann_le(),
                      ),
                    );
                  },
                  child: CIRCLE('images/clock.png', "48. Time"),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => veb_iregilye(),
                  ),
                );
              },
              child: CIRCLE('images/verbs.png', "49. Irregulary verbs"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            pratik_veb_iregilye(),
                      ),
                    );
                  },
                  child: CIRCLE('images/quiz.jpeg', "50. Irr Verbs Quiz"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => adjektif_prefiks(),
                      ),
                    );
                  },
                  child: CIRCLE('images/adj.png', "51. Adjectives / Prefix"),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => adjektif_prefiks_pratik(),
                  ),
                );
              },
              child: CIRCLE('images/quiz.jpeg', "52. Adjectives Quiz"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => tes_odyo3(),
                      ),
                    );
                  },
                  child: CIRCLE('images/audio.png', "53. Audio Test 3"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => pwononsyasyon(),
                      ),
                    );
                  },
                  child: CIRCLE('images/audio.png', "54. Pronunciation"),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => tradwi(),
                  ),
                );
              },
              child: CIRCLE('images/translate.png', "55. Translation"),
            ),
            SizedBox(height: ScreenUtil.instance.setHeight(140)),
          ],
        ),
      ),
    );
  }
}

class CIRCLE extends StatelessWidget {
  final String img, text;
  CIRCLE(this.img, this.text);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(img),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              )),
                        ),
                      ],
                    )
            ),
        SizedBox(height: 10),
        Text( text),
        SizedBox(height: 20),
      ],
    );
  }
}


