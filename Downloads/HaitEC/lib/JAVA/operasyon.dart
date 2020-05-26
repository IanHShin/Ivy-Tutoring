import 'package:flutter/material.dart';

class operasyon extends StatelessWidget {
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
                      "Operasyon",
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
                                  "Menm jan nan matematik gen operasyon, nan JAVA nou ka fè operasyon tou."
                                  "\nNou konnen 4 operasyon de baz yo se adisyon, miltiplikasyon, soustraksyon ak divizyon.\n"
                                  "\n\"+\"= Adisyon"
                                  "\n\"-\"= Soustraksyon"
                                  "\n\"*\"= Miltiplikasyon"
                                  "\n\"/\"= Divizyon\n"
                                  "\n\"%\"= rès, pou jwenn rès yon divizyon."
                                  "\n Egzanp:\n5%2=1. \n11%3=2\n\n"
                                  "Nan leson anvan an nou te etidye varyab. Tip varyab yo pèmèt nou konnen kijan de operasyon nou ka fè avèk yo.\n"
                                  "Pa egzanp:\n\n"
                                  "int num1 = 12;\n"
                                  "double num2 = 2.5;\n"
                                  "String name = \"Haiti Coding\";\n"
                                  "float num3 = 1202154451;\n"
                                  "long var = 15487;\n\n"
                                  "Nou paka adisyone num1 ak name. Li pap mache, paske nou paka adisyone yon tèks ak yon nimewo. Men nou ka"
                                  "adisyone num1 ak num2 malgre yo pa menm tip, men tou 2 se nimewo yo ye. Sa vle di int ak double ka "
                                  "adisyone ansanm, valè nap jwenn lan se ap yon double.\n\n"
                                  "Depi varyab yo se nimewo, nou ka adisyone yo.\n\n"
                                  "result1 =  num1 + num2;\n\n"
                                  "Operasyon sa yo ka fèt paske tip varyab yo se int ak double.\n\n"
                                  "System.out.print(result1);\n\n"),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ));
  }
}
