import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

class s_indefinite_article extends StatefulWidget {
  @override
  _s_indefinite_articleState createState() => _s_indefinite_articleState();
}

class _s_indefinite_articleState extends State<s_indefinite_article> {
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
                  "Artículos indefinidos",
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
                  "Un / Una / unos / unas",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 25.0,
                  ),
                ),

                Text(
                  "1. Nou itilize \"un, una, unos, unas\" pou pale de yon bagay ki pa defini, "
                  "pou pale de yon bagay pou premye oubyen pou pale de yon bagay ki pa spesifik."
                  "Se pou sa yo rele yo atik endefini.\n\n"
                  "Ex: Un libro\n\n"
                  "Ex: Una galleta\n\n"
                  "Ex: Unos niños\n\n"
                  "Ex: Unas alumnas\n\n"
                  "2. Nou itilize \"un\" devan mo sengilye epi ki maskilen.\n\n"
                  "Ex: un elefante\n\n"
                  "Ex: un gato\n\n"
                  "3. Nou itilize \"una\" devan mo ki sengilye epi ki feminen.\n\n"
                  "Ex: Una casa\n\n"
                  "Ex: Una niña\n\n"
                  "4. Nou itilize \"unos\" devan mo pliryèl epi ki maskilen.\n\n"
                  "EX: Unos libros\n\n"
                  "Ex: Uno perros\n\n"
                  "5. Nou itilize \"unas\" devan mo pliryèl epi ki feminen.\n\n"
                  "Ex: Unas computadoras\n\n"
                  "Ex: Unas casas\n\n"
                  "Souvan atik endefine an konn siprime apre vèb \"ser\", si non ki itilize apre vèb \"ser\" "
                  "la relativ ak yon pwofesyon, yon nasyonalite oubyen yon relijyon. Men si non an itilize aprè yon adjektif,"
                  " atik endefini an paka siprime.\n\n"
                  "Ex: El es músico.\n\n"
                  "Ex: Soy estudiante.\n\n"
                  "Ex: Ella es una brillante estudiante.",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Vocabulary = Vokabilè",
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 25.0,
                      color: Colors.teal),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    "Un libro = Yon liv\n\n"
                    "Una galleta = Yon bonbon\n\n"
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
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                // È è ò Ò
                SizedBox(height: 70),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
