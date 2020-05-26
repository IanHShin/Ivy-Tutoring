import 'package:flutter/material.dart';

class turple_py extends StatelessWidget {

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
                      "TURPLE",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 30.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Yon turple se yon koleksyon kote ke eleman yo rete nan lod men ou paka chanje yo pozisyon."
                        "\n\nPou ekri yon turple, ou bezwen mete elamn yo nan \"()\" epi mete chak eleman nan \" \" separe ak vigil \',\'. "
                        "\n\nMen egzanp yo turple: \n"
                        '\n\nturple1 = ("lekol", "legliz", "travay"),'
                        '\n\nPou nou afiche turple la, nap jis itilize print epi mete li nan parantez.'
                        '\n\nprint(turple1)'
                        '\nRezilta a se ap : \n("lekol", "legliz", "travay")'
                        '\n\nNou ka chwazi afiche yon sel eleman nan tuple la tou!'
                        '\n\nprint(turple1[0])'
                        '\nRezilta se ap : lekol'
                        '\n\nIndex yo toujou komanse nan 0 menm jan ak lis. Pou afiche 2 elaman an, '
                        'index la dwe 1, [1].'
                        '\n\n Menm jan ak lis, turple pemet nou bay index negatif tou, sa vle di, komanse nan fen turple la.\n\n'
                        '\n\nSi mwen ta vle afiche denye eleman nan turple1, mwen ka itilize: '
                        '\nprint(turple1[-1])'
                        '\n\nRezila a se ap: travay.'
                        '\n\n Si mwen ta vle afiche anvan denye eleman nan turple1, mwen ka itilize: '
                        '\nprint(turple1[-2])'
                        '\n\nRezila a se ap: legliz.'
                        '\n\nNou ka afiche yon pati nan turple la tou: '
                        '\n\nprint(turple1[0:2])'
                        '\n\nRezilta a se ap : (\'lekol\', \'legliz\')'
                        '\n\nNote ke index 2 a ki se \'travay\' '
                        'pa afiche paske enteval la se [0, 2[ (Ayiti) ou [0, 2) (USA).'
                        '\n\nPou afiche kantine elaman yon turple genyen, nou itilize metod len() lan'
                        '\n\nprint(len(turple1) ap afiche 3, paske gen 3 eleman nan turple a.)'
                        '\n\n ',
                      style: TextStyle(fontSize: 25, color: Colors.black),),
                  ],
                ),
              )),
        )
    );
  }
}
