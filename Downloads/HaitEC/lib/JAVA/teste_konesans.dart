import 'package:flutter/material.dart';

void main() => runApp(teste_konesans());

class teste_konesans extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<teste_konesans> {
  final tf1 = TextEditingController();
  final tf1a = TextEditingController();
  final tf1b = TextEditingController();
  final tf1c = TextEditingController();
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
              "TESTE KONESANS OU",
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
                            '1. Deklare varyab int "number" ba li valè 22, varyab String "name" ba li valè "Nixon", '
                            'varyab double "num" ba li valè 7.3 epi varyab boolean lan valè true.',
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
                        SizedBox(
                          height: 10,
                        ),
                        Theme(
                          data: ThemeData(
                            primaryColor: Colors.teal,
                          ),
                          child: TextField(
                            controller: tf1a,
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
                            controller: tf1b,
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
                            controller: tf1c,
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
                            '2. Itilize yon operasyon pou ou jwenn rès divizyon an lè\'w divize 167 pa 3, '
                            'bay varyab double "res" valè rezilta a. ',
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
                              hintText: 'Double res;',
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
                            '3. Itilize yon operasyon pou ou jwenn rès divizyon an lè\'w divize 18 pa 3, '
                            'bay varyab double "res" valè rezilta a.',
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
                              hintText: 'Double res;',
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
                            '4. Ki metòd ki kalkile sinis?"',
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          padding: EdgeInsets.only(bottom: 3.0),
                          child: Text(
                            '5. Ekri yon metòd ki retounen pi piti valè a ant 3 ak 7."',
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
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          padding: EdgeInsets.only(bottom: 3.0),
                          child: Text(
                            '7. Defini yon array ki rele "name" ki pote valè sa yo nan lòd "YES", "NO"',
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          padding: EdgeInsets.only(bottom: 3.0),
                          child: Text(
                            '8. Mete V pou VRE oubyen PV pou PA VRE! Metòd length() lan retounen kantite eleman nan yon array.',
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

  verifye(){

    String a1 = "intnumber=22;"; String a1a = 'Stringname="Nixon";'; String a1b = "doublenum=7.3;"; String a1c = "booleanvalue=true;";
    String a2 = "doubleres=167%3;"; String a3 = "doubleres=18%3;"; String a4 = "Math.sin()"; String a5 = "Math.min(7,3);";
    String a5a = "Math.min(7,3);"; String a6 = "intnumber[]={5,87,13,90,68,64};"; String a6a = "int[]number={5,87,13,90,68,64};";
    String a7 = 'String[]name={"YES","NO"};'; String a7a = 'Stringname[]={"YES","NO"};'; String a8 = "V";
    String a7_i = 'String[]name={"YES","NO"};'; String a7a_i = 'Stringname[]={"YES","NO"};';

    if (tf1.text.toString().trim().split(" ").join("") == a1) {
      tf1.text = tf1.text + " ✅";
    } else if (tf1.text.toString() == "" ||
        tf1.text.endsWith(" ✅") ||
        tf1.text.endsWith(" ❌")) {
    } else
      tf1.text = tf1.text + " ❌";

    if (tf1a.text.toString().trim().split(" ").join("") == a1a) {
      tf1a.text = tf1a.text + " ✅";
    } else if (tf1a.text.toString() == "" ||
        tf1a.text.endsWith(" ✅") ||
        tf1a.text.endsWith(" ❌")) {
    } else
      tf1a.text = tf1a.text + " ❌";

    if (tf1b.text.toString().trim().split(" ").join("") == a1b) {
      tf1b.text = tf1b.text + " ✅";
    } else if (tf1b.text.toString() == "" ||
        tf1b.text.endsWith(" ✅") ||
        tf1b.text.endsWith(" ❌")) {
    } else
      tf1b.text = tf1b.text + " ❌";

    if (tf1c.text.toString().trim().split(" ").join("") == a1c) {
      tf1c.text = tf1c.text + " ✅";
    } else if (tf1c.text.toString() == "" ||
        tf1c.text.endsWith(" ✅") ||
        tf1c.text.endsWith(" ❌")) {
    } else
      tf1c.text = tf1c.text + " ❌";

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
        tf7.text.toString().trim().split(" ").join("") == a7a ||
        tf7.text.toString().trim().split(" ").join("") == a7_i||
        tf7.text.toString().trim().split(" ").join("") == a7a_i ) {
      tf7.text = tf7.text + " ✅";
    } else if (tf7.text.toString() == "" ||
        tf7.text.endsWith(" ✅") ||
        tf7.text.endsWith(" ❌")) {
    } else
      tf7.text = tf7.text + " ❌";

    if (tf8.text.toString().trim().split(" ").join("") == a8) {
      tf8.text = tf8.text + " ✅";
    } else if (tf8.text.toString() == "" ||
        tf8.text.endsWith(" ✅") ||
        tf8.text.endsWith(" ❌")) {
    } else
      tf8.text = tf8.text + " ❌";
  }
}
