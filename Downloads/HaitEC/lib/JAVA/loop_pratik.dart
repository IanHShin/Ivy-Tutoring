import 'package:flutter/material.dart';

void main() => runApp(loop_pratik());

class loop_pratik extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<loop_pratik> {
  final tf1 = TextEditingController();
  final tf2 = TextEditingController();
  final tf3 = TextEditingController();
  final tf4 = TextEditingController();
  final tf5 = TextEditingController();
  final tf6 = TextEditingController();
  final tf7 = TextEditingController();
  final tf8 = TextEditingController();
  final tf1a = TextEditingController();
  final tf2a = TextEditingController();
  final tf3a = TextEditingController();
  final tf3b = TextEditingController();
  final tf3c = TextEditingController();
  final tf4a = TextEditingController();
  final tf4b = TextEditingController();
  final tf4c = TextEditingController();
  final tf5a = TextEditingController();
  final tf6a = TextEditingController();
  final tf6b = TextEditingController();
  final tf6c = TextEditingController();

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
              "EGZÈSIS SOU LOOP",
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
                  new Container(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          padding: EdgeInsets.only(bottom: 3.0),
                          child: Text(
                            '1. Kisa nou ka itilize si nou ta vle afiche yon tèks 500 fwa?',
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          padding: EdgeInsets.only(bottom: 3.0),
                          child: Text(
                            '2. Konbyen fwa \'\'HaitEC\'\' ap afiche selon loop sa a?',
                            style: TextStyle(fontSize: 18, color: Colors.teal),
                          ),
                        ),
                        Text("int  count = 0 ;\n"
                            "while  (count < 80) {\n"
                            "\t\tSystem.out.println(\'\'HaitEC\'\');\n"
                            "\tcount++;\n"
                            '}\n'),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          padding: EdgeInsets.only(bottom: 3.0),
                          child: Text(
                            '3. Fin konplete egzèsis la. Itilize while loop pou afiche \'\'JAVA\'\' 70 fwa.',
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
                        SizedBox(
                          height: 10,
                        ),
                        Theme(
                          data: ThemeData(
                            primaryColor: Colors.teal,
                          ),
                          child: TextField(
                            controller: tf3a,
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
                        SizedBox(
                          height: 10,
                        ),
                        Theme(
                          data: ThemeData(
                            primaryColor: Colors.teal,
                          ),
                          child: TextField(
                            controller: tf3b,
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
                        SizedBox(
                          height: 10,
                        ),
                        Theme(
                          data: ThemeData(
                            primaryColor: Colors.teal,
                          ),
                          child: TextField(
                            controller: tf3c,
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
                        TextField(
                          enabled: false,
                          decoration: new InputDecoration(
                            border: new OutlineInputBorder(
                                borderSide:
                                    new BorderSide(color: Colors.amberAccent)),
                            labelText: '}',
                            labelStyle: const TextStyle(color: Colors.black),
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
                            '4. Fin konplete egzèsis la. Itilize while loop pou afiche \'\'SUCCESS\'\' 73 fwa.',
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
                        SizedBox(
                          height: 10,
                        ),
                        Theme(
                          data: ThemeData(
                            primaryColor: Colors.teal,
                          ),
                          child: TextField(
                            controller: tf4a,
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
                        SizedBox(
                          height: 10,
                        ),
                        Theme(
                          data: ThemeData(
                            primaryColor: Colors.teal,
                          ),
                          child: TextField(
                            controller: tf4b,
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
                        SizedBox(
                          height: 10,
                        ),
                        Theme(
                          data: ThemeData(
                            primaryColor: Colors.teal,
                          ),
                          child: TextField(
                            controller: tf4c,
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
                        TextField(
                          enabled: false,
                          decoration: new InputDecoration(
                            border: new OutlineInputBorder(
                                borderSide:
                                    new BorderSide(color: Colors.amberAccent)),
                            labelText: '}',
                            labelStyle: const TextStyle(color: Colors.black),
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
                            '5. Fin konplete egzèsis la. Itilize for loop pou afiche \'\'HAPPY\'\' 10 fwa.',
                            style: TextStyle(fontSize: 18, color: Colors.teal),
                          ),
                        ),
                        TextField(
                          enabled: false,
                          decoration: new InputDecoration(
                            border: new OutlineInputBorder(
                                borderSide:
                                    new BorderSide(color: Colors.amberAccent)),
                            labelText: 'for (int i = 0; i<10; i++) {',
                            labelStyle: const TextStyle(color: Colors.black),
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
                        SizedBox(height: 10),
                        TextField(
                          enabled: false,
                          decoration: new InputDecoration(
                            border: new OutlineInputBorder(
                                borderSide:
                                    new BorderSide(color: Colors.amberAccent)),
                            labelText: '}',
                            labelStyle: const TextStyle(color: Colors.black),
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
                            '6. Itilize while loop pou afiche \'\'I LOVE YOU\'\' 50 fwa.',
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
                        SizedBox(
                          height: 10,
                        ),
                        Theme(
                          data: ThemeData(
                            primaryColor: Colors.teal,
                          ),
                          child: TextField(
                            controller: tf6a,
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
                        SizedBox(
                          height: 10,
                        ),
                        Theme(
                          data: ThemeData(
                            primaryColor: Colors.teal,
                          ),
                          child: TextField(
                            controller: tf6b,
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
                        SizedBox(
                          height: 10,
                        ),
                        Theme(
                          data: ThemeData(
                            primaryColor: Colors.teal,
                          ),
                          child: TextField(
                            controller: tf6c,
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
                        TextField(
                          enabled: false,
                          decoration: new InputDecoration(
                            border: new OutlineInputBorder(
                                borderSide:
                                    new BorderSide(color: Colors.amberAccent)),
                            labelText: '}',
                            labelStyle: const TextStyle(color: Colors.black),
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
    String a1 = "LOOP";
    String a2 = "80";
    String a3 = "intcount=0;";
    String a3a = "while(count<70){";
    String a3b = "System.out.print(\"JAVA\");";
    String a3b_i = "System.out.print(\“JAVA\”);";
    String a3c = "count++;";
    String a4 = "intcount=0;";
    String a4b = "System.out.print(\"SUCCESS\");";
    String a4b_i = "System.out.print(\“SUCCESS\”);";
    String a4a = "while(count<73){";
    String a4c = a3c;
    String a5 = "System.out.print(\"HAPPY\");";
    String a5_i = "System.out.print(\“HAPPY\”);";
    String a6 = a4;
    String a6a = "while(count<50){";
    String a6b = "System.out.print(\"ILOVEYOU\");";
    String a6b_i = "System.out.print(\“ILOVEYOU\”);";
    String a6c = a3c;



    if (tf1.text.toString().toUpperCase().trim().split(" ").join("") == a1) {
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

    if (tf3.text.toString().trim().split(" ").join("") == a3 ) {
      tf3.text = tf3.text + " ✅";
    } else if (tf3.text.toString() == "" ||
        tf3.text.endsWith(" ✅") ||
        tf3.text.endsWith(" ❌")) {
    } else
      tf3.text = tf3.text + " ❌";

    if (tf3a.text.toString().trim().split(" ").join("") == a3a) {
      tf3a.text = tf3a.text + " ✅";
    } else if (tf3a.text.toString() == "" ||
        tf3a.text.endsWith(" ✅") ||
        tf3a.text.endsWith(" ❌")) {
    } else
      tf3a.text = tf3a.text + " ❌";

    if (tf3b.text.toString().trim().split(" ").join("") == a3b||
        tf3b.text.toString().trim().split(" ").join("") == a3b_i) {
      tf3b.text = tf3b.text + " ✅";
    } else if (tf3b.text.toString() == "" ||
        tf3b.text.endsWith(" ✅") ||
        tf3b.text.endsWith(" ❌")) {
    } else
      tf3b.text = tf3b.text + " ❌";

    if (tf3c.text.toString().trim().split(" ").join("") == a3c) {
      tf3c.text = tf3c.text + " ✅";
    } else if (tf3c.text.toString() == "" ||
        tf3c.text.endsWith(" ✅") ||
        tf3c.text.endsWith(" ❌")) {
    } else
      tf3c.text = tf3c.text + " ❌";

    if (tf4.text.toString().trim().split(" ").join("") == a4) {
      tf4.text = tf4.text + " ✅";
    } else if (tf4.text.toString() == "" ||
        tf4.text.endsWith(" ✅") ||
        tf4.text.endsWith(" ❌")) {
    } else
      tf4.text = tf4.text + " ❌";

    if (tf4a.text.toString().trim().split(" ").join("") == a4a) {
      tf4a.text = tf4a.text + " ✅";
    } else if (tf4a.text.toString() == "" ||
        tf4a.text.endsWith(" ✅") ||
        tf4a.text.endsWith(" ❌")) {
    } else
      tf4a.text = tf4a.text + " ❌";

    if (tf4b.text.toString().trim().split(" ").join("") == a4b ||
        tf4b.text.toString().trim().split(" ").join("") == a4b_i) {
      tf4b.text = tf4b.text + " ✅";
    } else if (tf4b.text.toString() == "" ||
        tf4b.text.endsWith(" ✅") ||
        tf4b.text.endsWith(" ❌")) {
    } else
      tf4b.text = tf4b.text + " ❌";

    if (tf4c.text.toString().trim().split(" ").join("") == a4c) {
      tf4c.text = tf4c.text + " ✅";
    } else if (tf4c.text.toString() == "" ||
        tf4c.text.endsWith(" ✅") ||
        tf4c.text.endsWith(" ❌")) {
    } else
      tf4c.text = tf4c.text + " ❌";

    if (tf5.text.toString().trim().split(" ").join("") == a5 ||
        tf5.text.toString().trim().split(" ").join("") == a5_i) {
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

    if (tf6a.text.toString().trim().split(" ").join("") == a6a) {
      tf6a.text = tf6a.text + " ✅";
    } else if (tf6a.text.toString() == "" ||
        tf6a.text.endsWith(" ✅") ||
        tf6a.text.endsWith(" ❌")) {
    } else
      tf6a.text = tf6a.text + " ❌";

    if (tf6b.text.toString().trim().split(" ").join("") == a6b ||
        tf6b.text.toString().trim().split(" ").join("") == a6b_i) {
      tf6b.text = tf6b.text + " ✅";
    } else if (tf6b.text.toString() == "" ||
        tf6b.text.endsWith(" ✅") ||
        tf6b.text.endsWith(" ❌")) {
    } else
      tf6b.text = tf6b.text + " ❌";

    if (tf6c.text.toString().trim().split(" ").join("") == a6c) {
      tf6c.text = tf6c.text + " ✅";
    } else if (tf6c.text.toString() == "" ||
        tf6c.text.endsWith(" ✅") ||
        tf6c.text.endsWith(" ❌")) {
    } else
      tf6c.text = tf6c.text + " ❌";


  }
}
