import 'package:flutter/material.dart';

class prepositions extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar( title: Text("English"), backgroundColor: Colors.teal,
        ),

        body:
        SingleChildScrollView(
          child: new Container( padding: EdgeInsets.only(top: 10.0, right: 5, left: 5),
              child: new Center(
                child: new Column(
                  children: <Widget>[

                    Text(
                      "IN - AT - ON\n",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 30.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "IN:\n"
                          "a) Nou itilize 'IN' pou nou pale de yon pati nan jounen an ki pa spesifik:\n\n"
                          "In the morning \nIn the afternoon \nIn the evening, men yo di 'At night'.\n\n"
                          "b) Nou itilize 'IN' pou pale de ane, mwa, sezon eksetera:\n\n"
                          "In 5 years \nIn the summer \nIn March \nIn August\n\n"
                          "c) Nou itilize 'IN' le nou vle di 'anndan' oubyen 'nan':\n\n"
                          "In the house\n"
                          "In the hospital\n"
                          "In the living room\n"
                          "In the box\n\n"
                          "d) Nou itilize 'IN' pou peyi, vil, eta, etc:\n\n"
                          "In Haiti\n"
                          "In Port-au-prince\n"
                          "In Saint Marc\n\n"
                      "AT:\n"
                          "a) Nou itilize 'AT' pou nou pale de yon pati nan jounen an ki spesifik:\n\n"
                          "AT 2:00 \nAt the weekend \nAt the moment \nAt night\n\n"
                          "b) Nou itilize 'AT' pou nou pale de yon lokasyon ki spesifik:\n\n"
                          "AT work \nAt school \nAt my house \nAt 407 Mandela Street\n\n"
                      "On:\n"
                          "a) Nou itilize 'On' devan jou nan semèn nan ak dat:\n\n"
                          "On Mondays\n"
                          "On Tuesday\n"
                          "On March 25th 1998\n\n"
                          "b) Nou itilize 'On' devan katye(san nimewo kay la), il, rivyè, plaj ect:\n\n"
                          "On the beach\n"
                          "On Asbury Avenue\n",
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
