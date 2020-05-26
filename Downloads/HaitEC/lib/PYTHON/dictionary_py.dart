import 'package:flutter/material.dart';

class dictionary_py extends StatelessWidget {

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
                      "DICTIONARY",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 30.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Yon disksyone se yon koleksyon kote ke eleman yo pa rete nan lod men ou ka chanje yo pozisyon."
                        "\n\nPou ekri yon disksyone, ou bezwen keys ak values (kle ak vale), ni kle a, ni vale a, sipoze ale nan \" \". "
                        "kle a ak vale dwe separe ak yon vigil : "
                        "\n\nMen egzanp yo diksyone: "
                        '\n\ndict1 = {"name": "Jeeyou",\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t"age": 17,\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t"school": "Impf"\n\t}'
                        '\n\nPou nou afiche diksyone a, nap jis itilize print epi mete li nan parantez.'
                        '\n\nprint(dict1)'
                        '\nRezilta a se ap : \n{"name": "Jeeyou", "age": 17, "school": "Impf"} '
                        '\n\nvale a goch yo rele "keys (kle)", vale a dwat yo rele "values (vale)"'
                        '\n\nPou jwenn vale yon kle, nou itilize print()'
                        '\n\nprint(dict1["name"])'
                        '\nRezilta se ap : Jeeyou'
                        '\n\nKoman pou nou chanje vale yon kle: '
                        '\n\n dict1["name"] = "Willy"'
                        '\n\nPou afiche tout keys (kle) nan yon diksyone youn pa youn, nou itilize yon for loop.'
                        '\n\nfor x in dict1:'
                        '\n\t\t\t\tprint(x)'
                        '\n\nPou afiche tout values (vale) nan yon diksyone youn pa youn, nou itilize yon for loop.'
                        '\n\nfor x in dict:'
                        '\n\t\t\t\tprint(dict[x])'
                        '\n\nPou nou afiche ni kle, ni vale nan yon diksyone, nou itilize metod items().'
                        '\n\nfor x, y in dict1.items():'
                        '\n\t\t\t\tprint(x, y)'
                        '\n\nRezila a se ap:'
                        '\nname Jeeyou\nage 17\nschool Impf\ '
                        '\n\nPou nou afiche kantite eleman nan yon dict1, nou itilize metod len(). '
                        '\n\nprint(len(dict1))'
                        '\n\nPou ajoute eleman nan yon diksyone: '
                        '\n\ndict1["siyati"]= "Jean"'
                        '\n\nPou retire eleman nan yon diksyone nou itilize metod pop(). '
                        '\n\ndict1.pop(siyati)'
                        '\n\n ',
                      style: TextStyle(fontSize: 25, color: Colors.black),),
                  ],
                ),
              )),
        )
    );
  }
}
