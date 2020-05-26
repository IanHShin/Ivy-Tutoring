import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

void main() => runApp(plis_pratik());

class plis_pratik extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<plis_pratik> {
  final tf1 = TextEditingController();
  final tf2 = TextEditingController();
  final tf3 = TextEditingController();
  final tf4 = TextEditingController();
  final tf5 = TextEditingController();
  final tf6 = TextEditingController();
  final tf7 = TextEditingController();
  final tf8 = TextEditingController();
  final tf9 = TextEditingController();
  final tf10 = TextEditingController();
  final tf11 = TextEditingController();
  final tf12 = TextEditingController();
  final tf13 = TextEditingController();
  final tf14 = TextEditingController();
  final tf15 = TextEditingController();
  final tf16 = TextEditingController();
  final tf17 = TextEditingController();
  final tf18 = TextEditingController();
  final tf19 = TextEditingController();
  final tf20 = TextEditingController();
  final tf21 = TextEditingController();
  final tf22 = TextEditingController();
  final tf23 = TextEditingController();
  final tf24 = TextEditingController();

  static String good1 = "";
  static String good2 = "";
  static String good3 = "";
  static String good4 = "";
  static String good5 = "";
  static String good6 = "";
  static String good7 = "";
  static String good8 = "";
  static String good9 = "";
  static String good10 = "";
  static String good11 = "";
  static String good12 = "";
  static String good13 = "";
  static String good14 = "";
  static String good15 = "";
  static String good16 = "";
  static String good17 = "";
  static String good18 = "";
  static String good19 = "";
  static String good20 = "";
  static String good21 = "";
  static String good22 = "";
  static String good23 = "";
  static String good24 = "";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Java"),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        children: <Widget>[
          new Container(
              padding: EdgeInsets.all(0),
                child: Column(
                  children: <Widget>[
                    new Container(
                      child: Text(
                        "JWÈT VOKABILÈ AK IMAJ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 20.0,
                          color: Colors.teal,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    new Card(
                    color: Colors.teal,
                    child:
                    Column(
                        children: <Widget>[
                          Text("1. Èske varayb sa a byen defini?\nint num = 5.7;"),
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                    "Wi" ,
                                    "Non" ,
                                ],

                                onSelected: (String selected) =>
                                good1 = selected.toString().trim(),
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf1,
                          ),
                        ],
                      ),
                     elevation: 200,
    ),

                    Divider(),
                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Text('2. Èske varayb sa a byen defini?\nString name = "Will";'),
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                   "Wi",
                                   "Non",
                                ],

                                onSelected: (String selected) =>
                                good2 = selected.toString().trim(),
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf2,
                          ),
                        ],
                      ),
                    ),
                    Divider(),

                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Text("3. Pou afiche tout elemen nan yon array sou menm liy lan kisa nou itilize?"),
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                   "System.out.print()",
                                   "System.out.println()",
                                ],

                                onSelected: (String selected) =>
                                good3 = selected.toString().trim(),
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf3,
                          ),
                        ],
                      ),
                    ),
                    Divider(),

                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Text("4. Pou afiche chak eleman nan yon array sou yon liy poukont li kisa nou itilize?"),
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                   "System.out.print()",
                                    "System.out.println()",
                                ],

                                onSelected: (String selected) =>
                                good4 = selected.toString().trim(),
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf4,
                          ),
                        ],
                      ),
                    ),
                    Divider(),

                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Text('5. Itilize 2 varyab nou te defini yo "num" ak "name". Kiyès nan operasyon sa yo ki posib?'),
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                   "System.out.print(name + num);" ,
                                   "System.out.print(name , num);"  ,
                                ],
                                onSelected: (String selected) =>
                                good5 = selected.toString().trim(),
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf5,
                          ),
                        ],
                      ),
                    ),
                    Divider(),

                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Text('6. Itilize 2 varyab nou te defini yo "num" ak "name". Kiyès nan operasyon sa yo ki posib?'),
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                   'System.out.print(name + "se Ayisyen");',
                                  'System.out.print(name, "se Ayisyen");',
                                ],
                                onSelected: (String selected) =>
                                good6 = selected.toString().trim(),
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf6,
                          ),
                        ],
                      ),
                    ),
                    Divider(),

                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Text('7. 2 expozan 4 ka ekri'),
                          RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                   "Math.pow(4, 2);",
                                    "Math.pow(2, 4);",
                                ],

                                onSelected: (String selected) =>
                                good7 = selected.toString().trim(),
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf7,
                          ),
                        ],
                      ),
                    ),
                    Divider(),

                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Text('8. Math.max(27, 90); ap retounen'),
                          RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                   "27",
                                   "90",
                                ],

                                onSelected: (String selected) =>
                                good8 = selected.toString().trim(),
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf8,
                          ),
                        ],
                      ),
                    ),
                    Divider(),

                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Text('9. Itilize int rando = Math.random()*100;. Ki valè rando ka genyen?'),
                          RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                   "0 a 99",
                                    "0 a 100",
                                ],

                                onSelected: (String selected) =>
                                good9 = selected.toString().trim(),
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf9,
                          ),
                        ],
                      ),
                    ),
                    Divider(),

                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Text('10. Pou ekri yon liy kòmantè, nou itilize'),
                          RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                   '\$\\',
                                    "//",
                                ],

                                onSelected: (String selected) =>
                                good10 = selected.toString().trim(),
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf10,
                          ),
                        ],
                      ),
                    ),
                    Divider(),

                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Text('11. Pou nou li ak anrejistre enfòmasyon yon itilizatè, nou itilize'),
                          RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                   "Scanner",
                                    "Loop",
                                ],

                                onSelected: (String selected) =>
                                good11 = selected.toString().trim(),
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf11,
                          ),
                        ],
                      ),
                    ),
                    Divider(),

                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Text('12. Si yon array rele "array", System.out.print(array[5]); ap afiche'),
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                   "5èm eleman" ,
                                    "6èm eleman",
                                ],

                                onSelected: (String selected) =>
                                good12 = selected.toString().trim(),
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf12,
                          ),
                        ],
                      ),
                    ),
                    Divider(),

                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Text('13. toUpperCase(), chanje tout lèt nan yon String'),
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                   "an lèt majiskil" ,
                                   "an lèt miniskil",
                                ],

                                onSelected: (String selected) =>
                                good13 = selected.toString().trim(),
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf13,
                          ),
                        ],
                      ),
                    ),
                    Divider(),

                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Text('14. toLowerCase(), chanje tout lèt nan yon String'),
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                   "an lèt majiskil",
                                   "an lèt miniskil",
                                ],

                                onSelected: (String selected) =>
                                good14 = selected.toString().trim(),
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf14,
                          ),
                        ],
                      ),
                    ),
                    Divider(),

                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Text('15. i++ se menm bagay ak'),
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                   "i = i+1" ,
                                    "i = i+2",
                                ],

                                onSelected: (String selected) =>
                                good15 = selected.toString().trim(),
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf15,
                          ),
                        ],
                      ),
                    ),
                    Divider(),

                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Text("16. Tout deklarasyon nan Java sipoze fini avèk"),
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                   ":" ,
                                   ";",
                                ],

                                onSelected: (String selected) =>
                                good16 = selected.toString().trim(),
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf16,
                          ),
                        ],
                      ),
                    ),
                    Divider(),

                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Text("17. Èske li enpòtan pou nou konnen si yon varyab ekri ak lèt majiskil oubyen miniskil nan Java?"),
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                   "Non",
                                    "Wi",
                                ],

                                onSelected: (String selected) =>
                                good17 = selected.toString().trim(),
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf17,
                          ),
                        ],
                      ),
                    ),
                    Divider(),

                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Text('18. Vrè oubyen Fo! System.out.print(array[array.length]); afiche dènye eleman nan array la.'),
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                   "Vrè" ,
                                    "Fo" ,
                                ],

                                onSelected: (String selected) =>
                                good18 = selected.toString().trim(),
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf18,
                          ),
                        ],
                      ),
                    ),
                    Divider(),

                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Text('19. Vrè oubyen Fo! System.out.print(num[num.length-1]); afiche dènye eleman nan array num lan.'),
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                   "Vrè" ,
                                    "Fo",
                                ],

                                onSelected: (String selected) =>
                                good19 = selected.toString().trim(),
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf19,
                          ),
                        ],
                      ),
                    ),
                    Divider(),

                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Text('20. While loop sa ap afiche \'\'HaitEC\'\' 50 fwa.'),
                          RadioButtonGroup(
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            activeColor: Color(0xFFFFC107),
                            labels: <String>[
                              "int count = 0." ,
                              "int count = 0;",
                            ],
                            onSelected: (String selected) =>
                            good20 = selected.toString().trim(),
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf20,
                          ),

                          RadioButtonGroup(
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            activeColor: Color(0xFFFFC107),
                            labels: <String>[
                              "while (count < 50) {",
                              "while (count = 50) {",
                            ],
                            onSelected: (String selected) =>
                            good21 = selected.toString().trim(),
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf21,
                          ),

                          RadioButtonGroup(
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            activeColor: Color(0xFFFFC107),
                            labels: <String>[
                              'System.out.print("HaitEC");',
                              'System.out.print(HaitEC);',
                            ],
                            onSelected: (String selected) =>
                            good22 = selected.toString().trim(),
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf22,
                          ),

                          RadioButtonGroup(
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            activeColor: Color(0xFFFFC107),
                            labels: <String>[
                              "count++;",
                              "count+2;",
                            ],
                            onSelected: (String selected) =>
                            good23 = selected.toString().trim(),
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf23,
                          ),

                          RadioButtonGroup(
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            activeColor: Color(0xFFFFC107),
                            labels: <String>[
                              ";",
                              "}",
                            ],
                            onSelected: (String selected) =>
                            good24 = selected.toString().trim(),
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf24,
                          ),

                        ],

                      ),
                    ),
                    Divider(),

                    Center(
                      child: SizedBox(
                        width: 200,
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
      ),
    );
  }

  verifye() {
    if (good1 == "Non") {
      tf1.text = "✅";
    } else
      tf1.text = "❌";

    if (good2 == "Wi") {
      tf2.text = "✅";
    } else
      tf2.text = "❌";

    if (good3 == "System.out.print()") {
      tf3.text = ("✅");
    } else
      tf3.text = ("❌");

    if (good4 == "System.out.println()") {
      tf4.text = ("✅");
    } else
      tf4.text = ("❌");

    if (good5 == "System.out.print(name + num);") {
      tf5.text = ("✅");
    } else
      tf5.text = ("❌");

    if (good6 == 'System.out.print(name + "se Ayisyen");') {
      tf6.text = ("✅");
    } else
      tf6.text = ("❌");

    if (good7 == "Math.pow(2, 4);") {
      tf7.text = ("✅");
    } else
      tf7.text = ("❌");

    if (good8 == "90") {
      tf8.text = ("✅");
    } else
      tf8.text = ("❌");

    if (good9 == "0 a 99") {
      tf9.text = ("✅");
    } else
      tf9.text = ("❌");

    if (good10 == "//") {
      tf10.text = ("✅");
    } else
      tf10.text = ("❌");

    if (good11 == "Scanner") {
      tf11.text = ("✅");
    } else
      tf11.text = ("❌");

    if (good12 == "6èm eleman") {
      tf12.text = ("✅");
    } else
      tf12.text = ("❌");

    if (good13 == "an lèt majiskil") {
      tf13.text = ("✅");
    } else
      tf13.text = ("❌");

    if (good14 == "an lèt miniskil") {
      tf14.text = ("✅");
    } else
      tf14.text = ("❌");

    if (good15 == "i = i+1") {
      tf15.text = ("✅");
    } else
      tf15.text = ("❌");

    if (good16 == ";") {
      tf16.text = ("✅");
    } else
      tf16.text = ("❌");

    if (good17 == "Wi") {
      tf17.text = ("✅");
    } else
      tf17.text = ("❌");

    if (good18 == "Fo") {
      tf18.text = ("✅");
    } else
      tf18.text = ("❌");

    if (good19 == "Vrè") {
      tf19.text = ("✅");
    } else
      tf19.text = ("❌");

    if (good20 == "int count = 0;") {
      tf20.text = ("✅");
    } else
      tf20.text = ("❌");

    if (good21 == "while (count < 50) {") {
      tf21.text = ("✅");
    } else
      tf21.text = ("❌");

    if (good22 == 'System.out.print("HaitEC");') {
      tf22.text = ("✅");
    } else
      tf22.text = ("❌");

    if (good23 == "count++;") {
      tf23.text = ("✅");
    } else
      tf23.text = ("❌");

    if (good24 == "}") {
      tf24.text = ("✅");
    } else
      tf24.text = ("❌");

  }
}
