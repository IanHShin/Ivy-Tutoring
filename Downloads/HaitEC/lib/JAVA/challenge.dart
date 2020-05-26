import 'package:flutter/material.dart';

class challenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Java"),
          backgroundColor: Colors.teal,
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      "CHALLENGE",
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
                                  "Itilize Math.random() pou jenere yon nonb antye kèlkonk de 1 a 100. "
                                  "Ekri yon pwogram kap mande itilizatè pou li devine yon nonb antye de 1 a 100."
                                  "Konpare nonb antye itilizatè a ak nonb Math.random() jenere a.\n\n"
                                  "Si nonb antye itilizatè a pi gwo, afiche \'\'pi plis, eseye ankò\'\'. Si li pi piti, afiche \'\'pi piti, eseye ankò\'\'."
                                  "Si nonb yo se menm, afiche \'\'ou jwenn repons la\'\' epi sispann mande itilizatè pou eseye ankò.")
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ));
  }
}
