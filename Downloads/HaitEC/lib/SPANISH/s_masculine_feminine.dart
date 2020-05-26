import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

class s_masculine_feminine extends StatefulWidget {
  @override
  _s_masculine_feminineState createState() => _s_masculine_feminineState();
}

class _s_masculine_feminineState extends State<s_masculine_feminine> {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Text(
                  "MASCULINO Y FEMENINO",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 20.0,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "A) MASCULINO", textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.teal,
                    fontSize: 20.0, ),
              ),
              Text(
                "1. Pifò mo maskilen nan Espanyòl fini pa \"o\". Yon mo ki fini pa \"o\" "
                "ka vle di ke yon moun oubyen yon bèt se mal, oubyen yon objè se jan maskilen.\n\n"
                "Ex: el libro\n\n"
                "Ex: el camino\n\n"
                "Ex: el teatro\n\n"
                "2. Mo ki fini pa \"ma\", pa \"yon konsòn (sof d ak z)\", pa \"yon vwayèl ki "
                "gen aksan (á, é, í, ó, ú)\" oubyen pa \"e\", souvan yo se maskilen nan Espanyòl.\n\n"
                "Ex: el programa\n\n"
                "Ex: el idioma\n\n"
                "Ex: el árbol\n\n"
                "EX: el rumor\n\n"
                "Ex: el colibrí\n\n"
                "Ex: el ñandú\n\n"
                "Ex: el perfume\n\n"
                "Ex: el estante\n\n",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                "B) FEMENINO", textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 20.0, ),
              ),
              Text(
                    "1. Pifò mo maskilen nan Espanyòl fini pa \"a\". Yon mo ki fini pa \"a\" "
                    "vle di ke yon moun oubyen yon bèt se femèl, oubyen yon objè se jan feminen.\n\n"
                    "Ex: la guitarra\n\n"
                    "Ex: la piscina\n\n"
                    "Ex: la niña\n\n"
                    "2. Mo ki fini pa \"d\", \"z\" oubyen \"ión\" se feminen nan Espanyòl.\n\n"
                    "Ex: la salud\n\n"
                    "Ex: la felicidad\n\n"
                    "Ex: la luz\n\n"
                    "Ex: la nariz\n\n"
                    "Ex: la religión\n\n"
                    "EX: la canción\n\n",
                style: TextStyle(
                  fontSize: 20,
                ),
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
              SizedBox(
                height: 20,
              ),
              Text(
                "Libro = Liv\n\n"
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
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              // È è ò Ò
              SizedBox(
                height: 70,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
