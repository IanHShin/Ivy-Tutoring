import 'package:flutter/material.dart';
import 'package:first_app/MAIN/english.dart';

class question_words extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar( title: Text("English"), backgroundColor: Colors.teal,
        ),
        body:
        SingleChildScrollView(
          child: new Container( padding: EdgeInsets.only(top: 10.0, right: 2, left: 5),
              child: new Container(
                child: new Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Text(
                      "QUESTION WORDS\n",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 25.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    Text("What:",
                      style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold
                      ),),
                      Text("Nou itilize 'what' pou poze kesyon de obje/bagay.\n\n"
                          "-What is that?"
                          "\nKisa sa ye?\n",
                      style: TextStyle( fontSize: 20,
                      ),),

                    Text("Who:",
                      style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold
                      ),),
                    Text("Nou itilize 'who' pou poze kesyon de moun.\n\n"
                        "-Who is he?"
                        "\nKi moun li ye??\n",
                      style: TextStyle( fontSize: 20,
                      ),),

                    Text("Where:",
                      style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold
                      ),),
                    Text("Nou itilize 'where' pou poze kesyon de plas/lokal.\n\n"
                        "-Where are you going?"
                        "\nKibo ou prale?\n",
                      style: TextStyle( fontSize: 20,
                      ),),

                    Text("When:",
                      style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold
                      ),),
                    Text("Nou itilize 'when' pou poze kesyon de le.\n\n"
                        "-When is your birthday?"
                        "\nKile fet ou?\n",
                      style: TextStyle( fontSize: 20,
                      ),),

                    Text("Which:",
                      style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold
                      ),),
                    Text("Nou itilize 'which' pou poze kesyon de chwa.\n\n"
                        "-Which on does she like?"
                        "\nKiyes ladan yo li renmen?\n",
                      style: TextStyle( fontSize: 20,
                      ),),

                    Text("Why:",
                      style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold
                      ),),
                    Text("Nou itilize 'why' pou poze kesyon pou jwenn yon rezon.\n\n"
                        "-Why is Junior sad?"
                        "\nPoukisa Junior tris?\n",
                      style: TextStyle( fontSize: 20,
                      ),),

                    Text("Whose:",
                      style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold
                      ),),
                    Text("Nou itilize 'whose' pou poze kesyon 'Pou kiyes'.\n\n"
                        "-Whose pen is this?"
                        "\nPlim ki moun sa ye?\n",
                      style: TextStyle( fontSize: 20,
                      ),),

                    Text("How much:",
                      style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold
                      ),),
                    Text("Nou itilize 'how much' pou poze kesyon de kantite.\n\n"
                        "-How much water do I need?"
                        "\nKi kantite dlo mwen bezwen?\n",
                      style: TextStyle( fontSize: 20,
                      ),),

                    Text("How many:",
                      style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold
                      ),),
                    Text("Nou itilize 'how many' pou poze kesyon de nimewo.\n\n"
                        "-How many pencils do you have?"
                        "\nKonbyen kreyon ou genyen\n",
                      style: TextStyle( fontSize: 20,
                      ),),

                    Text("How often:",
                      style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold
                      ),),
                    Text("Nou itilize 'how often' pou poze kesyon de frekans (chak kile yon).\n\n"
                        "-How often do you go to the movies?"
                        "\nChak kile w ale nan sinema?\n",
                      style: TextStyle( fontSize: 20,
                      ),),

                    Text("How long:",
                      style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold
                      ),),
                    Text("Nou itilize 'how long' pou poze kesyon de dire.\n\n"
                        "-How long does it take?"
                        "\nKonbyen tan sa pran?\n",
                      style: TextStyle( fontSize: 20,
                      ),),

                    Text("How old:",
                      style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold
                      ),),
                    Text("Nou itilize 'how old' pou poze kesyon pou jwenn laj.\n\n"
                        "-How old are you?"
                        "\nKi laj ou genyen?\n",
                      style: TextStyle( fontSize: 20,
                      ),),
                    SizedBox(height: 40),
                  ],
                ),
              )
          ),
        )
    );
  }
}
