import 'package:flutter/material.dart';

class varyab extends StatelessWidget {
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
                child: Column(children: <Widget>[
                  Text(
                    "Varyab",
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 30.0,
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Nou itilize varyab pou kenbe yon valè ke nou pral itilize pita nan pwogram nap ekri a."
                    "Yo rele yo varyab paske valè yo ka chanje.\n\n"
                    "Men kòman yo deklare yon varyab:\n\n"
                    "tipDone nonVaryab;\n\n"
                    "egzanp:\n"
                    "int number;\n\n"
                    "Nou ka deklare varyab la san nou pa ba li valè\n\n"
                    "int number;\n\n"
                    "apre sa nou ka ba li valè nou vle.\n\n"
                    "number = 0;\n\n"
                    "Nou pap bezwen tip done a paske varyab la te genten deklare.\n\n"
                    "Nou ka deklare varyab la epi nou tou ba li valè.\n\n"
                    "int number = 0;\n\n"
                    "int se tip varyab la.\n int se fason kout pou Integer. Integer vle di nimewo ki pa gen vigil (nonb antye).\n\n"
                    "Gen plizyè tip varyab, gen sa ki kenbe nonb antye, gen sa ki kenbe tèks ou byen non, gen sa ki kenbe"
                    "nonb desimal. Nap pale plis sou tip varyab yo nan yon ti tan.\n\n"
                    "number se non varyab la. Siy egal la vle di \"Assign to\", sa vle di yo bay varyab la valè 0. \";\" se fason pou nou"
                    "fini tout deklarasyon nan lang java.\n\n"
                    "System.out.print(number);\n\n"
                    "Nou sipoze wè konsòl la make 0 paske valè number se 0.\n\n"
                    "Ann gade kèk Tip varyab:\n\n"
                    "int num1 = 12;\n\n"
                    "double num2 = 2.5;\n"
                    "tip \"double\" a la pou kenbe nonb desimal.\n\n"
                    "String name = \"Haiti Coding\";\n"
                    "tip \"String nan la pou kenbe tèks.\n\n"
                    "float num3 = 1202154;\n"
                    "Menm bagay ak double, men li kenbe mwens nimewo.\n\n"
                    "Gade foto anba a pou nou ka wè yon egzanp.\n",
                    style: TextStyle(fontSize: 25),
                  ),
                  Image.asset("images/varyab.PNG"),
                ]),
              )),
        ));
  }
}
