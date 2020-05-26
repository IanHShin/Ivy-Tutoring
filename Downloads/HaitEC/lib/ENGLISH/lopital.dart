import 'package:flutter/material.dart';

class lopital extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                      "NAN YON LOPITAL\n",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 30.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          style: TextStyle(fontSize: 25, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                                text: "*Health Insurance = \n"
                                    "Asirans Sante\n\n"
                                    "* Medical Emergency = \n"
                                    "Emèjennsi medikal\n\n"
                                    "* Emergency Room = \n"
                                    "Chanm Emèjennsi\n\n"
                                    "* Stomachache = \n"
                                    "Vant fè mal\n\n"
                                    "* Toothache = \n"
                                    "Dan fè mal\n\n"
                                    "* To be on the mend = \n"
                                    "Santi\'w ap fè mye\n\n"
                                    "* I am getting better = \n"
                                    "M\'ap fè mye\n\n"
                                    "* Out cold = \n"
                                    "Pèdi konesans, Enkonsyan\n\n"
                                    "* Splitting headache = \n"
                                    "Move tèt fè mal\n\n"
                                    "* He has a terrible headache = \n"
                                    "Li gen yon move tèt fè mal\n\n"
                                    "* To run some tests = \n"
                                    "Tcheke sante you moun\n\n"
                                    "* To check your health = \n"
                                    "Tcheke sante\'w\n\n"
                                    "* To feel under the weather = \n"
                                    "Santi\'w yon ti jan malad\n\n"
                                    "* To feel a bit ill in general = \n"
                                    "Santi\'w yon ti jan malad\n\n"
                                    "* Abnormal = \n"
                                    "Yon bagay ki pa nomal pou kò nou\n\n"
                                    "* Not normal for the human body = \n"
                                    "Yon bagay ki pa nòmal pou kò nou\n\n"
                                    "* Ache = \n"
                                    "Yon doulè ki pa vle pase\n\n"
                                    "* Pain that won\'t go away = \n"
                                    "Yon doulè ki pa vle pase\n\n"
                                    "* Ambulance = \n"
                                    "Se machin emèjennsi ki mennen moun lopital byen vit\n\n"
                                    "* Emergency vehicle that rushes people to a hospital = \n"
                                    "Machin emèjennsi ki mennen moun lopital byen vit\n\n"
                                    "* Anaemia = \n"
                                    "Anemi\n\n"
                                    "* Anaemia occurs when the body doesn\'t have enough red blood cells = \n"
                                    "Nou jwenn anemi lè kò a manke globil wouj\n\n"
                                    "* Blood donor = \n"
                                    "You moun ki bay san li\n\n"
                                    "* Blood donors have to answer questions about their medical history = \n"
                                    "Moun ki bay san dwe reponn kesyn sou zafè istwa medikal yo\n\n"
                                    "* Blood pressure = \n"
                                    "Presyon san\n\n"
                                    "* Blood pressure = \n"
                                    "Vitès san an kouri nan kò a\n\n"
                                    "* High blood pressure puts you at risk of having a heart attack = \n"
                                    "Presyon san ki wo ka fè\'w fè kè\n\n"
                                    "* Dehydrated = \n"
                                    "Dezidrate\n\n"
                                    "* Dehydrated = \n"
                                    "Lè yon moun pa gen ase dlo nan kò li\n\n"
                                    "* It is easy to become dehydrated in this hot weather = \n"
                                    "Li fasil pou\'w dezidrate nan chalè sa\n\n"
                                    "* Disease = \n"
                                    "Maladi\n\n"
                                    "* It is important to know which number to dial in case of an emergency = \n"
                                    "Li enpòtan pou nou konnen ki nimewo pou nou rele lè gen emèjennsi\n\n"
                                    "* Fever = \n"
                                    "Fyèv\n\n"
                                    "* Heart attack = \n"
                                    "Kriz kadyak\n\n"
                                    "* People who smoke are at greater risk of having a heart attack = \n"
                                    "Moun ki fimen pi fasil pou fè kriz kadyak\n\n"
                                    "* HIV = \n"
                                    "Viris ki bay SIDA\n\n"
                                    "* The nurse will demonstrate how to bathe an infant = \n"
                                    "Enfimyè a pral montre kòman pou nou benyen timoun\n\n"),
                          ]),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              )),
        ));
  }
}
