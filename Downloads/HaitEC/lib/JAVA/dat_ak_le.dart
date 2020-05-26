import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(dat_ak_le());

class dat_ak_le extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<dat_ak_le> {
  Widget build(BuildContext context) {
    String am_pm = "";
    if (DateTime.now().hour < 12) {
      am_pm = " AM";
    } else {
      am_pm = " PM";
    }

    String date = new DateFormat('E MMM d').format(DateTime.now());

    String time = new DateFormat('HH:mm:ss').format(DateTime.now()) + am_pm;

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
              "DAT AK LE",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            new Container(
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Column(
                      children: <Widget>[
                        new Container(
                          padding: EdgeInsets.only(bottom: 3.0),
                          child: Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            height: 50,
                            color: Colors.amberAccent,
                            child: Text(
                              date,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: 50,
                          color: Colors.amberAccent,
                          child: Text(
                            time,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Nan Java nou gen posiblite pou nou afiche lè ak dat san pèdi anpil tan. Paske Java ka jenere yo poukont li ak metòd Date() la.\n\n"
                    "Pou nou jenere dat jodya ak tout lè , men sa nap fè:\n\n"
                    "1. Enpòte import java.util.Date;\n\n"
                    "2. Kreye yon enstans de klas Date; Date today = new Date(); Sa rele instantiation.\n\n"
                    "3. Konvèti dat la an String. today.toString();\n\n"
                    "4. Afiche dat la ak: System.out.println(date);\n\n"
                    "Nou te ka konvèti epi afiche dat la ak yon sèl liy kòd: System.out.println(date.toString());\n\n"
                    "System.out.println(date.toString()); konbine etap 3 a ak etap 4 la.\n\n"
                    "Output la ap parèt konsa: \"Wed Feb 20 12:19:02 EST 2019\"\n\n"
                    "Nou ka itilize metòd subtring pou koupe pati nou bezwen an nan dat ki afiche a.\n\n"
                    "Ann gade kijan sa fèt nan imaj la.",
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(height: 15),
                  Image.asset('images/datakle.PNG')
                ],
              ),
            ),
          ],
        ));
  }
}
