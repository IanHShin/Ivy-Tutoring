import 'package:flutter/material.dart';

void main() => runApp(egzesis());

class egzesis extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<egzesis> {
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
              "EGZÈSIS",
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
                      new Container(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Container(
                              padding: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                '1. Afiche 3 + 4',
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
                                '2. Afiche 5 - 2',
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Container(
                              padding: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                '3. Afiche "Hello world"',
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
                                '4. Mete V pou vre oubyen PV pou pa vre. Eske nou ka itilize \' \' oulye de " "? ',
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Container(
                              padding: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                '5. Mete V pou vre oubyen PV pou pa vre. Eske pyhton itilize \';\' pou fini yon statement?',
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
                                '6. Mete V pou vre oubyen PV pou pa vre. Pou jwenn res yon divizyon, nou itilize %.',
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
    String a1 = "print(3+4)";
    String a2 = "print(5-2)";
    String a3 = "print(\"Hello world\")";
    String a3a = "print(\“Hello Word\”)";
    String a4 = "V";
    String a5 = "PV";
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

    if (tf3.text.toString().trim().split(" ").join("") == a3 ||
        tf3.text.toString().trim().split(" ").join("") == a3a) {
      tf3.text = tf3.text + " ✅";
    } else if (tf3.text.toString() == "" ||
        tf3.text.endsWith(" ✅") ||
        tf3.text.endsWith(" ❌")) {
    } else
      tf3.text = tf3.text + " ❌";

    if (tf4.text.toString().trim().split(" ").join("") == a4) {
      tf4.text = tf4.text + " ✅";
    } else if (tf4.text.toString() == "" ||
        tf4.text.endsWith(" ✅") ||
        tf4.text.endsWith(" ❌")) {
    } else
      tf4.text = tf4.text + " ❌";

    if (tf5.text.toString().trim().split(" ").join("") == a5) {
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
