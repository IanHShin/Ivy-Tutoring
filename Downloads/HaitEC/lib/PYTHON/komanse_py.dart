import 'package:flutter/material.dart';

class komanse_py extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Python"),
        backgroundColor: Colors.teal,
      ),

      body: SingleChildScrollView (
        child: Container( padding: EdgeInsets.all(5),
          child: Column( children: <Widget>[
            Text(
              "KOMANSE",
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 30.0,
                color: Colors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),

          Text('Ou ka itilize Python tankou yon kalkilatis menm si ou pat janm te konn aprann Python. '
    'Itilize \"print()\" ki se yon metòd '
              "anndan Python epi fè kalkil ou yo anndan parantèz yo tankou se te yon kalkilatris.\n\n"

              "\n\"+\"= Adisyon"
          "\n\"-\"= Soustraksyon"
          "\n\"*\"= Miltiplikasyon"
          "\n\"/\"= Divizyon"
          "\n\"%\"= pou jwenn rès yon divizyon.\n\n"

          "\"Console\" se kote rezilta operasyon yo parèt.\n\n"
          "Men kèk egzanp:\n\n"
          "print(3 + 5)\n"
          "Console la ap make 8.\n\n"
          "print(5 - 3)\n"
          "Console la ap make 2.\n\n"
          "print(4 * 5)\n"
          "Console la ap make 20.\n\n"
          "print(25 / 5)\n"
          "Console la ap make 5.\n\n"
          "print(2 / 2)\n"
          "Console la ap make 1.\n\n"

          "\"print()\" se metòd nan Python nou itilize pou afiche rezilta.\n\n"
          "Nou ka afiche tèks oubyen varyab:\n"
          "print(\"Hello world\")\n\n"

          "print(\"Nou ka afiche sa nou vle\")\n\n"
          "Pou nou afiche tèks, nou itilize gimè \" \". Nou ka itilize \' \' tou, men li pi senp pou nou itilize \" \" "
          "pou si nou ta vle afiche yon tèks ki gen apostròf ladann, nou pap jwenn erè.\n\n"

          "Pa egzanp:\n\n"
          "print(\'Willy\'s book\') ap bay yon erè.\n\n", style: TextStyle(fontSize: 25),
        ),
          ]
      )
      )
    )
    );
  }
}