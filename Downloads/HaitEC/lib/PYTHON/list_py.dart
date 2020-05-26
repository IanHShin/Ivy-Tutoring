import 'package:flutter/material.dart';

class list_py extends StatelessWidget {

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
                      "STRINGS",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 30.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                          Text("Yon lis se yon koleksyon kote ke eleman yo rete nan lod men ou ka chanje yo pozisyon."
                                "\n\nPou ekri yon list, ou bezwen mete elamn yo nan \"[]\" epi mete chak eleman nan \" \". "
                                  "\n\nMen egzanp yo list: "
                                  '\n\nlist1 = ["lekol", "legliz", "travay"],'
                                  '\n\nPou nou afiche list la, nap jis itilize print epi mete li nan parantez.'
                                  '\n\nprint(list1)'
                                  '\nRezilta a se ap : \n["lekol", "legliz", "travay"]'
                                  '\n\nNou ka chwazi afiche yon sel eleman nan lis la tou!'
                                  '\n\nprint(list1[0])'
                                  '\nRezilta se ap : lekol'
                                  '\n\n Sonje ke index yo komanse nan 0 men jan ak Java. Sa vle di, Pou afiche 2 elaman an, '
                                  'index la dwe 1, [1].'
                                  '\n\nList pemet nou bay index negatif tou, sa vle di, komanse nan fen list la.\n\n'
                                  '\n\nSi mwen ta vle afiche denye eleman nan list1, mwen ka itilize: '
                                  '\nprint(list1[-1])'
                                  '\n\nRezila a se ap: travay.'
                                  '\n\n Si mwen ta vle afiche anvan denye eleman nan list1, mwen ka itilize: '
                                  '\nprint(list1[-2])'
                                  '\n\nRezila a se ap: legliz.'
                              '\n\nNou ka afiche yon pati nan list la tou: '
                              '\n\nprint(list1[0:2])'
                              '\n\nRezilta a se ap : [\'lekol\', \'legliz\']'
                              '\n\nNote ke index 2 a ki se \'travay\' '
                              'pa afiche paske enteval la se [0, 2[ (Ayiti) ou [0, 2) (USA).'
                              '\n\nPou afiche kantine elaman yon lis genyen, nou itilize metod len() lan'
                              '\n\nprint(len(list1) ap afiche 3, paske gen 3 eleman nan lis la.'
                              '\n\n ',
                              style: TextStyle(fontSize: 25, color: Colors.black),),
                  ],
                ),
              )),
        )
    );
  }
}
