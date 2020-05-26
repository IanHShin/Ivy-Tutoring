import 'package:flutter/material.dart';

class method extends StatelessWidget {
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
                      "METHOD",
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
                                  "Yon metòd se yon gwoup deklarasyon ki pèfòme yon aksyon spesifik.\n\n"
                                  "Sipoze ke ou ta vle adisyone nonb antye soti nan 1 pou rive nan 10.\n"
                                  "Epi aprè ou deside adisyone nonb antye soti nan 20 pou rive nan 40\n."
                                  "Epi aprè ou deside adisyone nonb antye soti nan 25 pou rive nan 38.\n\n"
                                  "Men kisa ou tap erki:\n\n"
                                  "int  rezilta = 0 ;\n"
                                  "for  ( int  i = 1 ; i <= 10 ; i++)\n"
                                  "rezilta += i;\n"
                                  "System.out.print(\"rezilta a se \" + rezilta);\n\n"
                                  "int  rezilta = 0 ;\n"
                                  "for  ( int  i = 20 ; i <= 40 ; i++)\n"
                                  "rezilta += i;\n"
                                  "System.out.print(\"rezilta a se \" + rezilta);\n\n"
                                  "int  rezilta = 0 ;\n"
                                  "for  ( int  i = 25 ; i <= 38 ; i++)\n"
                                  "rezilta += i;\n"
                                  "System.out.print(\"rezilta a se \" + rezilta);\n\n"
                                  "Olye nou plede ekri menm kòd yo plizye fwa, nou ka kreye yon metòd ki kalkile rezilta sa yo pou nou."
                                  "Nap jis bay metòd la nimewo yo.\n\n"
                                  "public static int rezilta(int num1, int num2) {\n"
                                  "\tint  result = 0 ;\n"
                                  "\tfor  ( int  i = num1; i<= num2; i++)\n"
                                  "\trezilta += i;\n"
                                  "}\n"
                                  "return result;\n\n"
                                  "System.out.println(\"rezilta de 20 a 40 se \" + rezilta(1 , 10 ));\n\n"
                                  "System.out.println(\"rezilta de 20 a 40 se \" + rezilta(20 , 40 ));\n\n"
                                  "System.out.println(\"rezilta de 25 a 38 se \" + rezilta(25 , 38));\n\n"
                                  "Men kòman pou nou defini yon metòd.\n\n"
                                  "\"public static\" se modifier a\n"
                                  "int oubyen double oubyen String tou depan de ki tip done wap bezwen pou metòd la bay.\n"
                                  "non metòd la\n"
                                  "   (...   ...) paramèt yo nan parantèz la epi ouvè yon parantèz \"{\".\n"
                                  "\.\.\.\.\.\\n sa se kò metòd la.\n"
                                  "   .\.\.\.\.\n"
                                  "\"}\" metòd la fini la.\n\n"
                                  "<i>Egzanp:</i>\n\n"
                                  "public static double sum(double a, double b){\n"
                                  "sum = a + b;\n"
                                  "}\n\n"),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ));
  }
}
