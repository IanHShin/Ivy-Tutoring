import 'package:flutter/material.dart';

class ekspresyon_pwoveb extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar( title: Text("English"), backgroundColor: Colors.teal,
          ),


        body:
        SingleChildScrollView(
          child: new Container( padding: EdgeInsets.only(top: 15.0, right: 5, left: 5),
              child: new Center(
                child: new Column(
                  children: <Widget>[

                    Text(
                      "EKSPRESYON AK PWOVÈB\n",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 30.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    RichText(textAlign: TextAlign.start, text: TextSpan(style: TextStyle(fontSize: 25, color: Colors.black), children: <TextSpan>[
                      TextSpan(text:
                          "* A picture is worth 1000 words. = Yon imaj vo 1000 mo.\n\n"
                          "* Actions speak louder than words. =  Aksyon pale pi fò pase pawòl.\n\n"
                          "* Hang in there! = Pa bay vag!\n\n"
                          "* Don\'t give up! = Pa bay vag!\n\n"
                          "* Hit the sack! = Al dòmi!\n\n"
                          "* You miss the boat = Ou anreta\n\n"
                          "* No pain, no gain. = Fòk ou soufri, pou\'w reyisi.\n\n"
                          "* So far so good. = Trè byen jiska kounya.\n\n"
                          "* That\'s my last straw. = M pèdi pasyans.\n\n"
                          "* It cost an arm and a leg. = Li chè anpil.\n\n"
                          "* Don\'t cry over spilt milk. = Pa kriye pou sa ou paka chanje.\n\n"
                          "* It\'s a piece of cake. = Li fasil.\n\n"
                          "* It\'s raining cats and dogs = Lapli a ap tonbe byen fò.\n\n"
                          "* Better be safe than sorry = Evite miyò pase mande padon.\n\n"
                          "* Once a drinker, always a drinker = Zonbi goute sèl li pa mande rete.\n\n"
                          "* Like father, like son = Joumoun pa donnen kalbas.\n\n"
                          "* I have no clue = Mwen pa konnen.\n\n"
                          "* I am not really sure =  M pa fin sure.\n\n"
                          "* I have to hit the books. = Fòk mwen etidye.\n\n"
                          "* To twist someone\'s arm. =  Konvenk yon moun.\n\n"
                          "* to stab someone in the back =  Trayi yon moun.\n\n"
                          "* Can you swim? = Ou konn naje?\n\n"
                          "* Can you swim? = Ou prè?\n\n"
                          "* Are you ready? = Ou prè?\n\n"
                          "* Call it a day. = Sispann travay sou yon bagay.\n\n"
                          "* I will finish with this, and I will call it a day. = Map fin fè sa, epi m fini.\n\n"
                          "* Give someone the cold shoulder. = Inyore yon moun\n\n"
                          "* She gave him the cold shoulder. = Li pat okipe\'l\n\n"
                          "* The elephant in the room. = Pwoblèm moun ap chèche evite a.\n\n"
                          "* You can\'t have your cake and eat it too. = Ou paka gen tout bagay.\n\n"
                          "* Don\'t judge a book by it\'s cover. = Pa gade moun sou aparans.\n\n"
                          "* It takes two to tango. = Yon sèl moun paka responsab.\n\n"
                          "* Run like the wind. = Kouri byen vit.\n\n"),

                          TextSpan(text: "* Some Quesstions = Kek kesyon\n\n", style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "* How can I say \.\.\. in English? = Kòman mwen ka di \.\.\. an Anglè?\n\n"
                          "* What is the difference between \.\.\. and \.\.\.? = Ki diferans ki genyen ant \.\.\. ak \.\.\.?\n\n"
                          "* Which one do you like better, this or that? = Kisa ou pi renmen, sa a oubyen sa a?\n\n"
                          "* What does\.\.\. mean? = Kisa\.\.\. vle di?\n\n"
                          "* What team are you waving for? = Pou ki ekip wap chofe?\n\n"),

                    ]
                    ),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              )
          ),
        )
    );
  }
}
