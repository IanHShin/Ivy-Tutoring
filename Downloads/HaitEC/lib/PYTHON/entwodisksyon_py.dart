import 'package:flutter/material.dart';

void main() => runApp(entwodiksyon());

class entwodiksyon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Python"),
          backgroundColor: Colors.teal,
        ),
        body: SingleChildScrollView(
          child: new Container(
              padding: EdgeInsets.all(8.0),
              child: new Center(
                child: new Column(
                  children: <Widget>[
                    Text(
                      "Entwodiksyon",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 30.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 25, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                              "Menm jan ak Java, anvan ou kòmanse aprann Python, asire ke ou gen yon platfòm pou ou ka travay.\n\n"
                                  "Ou ka itilize \"Pycharm\" ak anpil lot anko. Monte sou Google, tape \"pycharm free\" epi swiv etap yo."
                                  "Pa neglije mande yon fanmi oubyen zanmi'w koman kisa ki gratis yo itilize pou kode Python!\n\n"),

                          TextSpan(
                              text:
                              "Depi\'w fin gen yon anvironman pou'w kode, ou met pase nan pati ki ap vini an!\n\n"),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ));
  }
}
