import 'package:flutter/material.dart';

void main() => runApp(string_pratik());

class string_pratik extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<string_pratik> {
  final tf1 = TextEditingController();
  final tf2 = TextEditingController();
  final tf3 = TextEditingController();
  final tf4 = TextEditingController();
  final tf5 = TextEditingController();
  final tf6 = TextEditingController();
  final tf7 = TextEditingController();
  final tf8 = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("JAVA"),
          backgroundColor: Colors.teal,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          physics: AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          children: <Widget>[
            Text(
              "EGZÈSIS SOU STRING",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 30.0,
                color: Colors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),
            new Container(
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Itilize varyab sa yo pou fè egzèsis yo."
                    "\nint num = 18;"
                    '\nString name = "Jenny";'
                    '\nString text = "I LOVE JAVA";\n',
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                  new Container(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Column(
                      children: <Widget>[
                        new Container(
                          padding: EdgeInsets.only(bottom: 3.0),
                          child: Text(
                            '1. Itilize yon metòd pou afiche konbyen karaktè varyab "text" la genyen.',
                            style: TextStyle(fontSize: 18, color: Colors.teal),
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
                      children: <Widget>[
                        new Container(
                          padding: EdgeInsets.only(bottom: 3.0),
                          child: Text(
                            '2. Itilize yon metòd pou afiche 2èm karaktè nan varyab "name" lan.',
                            style: TextStyle(fontSize: 18, color: Colors.teal),
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
                            '3. Wi oubyen Non. Èske li enpòtan pou konnen si yon lèt majiskil oubyen miniskil nan Java?',
                            style: TextStyle(fontSize: 18, color: Colors.teal),
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
                      children: <Widget>[
                        new Container(
                          padding: EdgeInsets.only(bottom: 3.0),
                          child: Text(
                            '4. Konbine "Li rele " ak varyab "name" lan pou afiche "Li rele Jenny"',
                            style: TextStyle(fontSize: 18, color: Colors.teal),
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
                            '5. Itilize varyab "name" lan ak varyab "num" lan pou afiche "Jenny pote nimewo 18"',
                            style: TextStyle(fontSize: 18, color: Colors.teal),
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
                      children: <Widget>[
                        new Container(
                          padding: EdgeInsets.only(bottom: 3.0),
                          child: Text(
                            '6. Itilize yon metòd pou afiche varyab "text" lan nan lèt miniskil nèt.',
                            style: TextStyle(fontSize: 18, color: Colors.teal),
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
                  new Container(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Column(
                      children: <Widget>[
                        new Container(
                          padding: EdgeInsets.only(bottom: 3.0),
                          child: Text(
                            '7. Itilize yon metòd pou afiche varyab "text" lan nan lèt majiskil nèt.',
                            style: TextStyle(fontSize: 18, color: Colors.teal),
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
                            controller: tf7,
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
                            '8. Itilize varyab yo, afiche "Jenny gen 18 an".',
                            style: TextStyle(fontSize: 18, color: Colors.teal),
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
                            controller: tf8,
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
                  GestureDetector(
                    onTap: (verifye),
                    child: Container(
                      child: Center(
                          child: Text(
                        'VERIFYE',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF212121),
                        ),
                      )),
                      color: Color(0xFFFFC107),
                      margin: EdgeInsets.only(top: 10.0),
                      width: double.infinity,
                      height: 80.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  verifye() {
    String a1 = "System.out.print(text.length());";
    String a1a = "System.out.println(text.length());";
    String a2 = "System.out.print(name.charAt(1));";
    String a2a = "System.out.println(name.charAt(1));";
    String a3 = "WI";
    String a4 = "System.out.print(\"Lirele\"+name);";
    String a4a = "System.out.println(\"Lirele\"+name);";
    String a4b = "System.out.print(\“Lirele\”+name);";
    String a4c = "System.out.println(\“Lirele\”+name);";
    String a5 = "System.out.print(name+\"potenimewo\"+num);";
    String a5a = "System.out.println(name+\"potenimewo\"+num);";
    String a5b = "System.out.print(name+\“potenimewo\”+num);";
    String a5c = "System.out.println(name+\“potenimewo\”+num);";
    String a6 = "System.out.print(text.toLowerCase());";
    String a6a = "System.out.println(text.toLowerCase());";
    String a7 = "System.out.print(text.toUpperCase());";
    String a7a = "System.out.println(text.toUpperCase());";
    String a8 = "System.out.print(name+\"gen\"+num+\"an\");";
    String a8a = "System.out.println(name+\"gen\"+num+\"an\");";
    String a8b = "System.out.print(name+\“gen\”+num+\“an\”);";
    String a8c = "System.out.println(name+\“gen\”+num+\“an\”);";

    if (tf1.text.toString().trim().replaceAll("\\s", "") == a1 ||
        tf1.text.toString().trim().split(" ").join("") == a1a) {
      tf1.text = tf1.text + " ✅";
    } else if (tf1.text.toString() == "" ||
        tf1.text.endsWith(" ✅") ||
        tf1.text.endsWith(" ❌")) {
    } else
      tf1.text = tf1.text + " ❌";

    if (tf2.text.toString().trim().split(" ").join("") == a2 ||
        tf2.text.toString().trim().split(" ").join("") == a2a) {
      tf2.text = tf2.text + " ✅";
    } else if (tf2.text.toString() == "" ||
        tf2.text.endsWith(" ✅") ||
        tf2.text.endsWith(" ❌")) {
    } else
      tf2.text = tf2.text + " ❌";

    if (tf3.text.toString().trim().toUpperCase().split(" ").join("") == a3) {
      tf3.text = tf3.text + " ✅";
    } else if (tf3.text.toString() == "" ||
        tf3.text.endsWith(" ✅") ||
        tf3.text.endsWith(" ❌")) {
    } else
      tf3.text = tf3.text + " ❌";

    if (tf4.text.toString().trim().split(" ").join("") == a4 ||
        tf4.text.toString().trim().split(" ").join("") == a4a ||
        tf4.text.toString().trim().split(" ").join("") == a4b ||
        tf4.text.toString().trim().split(" ").join("") == a4c) {
      tf4.text = tf4.text + " ✅";
    } else if (tf4.text.toString() == "" ||
        tf4.text.endsWith(" ✅") ||
        tf4.text.endsWith(" ❌")) {
    } else
      tf4.text = tf4.text + " ❌";

    if (tf5.text.toString().trim().split(" ").join("") == a5 ||
        tf5.text.toString().trim().split(" ").join("") == a5a ||
        tf5.text.toString().trim().split(" ").join("") == a5b ||
        tf5.text.toString().trim().split(" ").join("") == a5c) {
      tf5.text = tf5.text + " ✅";
    } else if (tf5.text.toString() == "" ||
        tf5.text.endsWith(" ✅") ||
        tf5.text.endsWith(" ❌")) {
    } else
      tf5.text = tf5.text + " ❌";

    if (tf6.text.toString().trim().split(" ").join("") == a6 ||
        tf6.text.toString().trim().split(" ").join("") == a6a) {
      tf6.text = tf6.text + " ✅";
    } else if (tf6.text.toString() == "" ||
        tf6.text.endsWith(" ✅") ||
        tf6.text.endsWith(" ❌")) {
    } else
      tf6.text = tf6.text + " ❌";

    if (tf7.text.toString().trim().split(" ").join("") == a7 ||
        tf7.text.toString().trim().split(" ").join("") == a7a) {
      tf7.text = tf7.text + " ✅";
    } else if (tf7.text.toString() == "" ||
        tf7.text.endsWith(" ✅") ||
        tf7.text.endsWith(" ❌")) {
    } else
      tf7.text = tf7.text + " ❌";

    if (tf8.text.toString().trim().split(" ").join("") == a8 ||
        tf8.text.toString().trim().split(" ").join("") == a8a ||
        tf8.text.toString().trim().split(" ").join("") == a8b ||
        tf8.text.toString().trim().split(" ").join("") == a8c) {
      tf8.text = tf8.text + " ✅";
    } else if (tf8.text.toString() == "" ||
        tf8.text.endsWith(" ✅") ||
        tf8.text.endsWith(" ❌")) {
    } else
      tf8.text = tf8.text + " ❌";
  }
}
