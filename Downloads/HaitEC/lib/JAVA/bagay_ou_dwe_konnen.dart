import 'package:flutter/material.dart';

class bagay_ou_dwe_konnen extends StatelessWidget {
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
                      "BAGAY OU DWE KONNEN",
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
                              text: "*Math.random()\n\n"
                                  "int x =(int) Math.random();\n\n"
                                  "Math.random() se yon fonksyon ki jenere yon nimero kèlkonk. Nimewo sa a se yon nonb desimal.\n\n"
                                  "Nou souvan transfòme nimewo a an nonb antye. Pwosesis sa a rele \"casting\".\n\n int x =(int) Math.random()*10;\n\n"
                                  " (int) Math.random() transfòme nonb desimal la an nonb antye.\n\n"
                                  "Olye nou gen double x = Math.random()*10;\n nou tou chanje tip la. Math.random() jenere yon nimewo"
                                  "ki ant 0.0 ak 1.0 men 1.0 pap janm ladann. Lè nou konvèti tip la an int epi nou miltipliye pa 10, Math.random()*10 jenere nimewo ant "
                                  "0 a 9.\n\n"
                                  "Pou nou bay x valè 1 a 10, nou ajoute 1 sou nimewo ki jenere a.\n int x =(int) Math.random()*10 + 1;\n\n"
                                  "<b>Scanner</b>"
                                  "Youn nan bagay nap gen pou nou aprann se \"Scanner\". Menm jan nou konnen li nan lavi kourant, yon \"Scanner\" skane yon bagay pou li "
                                  "verifye si gen enfòmasyon ladann. Nan java se menm jan an,  Nou itilize Scanner pi souvan lè nou bezwen yon "
                                  "enfòmasyon (input) nan men moun kap itilize pwogram lan.\n\n"
                                  "Men kòman nou itilize Scanner.\n"
                                  "Scanner input = new Scanner(System.in);\n"
                                  "Liy #1 nan imaj la enpòte scanner a. Liy #7 kreye li. lòt liy yo ap itilize li.\n"
                                  "Nou dwe afiche yon tèks ki pou mande itilizatè enfòmasyon. System.out.print(\"Ki ane ou fèt?\");\n"
                                  "Tou depan de sa nou mande itilizatè a, nou gentan konnen kijan de rezilta nap jwenn.\n\n"
                                  "Nan egzanp sa a, nap jwenn yon nimewo paske nou mande pou yon ane. Nap gen pou devwa anrejistre nimewo sa tankou yon nonb antye(Integer)."
                                  "Menm kòman nou anrejitre sa yon itilizatè antre:\n\n"
                                  "int num2 = input.nextInt();\n"
                                  "si se yon nonb antye.\n\n"
                                  "int num2 = input.nextDouble();\n"
                                  "si se yon nonb desimal\n\n"
                                  "String tèks = input.nextLine();\n"
                                  "Si se yon tèks oubyen yon mo.\n\n"
                                  "Aprè nou fin anrejistre sa itilizatè a antre a, nou sèvi avèk li tankou se yon varyab paske an reyalite se sa li ye.\n\n"
                                  "Tout lòt operasyon yo fasil.\n\n"
                                  "2018 - 1996 = 22.\n"
                                  "Se sak fè int laj = num2 - num1;\n"
                                  "Aprè sa nou jus afiche laj la ak System.out.print(name + \" ou gen \" + laj\n\n"),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ));
  }
}
