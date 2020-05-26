import 'package:flutter/material.dart';

void main() => runApp(array_pratik());

class array_pratik extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<array_pratik> {
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
                  Text(
                    "Itilize Array sa pou fè egzèsis yo.\nint num [ ] = {13, 17, 98, 2, 36, 12, 41};",
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                  new Container(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          padding: EdgeInsets.only(bottom: 3.0),
                          child: Text(
                            '1. Ki non array sa?',
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
                            '2. Afiche kantite eleman ki nan array la.',
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          padding: EdgeInsets.only(bottom: 3.0),
                          child: Text(
                            '3. Afiche 3èm eleman nan array la.',
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          padding: EdgeInsets.only(bottom: 3.0),
                          child: Text(
                            '4. Ki tip array sa.',
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
                            '5. Itilize yon metòd ki ranje array la nan lòd kwasan.',
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
                            '6. Defini yon array ki rele "number" ki gen tip int ki pote valè sa yo nan lòd 5, 87, 13, 90, 68, 64.',
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
                            '7. Fin konplete egzèsis sa pou afiche tout eleman nan array la.',
                            style: TextStyle(fontSize: 18, color: Colors.teal),
                          ),
                        ),
                        TextField(
                          enabled: false,
                          decoration: new InputDecoration(
                            border: new OutlineInputBorder(
                                borderSide:
                                    new BorderSide(color: Colors.amberAccent)),
                            labelText: 'for (int i = 0; i<num.length; i++){',
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
                        TextField(
                          enabled: false,
                          decoration: new InputDecoration(
                            border: new OutlineInputBorder(
                                borderSide:
                                    new BorderSide(color: Colors.amberAccent)),
                            labelText: '}\n',
                            labelStyle: const TextStyle(color: Colors.black),
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
                            '8. Defini yon array ki rele "name" ki pote valè sa yo nan lòd "YES", "NO"',
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
    // “”

    String a1 = "num";
    String a2 = "System.out.print(num.length);";
    String a2a = "System.out.println(num.length);";
    String a3 = "System.out.print(num[2]);";
    String a3a = "System.out.println(num[2]);";
    String a4 = "int";
    String a5 = "Arrays.sort(num);";
    String a6 = "intnumber[]={5,87,13,90,68,64};";
    String a6a = "int[]number={5,87,13,90,68,64};";
    String a7 = "System.out.print(num[i]);";
    String a7a = "System.out.println(num[i]);";
    String a8 = "String[]name={\"YES\",\"NO\"};";
    String a8a = "Stringname[]={\"YES\",\"NO\"};";
    String a8_i = "String[]name={\“YES\”,\“NO\”};";
    String a8a_i = "Stringname[]={\“YES\”,\“NO\”};";

    if (tf1.text.toString().trim().split(" ").join("") == a1) {
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
        tf8.text.toString().trim().split(" ").join("") == a8_i ||
        tf8.text.toString().trim().split(" ").join("") == a8a_i) {
      tf8.text = tf8.text + " ✅";
    } else if (tf8.text.toString() == "" ||
        tf8.text.endsWith(" ✅") ||
        tf8.text.endsWith(" ❌")) {
    } else
      tf8.text = tf8.text + " ❌";
  }
}
