import 'package:flutter/material.dart';

class fonksyon_math extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                      "FONKSYON MATEMATIK",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 30.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 25, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  "Math, se yon klas nan Java. Li vini ak plizyè metòd."
                                  "\n\nYon metòd se yon gwoup deklarasyon ki pèfòme yon aksyon spesifik.\n\n"
                                  "Chapit sa a pale e esplike kèk metòd nou ka itilize nan klas Math la.\n\n"
                                  "Nou ka klase metòd yo pa kategori tankou metòd trigonometrik, metòd exponan ak metòd sèvis.\n\n"
                                  "Metòd sèvis yo genyen rounding pou awondi, min pou jwenn minimum, max pou jwenn maximum,"
                                  "absolute (abs) pou retounen valè absoli ak metòd random pou jenere nimewo kèlkonk.\n\n"
                                  "Pou fini, nou gen metòd PI ki fè nou jwenn π.\n\n"
                                  "Men kèk nan metòd nap aprann yo.\n\n"
                                  "sin(radians): Pou kalkile sinis yon valè ki an radyan.\n\n"
                                  "cos(radians): Pou kalkile cosinis yon valè ki an radyan.\n\n"
                                  "tan(radians): Pou kalkile tanjant yon valè ki an radyan.\n\n"
                                  "toRadians(degree): pou konvèti degre an radyan.\n\n"
                                  "toDegree(radians): pou konvèti radyan an degre.\n\n"
                                  "asin(a): Se menm bagay ak sin-1(a)\n\n"
                                  "acos(a): Se menm bagay ak cos-1(a)\n\n"
                                  "atan(a): Se menm bagay ak tan-1(a)\n\n"
                                  "pow(a, b): pou\'w jwenn a expozan b. Math.pow(a,  b).\n\n"
                                  "sqrt(x): pou\'w jwenn rasin kare x lè x pa yn nomb negatif.\n\n"
                                  "Men kèk egzanp:\n\n"
                                  "Math.pow(2, 4) = 16.0\n"
                                  "Math.pow(3, 2) = 9.0\n"
                                  "Math.sqrt(4) = 2.0\n"
                                  "Math.sqrt(16) = 4.0\n"
                                  "Math.sin(50) = -0.2624\n"
                                  "Math.cos(45) = 0.5253\n"
                                  "Math.max( 2 , 3 ) = 3\n"
                                  "Math.min( 2.5 , 4.6 ) = 2.5\n"
                                  "Math.abs(-2 ) = 2\n"
                                  "Math.abs(-2.1 ) = 2.1\n\n"
                                  "Math.pow ak Math.sqrt dwe toujou gen tip double.\n\n"
                                  "Lòt fonskyon yo depann de ki paramèt yo genyen. Depi gen youn ki desimal, tip la dwe double."
                                  "Paramèt la se sa ou mete anndan parantèz yo.\n\n"
                                  "double rezilta = Math.pow(3, 2);\n"
                                  "System.out.print(rezilta);\n"
                                  "rezilta ap egal 9.0 paske tip varyab li se double.\n"),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ));
  }
}
