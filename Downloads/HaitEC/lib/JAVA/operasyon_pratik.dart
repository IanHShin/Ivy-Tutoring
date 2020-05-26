import 'package:flutter/material.dart';

void main() => runApp(operasyon_pratik());

class operasyon_pratik extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<operasyon_pratik> {
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
              "EGZÈSIS SOU OPERASYON",
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
                            '1. Deklare yon varyab ki rele "year1" ki gen tip integer epi ba li valè "1996"',
                            style: TextStyle(fontSize: 18, color: Colors.teal),
                          ),
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
                            '2. Deklare yon varyab ki rele "year2" ki gen tip integer epi ba li valè "2019"',
                            style: TextStyle(fontSize: 18, color: Colors.teal),
                          ),
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
                            '3. Deklare yon varyab ki rele "age", ki pou kenbe laj yon moun.',
                            style: TextStyle(fontSize: 18, color: Colors.teal),
                          ),
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
                            '4. Itilize youn nan operasyon yo pou kalkile laj (age) moun lan si year1 se ane li fèt la, epi year2 se ane nou ye a. ',
                            style: TextStyle(fontSize: 18, color: Colors.teal),
                          ),
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
                            '5. Deklare yon varyab ki rele "sum" ki gen tip integer epi ki kalkile adisyon valè year1 ak year2.',
                            style: TextStyle(fontSize: 18, color: Colors.teal),
                          ),
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
                            '6. Afiche varyab ki rele "age" la.',
                            style: TextStyle(fontSize: 18, color: Colors.teal),
                          ),
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
                            '7. Afiche varyab ki rele "year2" la.',
                            style: TextStyle(fontSize: 18, color: Colors.teal),
                          ),
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
                            '8. Afiche varyab ki rele "sum" la.',
                            style: TextStyle(fontSize: 18, color: Colors.teal),
                          ),
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
    String a1 = "intyear1=1996;";
    String a2 = "intyear2=2019;";
    String a3 = "intage;";
    String a4 = "age=year2-year1;";
    String a5 = "intsum=year1+year2;";
    String a5a = "intsum=year2+year1;";
    String a6 = "System.out.print(age);";
    String a7 = "System.out.print(year2);";
    String a8 = "System.out.print(sum);";

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

    if (tf4.text.toString().trim().split(" ").join("") == a4) {
      tf4.text = tf4.text + " ✅";
    } else if (tf4.text.toString() == "" ||
        tf4.text.endsWith(" ✅") ||
        tf4.text.endsWith(" ❌")) {
    } else
      tf4.text = tf4.text + " ❌";

    if (tf5.text.toString().trim().split(" ").join("") == a5 ||
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

    if (tf7.text.toString().trim().split(" ").join("") == a7) {
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
