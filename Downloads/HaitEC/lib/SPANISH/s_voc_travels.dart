import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_admob/firebase_admob.dart';

void main() => runApp(s_voc_travels());

class s_voc_travels extends StatefulWidget {

  @override
  _s_voc_travelsState createState() => _s_voc_travelsState();
}

class _s_voc_travelsState extends State<s_voc_travels> {
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
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Spanish"),
        backgroundColor: Colors.teal,
      ),

      body:
      ListView(
        scrollDirection: Axis.vertical,
        physics: AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(3),
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 5),
                  Container(
                    child: Text(
                      "VOCABULARIOS",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 25.0,
                         color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Column( mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      VOCA('Viaje', 'Vwayaj'),
                      VOCA('Viajar', 'Vwayaje'),
                      VOCA('Viajero', 'Vwayajè'),
                      VOCA('Visitante', 'Vizitè'),
                      VOCA('Bienvenidos', 'Byenvini'),
                      VOCA('Destino', 'Destinasyon'),
                      VOCA('Itinerario', 'Itinerè'),
                      VOCA('Pasaporte', 'Paspò'),
                      VOCA('Billete de avión', 'Tikè avyon'),
                      VOCA('Tarjeta de\nembarque', 'Pansyon\nanbakman'),
                      VOCA('Hotel', 'Otèl'),
                      VOCA('Habitación', 'Chanm'),
                      VOCA('Recepción', 'Resepsyon'),
                      VOCA('Vigente', 'Valid'),
                      VOCA('Vencido', 'Ekspire'),
                      VOCA('Retrasado', 'Anreta'),
                      VOCA('Coche', 'Machin'),
                      VOCA('Tren', 'Tren'),
                      VOCA('Barco', 'bato'),
                      VOCA('Avión', 'Avyon'),
                      VOCA('Aviso', 'Avi'),
                      VOCA('Seguridad', 'Sekirite'),
                      VOCA('Advertencia', 'Avètisman'),
                      VOCA('Tráfico', 'trafik'),
                      VOCA('Cinturón de\nseguridad', 'Sentiwon\nsekirite'),
                      VOCA('Asiento\npeligroso', 'Danjre'),
                      VOCA('Prohibido', 'Entèdi'),
                      VOCA('Frontera', 'Frontyè'),
                      VOCA('Olas', 'Vag'),
                      VOCA('Puerto', 'Pò'),
                      VOCA('Turista', 'Touris'),
                      VOCA('Distante', 'Byen lwen'),
                      VOCA('Arma', 'Zam'),
                      VOCA('Ascensor', 'Asansè'),
                      VOCA('Maleta', 'Malèt'),
                      VOCA('Campo', 'Tèren'),
                      VOCA('Pared', 'Mi'),
                      VOCA('Oro', 'lò'),
                      VOCA('Pirámide', 'Piramid'),
                      VOCA('Cobarde', 'Lach'),
                      VOCA('Serio', 'Serye'),

                      SizedBox(height: 10),
                      Container(
                        child: Text(
                          "VERBOS",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      VOCA('Viajar', 'Vwayaje'),
                      VOCA('Hacer la\vmaleta', 'Fè malèt'),
                      VOCA('Quedarse', 'Rete'),
                      VOCA('Dejar', 'Pati'),
                      VOCA('Cancelar', 'anile'),
                      VOCA('Navegar', 'Navige'),
                      VOCA('Reservar', 'Rezève'),
                      VOCA('Pagar', 'Peye'),
                      VOCA('Pedir', 'Kòmande'),
                      VOCA('Comprar', 'Achte'),
                      VOCA('Visitar', 'Vizite'),
                      VOCA('Regresar', 'Retounen'),
                      VOCA('Transferir', 'Transfere'),
                      VOCA('Prohibir', 'Entèdi')
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}

class VOCA extends StatelessWidget{
  final String espagnol;
  final String kreyol;
  const VOCA(this.espagnol, this.kreyol,);

  @override
  Widget build(BuildContext context) {
    return
    Column(
      children: <Widget>[
      Container(
      height: ScreenUtil.instance.setHeight(135),
      child:
      Row(
        children: <Widget>[
          GestureDetector(
            onTap: (){
              FlutterPluginTts.speak(espagnol);
            },
            child: Container(
                color: Colors.white,
                width: ScreenUtil.instance.setWidth(520),
                height: 45,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.play_arrow),
                    Text(espagnol, style: TextStyle(fontSize: ScreenUtil.instance.setSp(60)),),
                  ],
                )
            ),
          ),
          SizedBox(width: ScreenUtil.instance.setWidth(18)),
          Container(
              color: Colors.white,
              width: ScreenUtil.instance.setWidth(520),
              height: 45,
              child:
              Row(
                children: <Widget>[
                  Icon(Icons.crop_din),
                  Text(kreyol, style: TextStyle(fontSize: ScreenUtil.instance.setSp(60))),
                ],
              )
          )
        ],
      ) ,
    ) ,
        SizedBox(height: 10)
      ],
    );
  }
}

