import 'package:flutter/material.dart';

  class this_that extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar( title: Text("English"), backgroundColor: Colors.teal,
        ),

        body:
        SingleChildScrollView(
          child: new Container( padding: EdgeInsets.only(top: 10.0, right: 1, left: 1),
              child: new Center(
                child: new Column(
                  children: <Widget>[

                    Text(
                      "THIS, THAT, THESE, THOSE\n",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 25.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("This ak that vle di 'sa'.\n"
                        "Those ak These vle di 'sa yo'.\n\n"
                        "Men koman pou nou itilize yo.\n\n"
                        "This:\n"
                        "Nou itilize 'this' pou pale de yon bagay oubyen yon moun ki byen pre nou, yon bagay oubyen yon moun nou ka touche oubyen preske touche. Ex:\n"
                        "This is my head.\n"
                        "This is my book (si liv la tou pre a).\n\n"
                        "That:\n"
                        "Nou itilize 'that' pou pale de yon bagay oubyen yon moun ki pa two pre nou, yon bagay oubyen yon moun nou lonje dwet sou li pou pale de li. Ex:\n"
                        "That is his hat.\n"
                        "That is my friend.\n\n"
                        "These:\n"
                        "'These' se pliryel 'this', nou itilize yo menm jan, men le gen plizye bagay oubyen moun , nou itilize 'these' olye de 'this'. Ex:\n"
                        "These are my ears.\n"
                        "These are my books (plizye liv tou pre a).\n\n"
                        "'Those' se pliryel 'that', nou itilize yo menm jan, men le gen plizye bagay oubyen moun, nou itilize 'those' olye de 'that'. Ex:\n"
                        "Those are my hats.\n"
                        "Those are my friends.\n",

                      style: TextStyle(
                        fontSize: 25,

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
