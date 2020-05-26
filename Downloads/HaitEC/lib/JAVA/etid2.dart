import 'package:flutter/material.dart';

class etid2 extends StatelessWidget {
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
                      "ENVESTISMAN",
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
                                  "Imajine ou ale nan yon bank pou ou ka al depoze yon lajan. Lajan sa a ou pral depoze a wap tounen pran li nan 10 zan. Si ou entèlijan,"
                                  " wap pran lajan sa a epi wap envesti li pou ou ka jwenn enterè sou li. Tou depan de bank lan to enterè a ka varye.\n\n"
                                  "Nan pwogram ou pral gade a, nou ede\'w kalkile konbyen kòb wap genyen apre yon nonb de ane siw envesti lajan an nan yon bank."
                                  "\n"),
                        ],
                      ),
                    ),
                    Image.asset('images/etid2.JPG'),
                    SizedBox(
                      height: 15,
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 14, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: "1. import java.util.Scanner;\n"
                                  "2. public class financial {\n"
                                  "3. public static void main(String[] args) {\n"
                                  "4. \n"
                                  "5.  double kòbEnvesti, enterèAnyèl;\n"
                                  "6.  double kantiteAne, enterèPaMwa, kantiteKòb;\n"
                                  "7.\n"
                                  "8.  System.out.print(\"Mete kantite kòb ou vle"
                                  "9. envesti: \");\n"
                                  "9.  Scanner input = new Scanner(System.in);\n"
                                  "10.  kòbEnvesti = input.nextDouble();\n"
                                  "11.  System.out.print(\"Mete pousantaj enterè chak ane: \");\n"
                                  "12.  enterèAnyèl = input.nextDouble();\n"
                                  "13.  enterèPaMwa = enterèAnyèl / 1200;\n"
                                  "14.  System.out.print(\"Mete konbyen ane: \");\n"
                                  "15.  kantiteAne = input.nextDouble();\n"
                                  "16.\n"
                                  "17.  kantiteKòb = kòbEnvesti *\n"
                                  "18.  Math.pow(1 + enterèPaMwa, kantiteAne*12);\n"
                                  "19. \n"
                                  "20. System.out.printf(\"Men kantite kòb wap vin genyen: '%'.2f \", kantiteKòb);\n"
                                  "21. }\n"
                                  "22. }\n\n\n"),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 25, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  "Imajine ou ale nan yon bank pou ou ka al depoze yon lajan. Lajan sa a ou pral depoze a wap tounen pran li nan 10 zan. Si ou entèlijan,"
                                  " wap pran lajan sa a epi wap envesti li pou ou ka jwenn enterè sou li. Tou depan de bank lan to enterè a ka varye.\n\n"
                                  "Nan pwogram ou pral gade a, nou ede\'w kalkile konbyen kòb wap genyen apre yon nonb de ane siw envesti lajan an nan yon bank."
                                  "\n\n"),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ));
  }
}
