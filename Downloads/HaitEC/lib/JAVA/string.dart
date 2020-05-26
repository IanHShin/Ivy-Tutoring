import 'package:flutter/material.dart';

class string extends StatelessWidget {
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
                      "STRING",
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
                                  "String se yon tip done ke yon varyab ka genyen. Nou itilize string pou kenbe tèks, non moun elatriye\.\.\.\n\n"
                                  "Men kouman nou deklare yon varyab ki gen tip done String.\n\n"
                                  "String my_name = \"Willy\";\n\n"
                                  "my_name se yon varyab ki gen tip done String, ki gen yon non kòm valè, Willy."
                                  "\nPa bliye Java sansib pou lèt majiskil ou miniskil yo.\n\n"
                                  "my_name pa menm bagay ak My_name;\n"
                                  "My_Name pa menm bagay ak my_Name;\n\n"
                                  "*Metòd nou ka itilize pou Strings\n"
                                  "length(): pou retounen konbyen karaktè ki nan String lan, li konte espas yo tou.\n\n"
                                  "charAt(index): pou retounen karaktè ki nan yon pozisyon, li depann de valè ou bay index la.\n\n"
                                  "toUpperCase(): pou chanje tout lèt yon nan lèt majiskil.\n\n"
                                  "toLowerCase(): pou chanje tout lèt yon nan lèt miniskil.\n\n"
                                  "trim(): pou retire espas anvan ak aprè String lan.\n\n"
                                  "*Egzanp:\n"
                                  "my_name.length() ap retounen 5 paske Willy gen 5 karaktè.\n\n"
                                  "my_name.toUpperCase() ap retounen WILLY.\n\n"
                                  "my_name.toLowerCase() ap retounen willy.\n\n"
                                  "my_name.charAt(0) ap retounen W.\n\n"
                                  "my_name.charAt(4) ap retounen y.\n\n"
                                  "my_name.charAt(1) ap retounen i.\n\n"
                                  "Pou charAt(index), index la toujou kòmanse nan 0."
                                  "Sa vle di, premye karaktè a se charAt(0)."
                                  "System.out.print() la pou afiche rezilta.\n"
                                  "System.out.print(my_name.length());\n"
                                  "ap afiche 5.\n\n"
                                  "System.out.print(my_name.toLower())\n"
                                  "ap afiche willy.\n\n"
                                  "*Concatenating\n\n"
                                  "Concatenating jus vle di adisyone oubyen konbine String ak yon lòt String oubyen yon lòt varyab kèlkonk.\n\n"
                                  "String enfo = \"Li rele \" + my_name;\n\n"
                                  "System.out.print(enfo);\n\n"
                                  "Nou sipoze wè \"Li rele Willy\" afiche paske enfo concatenate (konbine) \"Li rele\" ak \"my_name\".\n\n"
                                  "System.out.print(): afiche tèks ou varyab sou yon menm liy.\n\n"
                                  "System.out.println(): afiche tèks ou varyab sou yon liy poukont li.\n\n"),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ));
  }
}
