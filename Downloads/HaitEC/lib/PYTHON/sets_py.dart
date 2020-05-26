import 'package:flutter/material.dart';

class sets extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Python"),
          backgroundColor: Colors.teal,
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      "SETS",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 30.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Yon set se yon koleksyon kote ke eleman yo pa gen lod e yo pa gen index, ki vle di pa gen pozisyon."
                        "\n\nPou ekri yon set, ou bezwen mete elamn yo nan \"{}\" epi mete chak eleman nan \" \" separe ak \',\'. "
                        "\n\nMen egzanp yo set: \n"
                        '\n\nset1 = {"lekol", "legliz", "travay"},'
                        '\n\nPou nou afiche set la, nap jis itilize print epi mete li nan parantez.'
                        '\n\nprint(set1)'
                        '\nRezilta a se ap : \n{"lekol", "travay", "legliz"}'
                        '\n\nEleman nan yon set, pa gen pozisyon, se sak fe ou pa konnen nan lod eleman yo ap afiche '
                        'le ou fe print(set1)'
                        '\n\nPou nou afiche tout eleman nan yon set, youn pa youn nou oblije itilize yon for loop. '
                        'nap pale de for loop pita.'
                        '\n\nfor i in set1:'
                        '\n   print(i)'
                        '\n\ni te ka nenpot bagay, x, y nenpot sa\'w vle '
                        '\n\nRezilta a se ap: \nlekol\n, travay\n, legliz'
                        '\n\nPou tcheke si yon eleman nan yon set, nou itilize print()'
                        '\n\nprint("lekol" in set1)'
                        '\n\nRezilta a se ap: True'
                        '\n\nremake ke Rezilta a pa "lekol", le ou tcheke si yon eleman nan yon set (ansanm) Rezilta a se ap vre oubyen pa vre!'
                        '\n\nDiferan de List ak Turple, nou paka chanje eleman ki nan yon set.'
                        '\n\nPou nou ajoute eleman nan yon set, nou itlize metod add() la.'
                        '\n\nset1.add("manje")'
                        '\n\nPou nou retire yon eleman nan yon set, nou itilize metod remove() la.'
                        '\n\nset1.remove("travay")'
                        '\n\n ',
                      style: TextStyle(fontSize: 25, color: Colors.black),),
                  ],
                ),
              )),
        )
    );
  }
}
