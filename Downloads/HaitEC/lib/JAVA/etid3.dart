import 'package:flutter/material.dart';

class etid3 extends StatelessWidget {
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
                      "ETID KA # 3",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.amberAccent,
                      ),
                    ),
                    Text(
                      'Pwogram sa a konvèti kòb amerikan an kòb ewo.\n\n'
                      "Analize egzanp lan epi nap kapab kreye pwogram pou konvèti nenpòt sa nou vle.\n\n"
                      "Men yon ti defi: Itilize menm modèl pwogram sa pou ou konvèti dola Kanadyen an goud Ayisyen.\n\n"
                      "Ou ka email nou rezilta a pou ou ka konnen sil bon. Klike sou bouton"
                      "\"BEZWEN ÈD\" lan nan paj akèy la si ou ta vle voye pwogram ou an pou nou gade.\n",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      'public class pratik {'
                      '\n\tpublic static void main(String[] args){\n\n'
                      'double dollar;\n'
                      'double rate = 0.88\n\n'
                      'System.out.print("Mete kantite kòb ameriken an: 100");\n\n'
                      'Scanner input = new Scanner(System.in);\n\n'
                      'dollar = input.nextDouble();\n\n'
                      'euro = dollar*rate;\n\n'
                      'System.out.print("Rezilta: " + euro);\n\n'
                      '\t}\n\n}',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              )),
        ));
  }
}
