import 'package:flutter/material.dart';

class definite_article extends StatelessWidget {
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
                      "Definite Article",
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
                      "The",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 30.0,
                      ),
                    ),

                    Text("1. Nou itilize 'the' pou pale de yon bagay ki byen defini, "
                        "oubyen pou pale de yon bagay ki spesifik.\n\n"
                        "Ex: You bought the book.\n\n"
                        "Ex: He eats the apple.\n\n"
                        "Ex: The world is not so big.\n\n"
                        "2. Nou itilize 'the' devan mo sengilye.\n\n"
                        "Ex: I like the pencil you gave me.\n\n"
                        "3. Nou itilize 'the' devan mo pliryèl.\n\n"
                        "Ex: The computers are working well.\n\n"
                        "3. Nou itilize 'the' devan bagay nou ka konte.\n\n"
                        "Ex: The notebook is ripped.",
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
                    SizedBox(height: 20),
                      Text("Book = Liv\n\n"
                          "Apple = Pòm\n\n"
                          "Pencil = Kreyon\n\n"
                          "Computer = Òdinatè\n\n"
                          "Notebook = Kaye\n\n"
                          "Ripped = Chire\n\n"
                          "To eat = Manje\n\n"
                          "To buy = Achte\n\n"
                          "To like = Renmen\n\n",
                        style: TextStyle(fontSize: 20)
                    ),

                    // È è ò Ò
                    SizedBox(height: 40),
                  ],
                ),
              )),
        ));
  }
}
