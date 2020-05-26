import 'package:flutter/material.dart';

class loop extends StatelessWidget {
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
                      "LOOP",
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
                                  "Nou souvan itilize loop pou nou fè yon pwogram "
                                  "repete yon deklarasyon ou byen plizyè deklarasyon plizyè fwa.\n\n"
                                  "Sipoze ke ou vle afiche 100 premye nonb antye yo. Ou tap bezwen pou\'w afiche yo youn pa youn.\n\n"
                                  "Sipoze ke ou vle afiche \"I love HaitEC\" 150 fwa. "
                                  "Ou tap bezwen pou\'w afiche chak fraz youn pa youn. Epi sa tap parèt anmèdan.\n\n"
                                  "1. System.out.print(\"I love HaitEC\");\n"
                                  "2. System.out.print(\"I love HaitEC\");\n"
                                  "______________________________;\n"
                                  "______________________________;\n"
                                  "150. System.out.print(\"I love HaitEC\");\n\n"
                                  "Si se sa nou tap gen pou nou fè pou afiche \"I love HaitEC\" "
                                  "100 fwa, li tap pran anpil tan ak anpil espas nan pwogram lan.\n\n"
                                  "Poutèt sa Java vini ak sa nou rele LOOP la, ki la pou kontwole konbyen fwa yon deklarasyon egzekite.\n\n"
                                  "Egzanp:\n\n"
                                  "int  count = 0 ;\n"
                                  "while  (count < 150) {\n"
                                  "\tSystem.out.println(\"HaitEC\");\n"
                                  "\tcount++;\n"
                                  "}\n\n"
                                  "count se yon varyab nou bay valè 0. Loop la gade si count pi piti pase 150. Si count pi piti pase 150,"
                                  "li afiche \"I love HaitEC\". count++ la vle di ajoute 1 sou count. Sa vle di count te kòmanse ak 0, lap pase ak 1.\n\n"
                                  "Soti nan 0  pou rive nan 150, sa fè 151. Se sak fè nou di pi piti pase 150. Sa vle di count ap rive nan 149. Lè count"
                                  "rive nan 149 epi nou ajoute 1 sou count, count ap egal 150. Lè  loop la gade si count pi piti pase 150,"
                                  "l\'ap wè se pa vre. Se lè sa a loop la ap sispann afiche \"I love HaitEC.\"\n\n"
                                  "while Loop\n\n"
                                  "while Loop egzekite yon enstriksyon epi lap kontinye repete\'l  pandan yon kondisyon vre.\n\n"
                                  "int  count = 0 ;\n"
                                  "while  (count < 150) {\n"
                                  "\tSystem.out.println(\"I love HaitEC\");\n"
                                  "\tcount++;\n"
                                  "}\n\n"
                                  "int  count = 0; __nou inisyalize varyab count nou bal valè 0.\n"
                                  "while  (count < 150) __ Sa se kondisyon ki pou respekte a.\n"
                                  "{\n"
                                  "\tSystem.out.println(\"I love HaitEC\");\n"
                                  "\tcount++;\n"
                                  "}\n\n"
                                  "__ Sa se kò loop la. Se aksyon sa yo kap pèfòme toutotan kondisyon an respekte.\n\n"
                                  "for Loop\n\n"
                                  "for loop la prèske fè menm bagay ak while loop la. "
                                  "\nfor (int i = 0 ; i < 150 ; i++) {\n"
                                  "\tSystem.out.println(\"Welcome to Java!\"); \n"
                                  "}\n\n"
                                  "int i = 0 ;__ nou inisyalize varyab i nou bal valè 0.\n"
                                  "i < 150 __ Sa se kondisyon ki pou respekte a.\n"
                                  "i++ vle di ajoute 1 sou i. Si'l te 0, l'ap vin 1.\n\n"
                                  "Ni for loop la ni while loop la tou 2 fè menm bagay. Afiche \"I love HaitEC\" 150 fwa.\n\n"
                                  "Gen lòt Loop tankou Do-while loop ak Nested loop. Men se 2 sa yo nap plis itilize."
                                  "Siw vle konn sa 2 lòt loop yo fè, fè yon ti rechèch pou kont ou.\n\n")
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ));
  }
}
