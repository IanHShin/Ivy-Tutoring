import 'package:flutter/material.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_admob/firebase_admob.dart';

class s_restoran extends StatefulWidget {
  @override
  _s_restoranState createState() => _s_restoranState();
}

class _s_restoranState extends State<s_restoran> {
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
        child:  Container(
          padding: EdgeInsets.all(8.0),
          child:  Center(
            child:  Column(
              children: <Widget>[
                 Text(
                  "RESTAURANTE\n",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 30.0,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Row(
                  children: [
                    CONTAINER("images/cake.png", "Pastel", ),
                    CONTAINER("images/fish.png", "Pescado",),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    CONTAINER("images/pepper.png", "Pimienta", ),
                    CONTAINER("images/egg.png", "Huevo",),
                  ],
                ),

                Divider(),
                Display("Puedo ver el menú?", "Mwen ka wè meni an?"),
                Display("¿Puedo tomar su orden?", "Mwen ka pran kòmand ou a?"),
                Display("Sí, ¿puedo tener un sándwich de pollo?",
                    "Wi, èske mwen ka jwenn yon sandwich ak poul?"),
                Display("¿Qué le gustaría beber?", "Kisa ou ta renmen bwè?"),
                Display("Un poco de agua por favor.", "Yon ti dlo svp."),
                Display("¿Quieres algo de postre?",
                    "Ou ta renmen yon bagay pou\'w fè desè?"),
                Display("Sí, quiero el pastel.", "Wi, m bezwen gato."),
                Display("Necesito una mesa para dos, por favor.",
                    "mwen bezwen yon tab pou 2 moun, svp."),
                Display("Yo quiero lo mismo", "Map vle menm bagay la"),
                Display("El resto es para ti.", "Rès la pou ou."),
                Display("¿Tienes vino?", "Ou gen diven?"),
                Display("¿Qué es hoy especial?", "Kisa ki nan spesyal jodi a?"),
                Display("Quédese con el cambio", "Kenbe monnen an!"),
                Display("¿Algo más?", "Anyen ankò"),
                Display("Necesito una copa de vino tinto Por favor.",
                    "Mwen bezwen yon vè diven wouj svp."),
                Display("Me gustaría el cheque, por favor.",
                    "Mwen bezwen adisyon an svp."),
                SizedBox(height: 20),
                Text(
                  "vino = Diven\n\n"
                  "Pastel = Gato\n\n"
                  "Pedido = Kòmand\n\n"
                  "Pollo = Poul\n\n"
                  "Agua = Dlo\n\n"
                  "Postre = Desè\n\n"
                  "Mesa = Tab\n\n"
                  "Bebidas = Bwason\n\n"
                  "Beber = Bwè\n\n"
                  "Comer = Manje\n\n",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Display(String angle, String kreyol) {
    return Container(
      height: ScreenUtil.instance.setHeight(300),
      child: Card(
        child: GestureDetector(
          onTap: () {
            FlutterPluginTts.speak(angle);
          },
          child: Container(
            padding: EdgeInsets.all(0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ListTile(
                  title: Text(
                    angle,
                    style: TextStyle(fontSize: 17),
                  ),
                  subtitle: Text(
                    kreyol,
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: Icon(Icons.play_arrow),
                )
              ],
            ),
          ),
        ),
        color: Colors.teal[10],
      ),
    );
  }
  Widget CONTAINER(String img, String text,){
     return Expanded(
       child: Container(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset(
              img,
              height: 80,
              width: 80,
            ),
            SizedBox(height: 5,),
            Text(text, style: TextStyle(fontSize: 20),)
          ],
    ),
       ),
     );
  }
}
