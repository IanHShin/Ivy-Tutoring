import 'package:flutter/material.dart';

class entwodiksyon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Java"),
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
                                  "Anvan ou kòmanse aprann Java, asire ke ou gen yon platfòm pou ou ka travay.\n\n"
                                  "Ou ka itilize \"Eclipse\" oubyen \"Netbeans\". Monte sou Google, tape \"download eclipse neon for free\" epi swiv etap yo.\n\n"
                                  "Klike sou \"Eclipse IDE for Java EE Developers | Eclipse Packages\" epi swiv etap yo.\n\n"
                                  "Lè eclipse fin download, enstale li, ouvri li epi ou ka komanse travay.\n\n"),
                          TextSpan(
                              text: "Men kòman pou kreye yon pwojè java: ",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                              text:
                                  "Klike File + New + Java project + \"bay projè a yon non\".\n\n"
                                  "Lè pwojè a fin kreye, wap bezwen kreye klas pou ou ka ekri pwogram yo.\n\n"),
                          TextSpan(
                              text: "Men kòman pou kreye yon klas java: ",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                              text:
                                  "Klike dwat sou pwojè a + New + Class + \"bay klas la  yon non.\n\n"),
                          TextSpan(
                              text:
                                  "Gade imaj ki anba yo pou ka konprann pi byen sa ki sot di a.\n\n"),
                        ],
                      ),
                    ),
                    Image.asset("images/demo1.JPG"),
                    Divider(height: 40, color: Colors.amberAccent),
                    Image.asset("images/demo2.JPG"),
                    Divider(height: 40, color: Colors.amberAccent),
                    Image.asset("images/demo3.JPG"),
                    Divider(height: 40, color: Colors.amberAccent),
                    Image.asset("images/demo4.JPG"),
                    Text("\n\n"),
                  ],
                ),
              )),
        ));
  }
}
