import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

class s_definite_article extends StatefulWidget {
  @override
  _s_definite_articleState createState() => _s_definite_articleState();
}

class _s_definite_articleState extends State<s_definite_article> {
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
    return Scaffold(
        appBar: AppBar(
          title: Text("Spanish"),
          backgroundColor: Colors.teal,
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      "Artículos definidos",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 30.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "El / La / Los / Las",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 25.0,
                      ),
                    ),

                    Text("1. Nou itilize atik defini yo pou pale de bagay ki byen defini, "
                        "oubyen pou pale de bagay ki spesifik.\n\n"
                        "2. Nou itilize \"el\" devan mo sengilye epi ki maskilen.\n\n"
                        "Ex: el libro\n\n"
                        "Ex: el camino\n\n"
                        "3. Nou itilize \"la\" devan mo ki sengilye epi ki feminen.\n\n"
                        "Ex: la casa\n\n"
                        "Ex: la mesa\n\n"
                        "4. Nou itilize \"los\" devan mo pliryèl epi ki maskilen.\n\n"
                        "EX: Los niños\n\n"
                        "Ex: Los perros\n\n"
                        "5. Nou itilize \"las\" devan mo pliryèl epi ki feminen.\n\n"
                        "Ex: Las computadoras\n\n"
                        "Ex: Las Sillas\n\n",
                    style: TextStyle(fontSize: 20),),
                    SizedBox(height: 20,),
                    Text(
                      "Vocabulary = Vokabilè",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 25.0,
                        color: Colors.teal
                      ),
                    ),
                    SizedBox(height: 20),
                      Text("Libro = Liv\n\n"
                          "Camino = Chimen\n\n"
                          "Niño = Ti gason\n\n"
                          "Niña = Ti fi\n\n"
                          "Alumno = Elèv\n\n"
                          "Gato = Chat\n\n"
                          "Casa = Kay\n\n"
                          "Perro = Chyen\n\n"
                          "Computadora = Òdinatè\n\n"
                          "Elefante = Elefan\n\n"
                          "Músico = Mizisyen\n\n"
                          "Estudiante = Etidyan",
                        style: TextStyle(fontSize: 20)
                    ),

                    // È è ò Ò
                    SizedBox(height: 70),
                  ],
                ),
              )),
        ));
  }
}
