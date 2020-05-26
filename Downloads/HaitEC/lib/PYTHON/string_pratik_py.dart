import 'package:first_app/JAVA/string_pratik.dart';
import 'package:flutter/material.dart';

void main() => runApp(string_pratik_py());

class string_pratik_py extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<string_pratik_py> {
  final tf1 = TextEditingController();
  final tf2 = TextEditingController();
  final tf3 = TextEditingController();
  final tf4 = TextEditingController();
  final tf5 = TextEditingController();
  final tf6 = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Python"),
          backgroundColor: Colors.teal,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          physics: AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Text(
              "EGZÈSIS SOU STRINGS",
              textAlign: TextAlign.center,
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
            new Container(
                padding: EdgeInsets.all(5.0),
                child: new Center(
                  child: Column(
                    children: <Widget>[
                      Text('Itilize varyab sa yo pou fè egzèsis yo.\n name = "Jenny " \n text = "Loves JAVA" ',
                      style: TextStyle(fontSize: 15),),
                      SizedBox(
                        height: 10,
                      ),
                      new Container(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Column(
                          children: <Widget>[
                            new Container(
                              padding: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                '1. Afiche konbyen karaktè varyab "text" la genyen.',
                                style:
                                TextStyle(fontSize: 18, color: Colors.teal),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Theme(
                              data: ThemeData(
                                primaryColor: Colors.teal,
                              ),
                              child: TextField(
                                controller: tf1,
                                autofocus: true,
                                decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                    borderSide: new BorderSide(
                                      color: Colors.amberAccent,
                                    ),
                                  ),
                                  labelText: 'Repons ou a',
                                  labelStyle: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Container(
                              padding: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                '2. Afiche 2èm karaktè nan varyab "name" lan.',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.teal,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Theme(
                              data: ThemeData(
                                primaryColor: Colors.teal,
                              ),
                              child: TextField(
                                controller: tf2,
                                autofocus: true,
                                decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                    borderSide: new BorderSide(
                                      color: Colors.amberAccent,
                                    ),
                                  ),
                                  labelText: 'Repons ou a',
                                  labelStyle: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Column(
                          children: <Widget>[
                            new Container(
                              padding: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                '3. Wi oubyen Non. Metòd lower() a retounen tout lèt nan yon String an miniskil.',
                                style:
                                TextStyle(fontSize: 18, color: Colors.teal),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Theme(
                              data: ThemeData(
                                primaryColor: Colors.teal,
                              ),
                              child: TextField(
                                controller: tf3,
                                autofocus: true,
                                decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                    borderSide: new BorderSide(
                                      color: Colors.amberAccent,
                                    ),
                                  ),
                                  labelText: 'Repons ou a',
                                  labelStyle: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Container(
                              padding: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                '4. Afiche "V" sèlman nan varyab text la.',
                                style:
                                TextStyle(fontSize: 18, color: Colors.teal),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Theme(
                              data: ThemeData(
                                primaryColor: Colors.teal,
                              ),
                              child: TextField(
                                controller: tf4,
                                autofocus: true,
                                decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                    borderSide: new BorderSide(
                                      color: Colors.amberAccent,
                                    ),
                                  ),
                                  labelText: 'Repons ou a',
                                  labelStyle: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Column(
                          children: <Widget>[
                            new Container(
                              padding: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                '5. Itilize varyab yo pou pou afiche "Jenny Loves JAVA".',
                                style:
                                TextStyle(fontSize: 18, color: Colors.teal),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Theme(
                              data: ThemeData(
                                primaryColor: Colors.teal,
                              ),
                              child: TextField(
                                controller: tf5,
                                autofocus: true,
                                decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                    borderSide: new BorderSide(
                                      color: Colors.amberAccent,
                                    ),
                                  ),
                                  labelText: 'Repons ou a',
                                  labelStyle: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Container(
                              padding: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                '6. Mete V pou vre oubyen PV pou pa vre. Eske nou ka itilize varyab sa a byen deklare? \n\n'
                                    'age = "I love HaitEC"',
                                style:
                                TextStyle(fontSize: 18, color: Colors.teal),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Theme(
                              data: ThemeData(
                                primaryColor: Colors.teal,
                              ),
                              child: TextField(
                                controller: tf6,
                                autofocus: true,
                                decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                    borderSide: new BorderSide(
                                      color: Colors.amberAccent,
                                    ),
                                  ),
                                  labelText: 'Repons ou a',
                                  labelStyle: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),


                      Container(
                        child: FlatButton(
                          onPressed: (verifye),
                          child: Text('VERIFYE',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF212121),
                              )),
                        ),
                        color: Color(0xFFFFC107),
                        margin: EdgeInsets.only(top: 10.0),
                        width: double.infinity,
                        height: 80.0,
                      ),

                    ],
                  ),
                )),
          ],
        ));
  }

  verifye() {
    String a1 = "print(len(text))";
    String a2 = "print(name[1])";
    String a3 = "Wi";
    String a4 = "print(text[8])";
    String a5 = "print(\"name + text\")";
    String a5a = "print(\“name + text”);";
    String a6 = "V";

    if (tf1.text.toString().trim().split(" ").join("") == a1) {
      tf1.text = tf1.text + " ✅";
    } else if (tf1.text.toString() == "" ||
        tf1.text.endsWith(" ✅") ||
        tf1.text.endsWith(" ❌")) {
    } else
      tf1.text = tf1.text + " ❌";

    if (tf2.text.toString().trim().split(" ").join("") == a2) {
      tf2.text = tf2.text + " ✅";
    } else if (tf2.text.toString() == "" ||
        tf2.text.endsWith(" ✅") ||
        tf2.text.endsWith(" ❌")) {
    } else
      tf2.text = tf2.text + " ❌";

    if (tf3.text.toString().trim().split(" ").join("") == a3) {
      tf3.text = tf3.text + " ✅";
    } else if (tf3.text.toString() == "" ||
        tf3.text.endsWith(" ✅") ||
        tf3.text.endsWith(" ❌")) {
    } else
      tf3.text = tf3.text + " ❌";

    if (tf4.text.toString().trim().split(" ").join("") == a4 ) {
      tf4.text = tf4.text + " ✅";
    } else if (tf4.text.toString() == "" ||
        tf4.text.endsWith(" ✅") ||
        tf4.text.endsWith(" ❌")) {
    } else
      tf4.text = tf4.text + " ❌";

    if (tf5.text.toString().trim().split(" ").join("") == a5||
        tf5.text.toString().trim().split(" ").join("") == a5a) {
      tf5.text = tf5.text + " ✅";
    } else if (tf5.text.toString() == "" ||
        tf5.text.endsWith(" ✅") ||
        tf5.text.endsWith(" ❌")) {
    } else
      tf5.text = tf5.text + " ❌";

    if (tf6.text.toString().trim().split(" ").join("") == a6) {
      tf6.text = tf6.text + " ✅";
    } else if (tf6.text.toString() == "" ||
        tf6.text.endsWith(" ✅") ||
        tf6.text.endsWith(" ❌")) {
    } else
      tf6.text = tf6.text + " ❌";

  }
}
