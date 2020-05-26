import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class operate_lojik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);

    return Scaffold(
        appBar: AppBar(
          title: Text("Java"),
          backgroundColor: Colors.teal,
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      "Operatè lojik ak Kondisyon\n",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: ScreenUtil.instance.setSp(80.0),
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 25, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: "1. Operatè lojik\n\n",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text:
                                  " Pou nou egzekite kèk deklarasyon, pafwa gen kondisyon ki dwe respekte, kondisyon sa yo ka youn oubyen plizyè.\n\n"
                                  "Pou nou konbine kondisyon yo, nou itilize operatè lojik. Lè nou konbine plizyè kondisyon, nou vin jwenn yon sèl kondisyon."
                                  "Deklarasyon an ap egzekite si kondisyon an vre.\n\n Paske kondisyon an ka vre ou byen pa vre, nou rele li Boolean. Boolean se yon tip"
                                  "varyab ki pran vale \"true\" oubyen \"false\".\n\n"
                                  "P ak q se de kondisyon.\n\n"
                                  "&& = AND.  (p&&q) = p AND q.\n"
                                  "Si youn nan kondisyon sa yo pa respekte, deklarasyon an pap egzekite.\n\n"
                                  "|| = OR.  (p||p) p OR q.\n"
                                  "! = NOT.\n  (!p&&q) = NOT P AND q;"
                                  "== = Equal. Nou itilize li pou konpare nimewo.\n\n"
                                  "12 == 24/2 = true;\n\n"),
                          TextSpan(
                            text: "2. Kondisyon\n\n",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text: " x = 1;\n\n"
                                  "if(x > 0){\n"
                                  "deklarasyon\n"
                                  "}\n\n"
                                  "if (x < 0) {\n"
                                  "System.out.print(\'\'ok\'\')\n"
                                  "}\n\n"
                                  "if (x != 0) {\n"
                                  "Fè yon bagay\n"
                                  "}\n\n"
                                  "if (x >= 0) {\n"
                                  "Deklarasyon an\n"
                                  "}\n\n"
                                  "if (x != 1) {\n"
                                  "Deklarasyon an\n"
                                  "}\n\n"
                                  "Yo rele yon moun teenager lè li gen 13 a 19 ane.\n\n"
                                  "ing age = 15;\n\n"
                                  "if (age>=13 && age<=19) {\n"
                                  "System.out.print(\'\'teen\'\');\n"
                                  "}\n\n"
                                  "Paske 15 pi plis pase 13 epi li pi piti pase 19, deklarasyon an ap egzekite. Console la ap make \'\'teen\'\'.\n\n"
                                  ")"),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ));
  }
}
