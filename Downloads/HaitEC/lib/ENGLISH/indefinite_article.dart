import 'package:flutter/material.dart';

class indefinite_article extends StatelessWidget {
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
                      "Indefinite Articles",
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
                      "A / An",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 30.0,
                      ),
                    ),

                    Text("1. Nou itilize 'A' oubyen 'An' pou pale de yon bagay ki pa defini, "
                        "pou pale de yon bagay pou premye oubyen pou pale de yon bagay ki pa spesifik.\n\n"
                        "Ex: I have a book\n\n"
                        "Ex: She ate an apple\n\n"
                        "2. Nou itilize 'A' oubyen 'An' sèlman devan mo sengilye.\n\n"
                        "Ex: A car\n\n"
                        "Ex: An actor\n\n"
                        "3. Nou itilize 'A' devan mo ki kòmanse pa yon konsòn.\n\n"
                        "Ex: A friend\n\n"
                        "Ex: A pen\n\n"
                        "4. Nou itilize 'A' devan mo ki kòmanse pa vwayèl 'u', paske 'u' sonnen tankou yon konsòn.\n\n"
                        "EX: A user\n\n"
                        "Ex: A university\n\n"
                        "5. Nou itilize 'An' devan mo ki kòmanse pa vwayèl.\n\n"
                        "Ex: An orange\n\n"
                        "Ex: An elephant\n\n"
                        "6. Nou itilize 'An' devan mo ki komanse pa 'h' bèbè (h muet).\n\n"
                        "Ex: An hour\n\n"
                        "Ex: An honor",
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
                    SizedBox(height: 20,),
                    Center( child:
                      Text("Book = Liv\n\n"
                          "Apple = Pòm\n\n"
                          "Car = Machin\n\n"
                          "Actor = Aktè\n\n"
                          "Friend = Zanmi\n\n"
                          "Pen = Plim\n\n"
                          "User = Itilizatè\n\n"
                          "University = Inivèsite\n\n"
                          "Orange = Zoranj\n\n"
                          "Elephant = Elefan\n\n"
                          "Hour = Èdtan\n\n"
                          "Honor = Onè",
                        style: TextStyle(fontSize: 20))
                    ),


                    // È è ò Ò
                    SizedBox(height: 40),
                  ],
                ),
              )),
        ));
  }
}
