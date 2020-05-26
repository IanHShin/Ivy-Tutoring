import 'package:flutter/material.dart';

class etid1 extends StatelessWidget {
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
                      "KONVÈTISYON",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 30.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.asset('images/etid1.PNG'),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 25, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  "Nan pwogram sa a, nou konvèti degre fahrenheit an degre celsius.\n\n"
                                  "Ann analize kòman nou fè sa:\n\n"
                                  "1. import java.util.Scanner; liy sa enpòte Scanner ki genyen nan java a. Nou itilize Scanner a pou nou li \"input\" itilizatè.\n\n"
                                  "3. Public class konvèti { se non klass Java a.\n\n"
                                  "5. Public static void main(String[]args{ se la nap ekri tout pwogram lan.\n\n"
                                  "8. Liy 8 deklare varyab nap bezwen yo.\n\n"
                                  "9. Scanner input = new Scanner(system.in); Scanner a pare pou li skane ak anrejiste sa itilizatè a mete.\n\n"
                                  "10. Liy 10 la mande itilizatè a enfòmasyon.\n\n"
                                  "11. Liy 11 la pran valè itilizatè a mete a epi li pase\'l bay fah. Sa vle di fah = nenpot sa itilizatè a te mete a.\n\n"
                                  "14. Liy 14 kalkile rezilta a gras ak yon fòmil.\n\n"
                                  "16. Liy 16 afiche rezilta a.\n\n"),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ));
  }
}
