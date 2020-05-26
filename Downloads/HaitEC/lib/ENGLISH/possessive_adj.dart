import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class possessive_adj extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}
class _myAppState extends State<possessive_adj> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    return
      Scaffold(
        appBar: AppBar(
          title: Text("English"),
          backgroundColor: Colors.teal,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          physics: AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          children: <Widget>[
            Center(
              child: Text(
                "POSSESSIVE ADJECTIVES/PRONOUNS",
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 17.0,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container( margin: EdgeInsets.all(5),
                    child:
                    Column( mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text("Possessive Adjectives",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                              Text(" My\n Your\n His\n Her\n Its\n Our\n Your\n Their\n",
                              style: TextStyle(fontSize: 20),),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text("Possessive Pronouns",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                            Text(" Mine\n Yours\n His\n Hers\n Its\n Ours\n Yours\n Theirs\n",
                              style: TextStyle(fontSize: 20),),
                          ],
                        ),
                        Text("Examples:\n\n"
                            "Possessive Adjectives",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                        Text("*My name is Willy.\n"
                            "-Mwen rele Willy.\n\n"
                            "*Your book is new.\n"
                            "-Liv ou a nèf.\n\n"
                            "*His car is expensive.\n"
                            "-Machin li an chè.\n\n"
                            "*My car is new, its engine is powerful.\n"
                            "-Machin mwen an nèf, motè a puisan.\n\n"
                            "*This is our house.\n"
                            "-Sa se kay pa nou.\n\n"
                            "That is their computer.\n"
                            "Sa a se òdinatè pa yo.\n\n",
                          style: TextStyle(fontSize: 20),),
                        Text("Possessive Pronouns",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                        Text("*This book is mine.\n"
                            "-Sa a se liv mwen.\n\n"
                            "*That car is yours.\n"
                            "-Machin sa a se pou ou.\n\n"
                            "*The hat is his.\n"
                            "-chapo a se pou li.\n\n"
                            "*This house is ours.\n"
                            "-Kay sa a se pa nou.\n\n"
                            "That computer is theirs .\n"
                            "Òdinatè sa a se pa yo.\n\n",
                          style: TextStyle(fontSize: 20),),
                      ],
                    ),
                ),
            SizedBox(height: 50),
          ],
        ),
      );
  }
}
