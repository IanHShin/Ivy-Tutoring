import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class diferans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);

    return Scaffold(
        appBar: AppBar(
          title: Text("English"),
          backgroundColor: Colors.teal,
        ),
        body: SingleChildScrollView(
          child: new Container(
              padding: EdgeInsets.all(8.0),
              child: new Center(
                child: new Column(
                  children: <Widget>[
                    new Text(
                      "DIFERANS OU DWE KA FÈ\n",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: ScreenUtil.instance.setSp(80.0),
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                          style: TextStyle(fontSize: 25, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                                text:
                                    "DIFERANS ANT 'Stop + verb + ing' AK 'Stop + to + verb' \n\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    "Nou itilize Stop + verb + ing pou mande yon moun sispann fè yon bagay. An jeneral, Stop + verb + ing vle di SISPANN.\n\n"
                                    "Stop talking: Sispann pale\n\n"
                                    "Stop eating: Sispann manje\n\n"
                                    "Stop doing that: Sispann fè sa\n\n"
                                    "Nou itilize Stop + to + verb pou mande yon moun sispann fè yon bagay poul ka fè yon lòt."
                                    "An jeneral, Stop + verb vle di SISPANN\.\.\. pou ou ka fè sa pito.\n\n"
                                    "Si ou tap manje, epi ou telefòn ou sone. Ou dwe sispann manje pouw ka pran apèl la."
                                    "Yon moun ka di ou. STOP TO PICK UP THE PHONE.\n\n"
                                    "If you are driving to go somewhere, somebody might say STOP TO EAT\n\n"
                                    "Men kèk egzanp.\n"
                                    "I was driving to work, I stopped to eat.\n\n"
                                    "Mwen tap kondwi poum al travay, mwen te kanpe poum manje.\n"
                                    "I stopped going to class because I was failing.\n"
                                    "M te sispann ale nan klas la, paske mwen patap pase.\n\n"),
                            TextSpan(
                                text: "DIFERANS ANT TO SAY AND TO TELL\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: "To say ak To tell vle di menm bagay\n\n"
                                    "To say  = di\n"
                                    "To tell = di\n"
                                    "To tell a story = rakonte yon istwa.\n\n"
                                    "Nou itilize \"TO SAY\" pou nou jis di yon bagay, san nou pa adrese ak pyes moun\n\n"
                                    "I said \"I LOVE MY LIFE\"\n"
                                    "Mwen di m renmen lavi mwen, men m pa adrese ak pyes moun.\n\n"
                                    "TO SAY mete plis aksan sou sa moun nan di a\n\n"
                                    "She said \"Hello.\"\n"
                                    "She said \"I love you.\"\n\n"
                                    "Nou pa bezwen yon pronon objè \"Object Pronoun\" pou nou itilize vèb TO SAY.\n\n"
                                    "Nou itilize TO SAY pou diskou dirèk.\n\n"
                                    "She said \"Do you love me?\".\n\n"
                                    "Pou poze kesyon, nou itilize TO SAY.\n\n"
                                    "Nou itilize \"TO TELL\" pou nou bay enstriksyon.\n\n"
                                    "He told me not to go.\n"
                                    "He told me \"don\'t go.\"\n"
                                    "She told me to go home.\n"
                                    "She was telling a story.\n\n"),
                            TextSpan(
                                text: "DIFERANS ANT TO DO AND TO MAKE",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: "To do ak To make vle di menm bagay.\n\n"
                                    "To do = fè.\n"
                                    "to make = fè.\n\n"
                                    "Nou itilize to do pou aksyon, obligasyon ak repetisyon.\n\n"
                                    "Pa egzanp\n"
                                    "I always do my homework = Mwen toujou fè devwa mwen.\n\n"
                                    "She does a good job = Li fè yon bon travay.\n\n"
                                    "I need to do my hair = Mwen bezwen fè cheve\'m.\n\n"
                                    "Nou itilize to make lè nou kreye oubyen fabrike yon bagay.\n\n"
                                    "I make so much money = M fè anpil lajan.\n\n"
                                    "She makes good jokes = Li fè bon blag.\n\n"
                                    "To make fun of someone = Moke you moun.\n\n"
                                    "To make a phone call = Fè yon apèl.\n\n"),
                            TextSpan(
                                text: "DIFERANS ANT LOSE AK LOOSE\n\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    "Lose: li prononse \'louz\', vle di pèdi.\n"
                                    "LOSE se yon vèb.\n\n"
                                    "You lose your cell phone.\n"
                                    "Ou pèdi telf ou.\n\n"
                                    "You lose the book.\n"
                                    "Ou pèdi liv la.\n\n"
                                    "Loose: li prononse \'lous\', vle di yon bagay ki pa sere.\n"
                                    "LOOSE se yon adjektif.\n\n"
                                    "Your pants are loose.\n"
                                    "Pantalon ou an lach.\n\n"
                                    "Egzanp:"
                                    "Your pants are not tight, they are loose.\n"
                                    "Pantalon ou an pa sere, li lach.\n\n"),
                            TextSpan(
                                text: "DIFERANS ANT ADVISE AK ADVICE\n\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    "Advise: li prononse \'edvayz\', vle di \'konseye.\'\n"
                                    "Advise se yon vèb.\n\n"
                                    "Jenny advised me to save my money.\n"
                                    "Jenny te banm konsèy poum sere lajan\'m.\n\n"
                                    "Advice: li prononse \'edvays\', vle di \'konsèy.\'\n"
                                    "Advice se yon non.\n\n"
                                    "My grandmother gave me this advice \"Always be yourself.\"\n"
                                    "Grann mwen te banm konsèy sa \"Toujou rete ou menm.\"\n\n"),

                          ]),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              )),
        ));
  }
}
