import 'package:flutter/material.dart';

class prezantasyon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("English"),
          backgroundColor: Colors.teal,
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      "Prezantasyon",
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
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                              "Prezante ou se bay yon pakèt enfòmasyon de ou menm.\n"
                                  "Yon prezantasyon ka senp, tankou lè ou jis bay non ou.\n\n"
                                  "Hello my name is Willio.\n\n"
                                  "Konsa tou li ka byen long, tankou lè ou pale de ou menm an jeneral.\n\n"
                                  "Nou pral aprann yon fason ki pa two konplike pou nou pale de nou menm. Men yon egzanp prezantasyon ki pi long.\n\n"
                                  "Hello! my name is Willy, and I am 23 years old. I am the one who created this App for you guys. I live in  Jersey, USA."
                                  "I have four brothers and one sister.\n\n"),
                          TextSpan(
                            text: "Men tradiksyon Kreyòl sa nou sot li a.\n\n",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text:
                              "Hello! mwen rele Willy, epi mwen gen 23 zan. Se mwen menm ki kreye Aplikasyon sa pou nou."
                                  "Map viv  Jersey, USA. M gen 4 frè ak yon sè.\n\n"),
                          TextSpan(
                              text: "To live = viv\n"
                                  "*I live in USA> = Map viv USA\n\n"
                                  "Nou itilize vèb TO BE pou nou bay laj nan lang anglè:\n\n"
                                  "Egzanp:\n"
                                  "*I am twenty two = mwen gen 22 zan.\n\n"
                                  "Nou pa menm bezwen di '22 YEARS OLD'. I AM 22 vle di menm bagay ak"
                                  "'*I AM 22 YEARS OLD'.\n\n"
                                  "*To have = Genyen\n\n"
                                  "*I have 2 oranges = Mwen gen 2 zoranj.\n\n"),
                          TextSpan(
                              text:
                              "Ann wè kijan nou ka poze kesyon pou nou jwenn enfòmasyon sa yo.\n\n",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                              text:
                              "Pou poze kesyon, pi souvan nap bezwen yo mo entèwogatif nan fraz la: \n"
                                  "\n*What is your name? = Koman ou rele?\n"
                                  "\n*Where do you live? = Kibo ou rete?\n"
                                  "\n*How old are you? = Ki laj ou?\n"
                                  "\n*How many brothers do you have? = Konbyen frè ou genyen?\n"
                                  "\n*What is your favorite color? = Ki koulè prefere ou?"
                                  "\nelatriye\.\.\.\n\n"
                                  "Pran yon 10 minit pou\'w pale de ou, ekri\'l nan yon papye."
                                  "Sonje toutotan ou pratike se pi bon w\'ap vin pi bon.\n\n "
                                  "*PRACTICE MAKES PERFECT.\n"),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              )),
        ));
  }
}
