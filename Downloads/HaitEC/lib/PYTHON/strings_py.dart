import 'package:flutter/material.dart';

class strings_py extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Python"),
          backgroundColor: Colors.teal,
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      "STRINGS",
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
                              "Strings: tip la se \"str\", yo la pou kenbe tèks, non moun, oubyen nonb ak lèt mele ansanm tankou: \" Jenny \","
                          "\"Alyssa23\", \"200\". String yo toujou nan mitan gimè \" \". \n\n "
                          "Ann itilize yon string ki rele name:\n\n"
                          "name = \"Chesnique\"\n\n"
                          "print(name) ap retounen \" Chesnique \" paske se valè sa li genyen.\n\n"
                      "pou chanje tout lèt yon string an majiskil, nou itilize \"upper()\" ki se yon metòd pou string.\n"
                      "print(name.upper()) ap afiche \" CHESNIQUE \" \n\n"
              "pou chanje tout lèt yon string an miniskil, nou itilize \"lower()\" ki se yon metòd pou string.\n"
                          "print(name.lower()) ap retounen \"chesnique\"\n\n"
              "print(len(name)) ap afiche 9, kantite karaktè ki nan string lan. sonje ke espas yo konte tankou se karaktè.\n\n"

                      "\tConcatenating\n\n"
                      "Concatenating jus vle di adisyone oubyen konbine String ak yon lòt String oubyen yon lòt varyab kèlkonk. \n\n"
                      "Sim gen 2 string: str1 = \"I love\" ak str2 = \" HaitEC\" \n\n"
                      "Sim vle afiche \"I love HaitEC\" m ka itilize concatenation pou fè sa.\n\n"
                      "print(str1 + str2)\n "
                      "ap afiche \"I love HaitEC\".\n\n"

                      "Indexing ak Slicing\n\n"
                          "Indexing ak Slicing se pwosede ki pèmèt ou afiche oubyen itilize yon karaktè osinon yon pati nan yon string.\n\n"
                          "Ann itilize string sa:\n\n"
                          "myString = \"I love HaitEC\"\n\n"
                          "Si\'m bezwen afiche karaktè \'I\' a, map itilize indexing.\n\n"
                          "print(myString[0]) ap afiche \'I\'.\n\n"
                          "print(myString[3]) ap afiche \'0\'.\n\n"

                          "Numero ki anndan [ ] yo rele \"index\".\n\n"
                          "index toujou kòmanse nan 0, se sak fè premye lèt nan yon string toujou gen index [0].\n\n"
                          "Kontrèman ak anpil lòt langaj pwogramasyon, Python ka pran index negatif. [-1] toujou retounen dènye "
                          "karaktè nan yon string.\n\n"
                          "print(myString[-1]) ap afiche \'C\'.\n\n"
                          "print(myString[-3]) ap afiche \'t\'.\n\n"
                          "print(myString[2:]) ap afiche \'love HaitEC\'.\n\n"
                          "Sa vle di nap komanse nan 2 pou rive jous nan fen an.\n\n"
                          "Si index la plase anvan \':\' an, index la vle di ki kote pou nou kòmanse.\n\n"
                          "Si index la plase apre \':\' an, index la vle di ki kote pou nou fini.\n\n"
                          "Si gen index ni anvan, ni apre \':\' an, index yo vle di kote pou nou komanse e ki kote pou nou fini.\n\n"
                          "Men kèk egzanp:\n\n"
                          "print(myString[2:]) ap afiche \'love HaitEC\'.\n\n"
                          "print(myString[:6]) ap afiche \'I love\'.\n\n"
                          "print(myString[2:6]) ap afiche \'love\'.\n\n"

                              "Kèk metòd pou Strings\n\n"
                              "len()\n\n upper()\n\n"
                          "lower()\n\n capitalize()\n\n"
                          "casefold()\n\n center()\n\n"
                              "count()\n\n encode()\n\n"
                              "endswith()\n\n expandtabs()\n\n"
                              "find()\n\n format()\n\n"
                              "format_map()\n\n index()\n\n"
                              "isdecimal()\n\n isdigit()\n\n"
                              "islower()\n\n isupper()\n\n"
                              "split()\n\n\n\n "),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ));
  }
}
