import 'package:flutter/material.dart';

void main() => runApp(tipdone_py());

class tipdone_py extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Python"),
          backgroundColor: Colors.teal,
        ),
        body: SingleChildScrollView (
            child: Container( padding:  EdgeInsets.all(10),
              child:
                 Column(children: <Widget>[

                   Text(
                     "TIP DONE",
                     style: TextStyle(
                       fontFamily: 'Raleway',
                       fontSize: 30.0,
                       color: Colors.teal,
                       fontWeight: FontWeight.bold,
                     ),
                   ),

              Text('Men yon lis tip done nan Pyhton\n\n'
              "*Intergers: tip la se \"int\", yo la pou kenbe nonb antye tankou: 2, 3, 150, 80.\n\n"
              "*Floating Point: tip la se \"float\"  yo la pou kenbe nonb desimal tankou: 1.0, 35.18, 156.45.\n\n"
              "*Strings: tip la se \"str\", yo la pou kenbe tèks, non moun, oubyen nonb ak lèt mele ansanm tankou: \" Jenny\", "
              "\"Alyssa23\", \"200\". String yo toujou nan mitan gimè \" \".\n\n"
              "*Stirkti done = Data structures\n\n"
              "Yon strikti done se yon koleksyon valè done, relasyon nan mitan yo, ak fonksyon yo oswa operasyon ki ka aplike nan done yo.\n\n"
              "Men yon lis Strikti done:\n\n"
              "*Lists: tip la se \"list\", yo la pou kenbe objè epi kite yo nan lòd tankou: [3, \"Nixon\", 3.14]\n\n"
              "*Dictionaries: tip la se \"dict\", yo la pou kenbe mo oubyen valè ki gwoupe pa pè (2) tankou: "
              "{\"kle\":\"valè\", \"name\":\"Willy\"}.\n\n"
              "*Turples: tip la se \"tup\", yo menm jan ak lis, men ou paka chanje pyès objè yo plas, "
              "yo kenbe objè nan lòd tankou: {3, \"Nixon\", 3.14}\n\n"
              "*Sets: tip la se \"set\", yo la pou kenbe objè inik tankou: {\"a\", \"b\"}.\n\n"
              "*Boolean: tip la se \"bool\", yo la pou kenbe valè lojik tankou: True oubyen False (Vre oubyen Pa vre).\n\n"

              "Nap konnen plis bagay de Tip done ak Strikti done yo, lè nou etidye yo separeman.\n\n",
              style: TextStyle(fontSize: 25),),
             ],),
          )
            ),
    );
  }
}