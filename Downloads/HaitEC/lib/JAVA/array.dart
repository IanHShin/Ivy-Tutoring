import 'package:flutter/material.dart';

class array extends StatelessWidget {
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
                      "ARRAY",
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
                                  "Ann sipoze ke nou ta vle ekri yon pwogram kap adisyone 200 nonb kèlkonk, kalkile mwayenn yo, chèche pi piti nimewo a,"
                                  "chèche pi gro nimewo a. \n\nPou nou fè sa, nou tap bezwen 200 varyab. Plis, nou tap bezwen repete yon seri de kòd ki menm jan"
                                  " 200 fwa ak anpil lòt liy pou chak operasyon yo. \n\nJan de bagay sa yo pwogramè pa fè yo. Se pou sa, pou rezoud pwoblèm sa,"
                                  "Java vin ak sa yo rele 'Array' la.\n\n"
                                  "Array yo la pou kenbe yon pakèt done ki gen menm tip.\n\n"
                                  "Array yo ka gen tip String, double, int etc...\n\n"
                                  "Olye pou nou deklare 200 varyab, nou deklare yon Array ki pou kenbe 200 varyab yo.\n\n"
                                  "NB: Fòk varyab yo gen menm tip.\n\n"
                                  "Men kouman yo deklare yon Array\n\n"
                                  "tip [] nom_Array_La;\n"
                                  "Egzanp:\n"
                                  "int [] numbers;\n"
                                  "Nou ka bay Array la fòs eleman li ka kenbe.\n\n"
                                  "int [] numbers = new int[15];\n"
                                  "Array numbers paka kenbe plis pase 15 eleman.\n\n"
                                  "Nou ka deklare array la san nou pa bal fòs eleman lap ka pote.\n\n"
                                  "String []  names = {\"Willio\", \"Ronald\", \"Charly\", \"Nixon\"};\n\n"
                                  "oubyen\n\n"
                                  "String names [] = {\"Willio\", \"Ronald\", \"Charly\", \"Nixon\"};\n\n"
                                  "Nou paka afiche array la ak System.out.print si nou pa itilize yon loop. Osinon afiche chak eleman youn pa youn.\n\n"
                                  "System.out.print(names); __ Pa bon.\n\n"
                                  "System.out.print(names[2]); __ Bon.\n\n"
                                  "Pou nou konnen kantite eleman yon Array genyen, nou itilize metòd length() lan.\n\n"
                                  "System.out.print(names.length);\n"
                                  "4. Paske names gen 4 eleman.\n\n"
                                  "System.out.print(names[2]);\n"
                                  "pou retounen 3èm eleman nan Array a.\n\n"
                                  "System.out.print(names[0]);\n"
                                  "pou retounen 1er eleman nan Array a.\n\n"
                                  "Menm jan nan metòd charAt() index premye karaktè a se toujou 0 ,"
                                  "nan array index premye eleman an se toujou 0 tou.\n\n"),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ));
  }
}
