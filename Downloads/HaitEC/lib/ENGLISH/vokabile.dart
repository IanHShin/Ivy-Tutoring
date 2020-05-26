import 'package:flutter/material.dart';

class vokabile extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar( title: Text("English"), backgroundColor: Colors.teal,
          ),

        body:
        SingleChildScrollView(
          child: new Container( padding: EdgeInsets.all(8.0),
              child: new Center(
                child: new Column(
                  children: <Widget>[

                    Text(
                      "PLIS VOKABILÈ\n",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 30.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                   RichText(textAlign: TextAlign.center, text: TextSpan(style: TextStyle(fontSize: 25, color: Colors.black), children: <TextSpan>[
                     TextSpan(text: "Body parts = Pati nan kò.\n", style: TextStyle(fontWeight: FontWeight.bold)),
                     TextSpan(text: "\nHair = Cheve  \nHead = Tèt"
                     "\nForehead = Fon \nEyes = Je"
                     "\nNose = Nen    \nMouth = Bouch"
                     "\nTongue = Lang  \nTeeth = Dan"
                     "\nLips = Lèv    \nFace = Figi"
                     "\nShoulder = Epòl \nStomach = Vant"
                     "\nChest = Pwatrin \nBelly = Vant"
                     "\nNeck  = Kou   \nArm = Bra"
                     "\nFinger = Dwèt  \nPenis = Grenn"
                     "\nVagina = Vajen\n\n"),
                     TextSpan(text: "In the house = Nan kay la.\n", style: TextStyle(fontWeight: FontWeight.bold)),
                     TextSpan(text: "\nOven = Fou    \nTV = Televizyon"
                         "\nBed = Kabann   \nRadio = Radyo"
                         "\nTable = Tab      \nFan = vantilatè"
                         "\nChair = Chèz    \nCloset = Pandri"
                         "\nComputer = Òdinatè\n\n "),
                     TextSpan(text: "Clothes = Rad\n", style: TextStyle(fontWeight: FontWeight.bold)),
                     TextSpan(text: "Hat = Chapo    \nPants = Pantalon\n"
                         "Suit = Vès     \nBelt = Sentiron\n"
                         "Coat = Manto   \nDress = Rad (long pou fanm)\n"
                         "Shirt = Chemiz \nSkirt = Jip\n"
                         "Tie = Kòl     \nShoes = Soulye\n"
                         "Boot = Bòt    \nPajamas = Pidjama\n"
                         "Sock = Ba    \nButton = Bouton\n"
                         "Glasses = Linèt  \nBracelet  = Braslè\n\n "),
                     TextSpan(text: "Food = Manje\n", style: TextStyle(fontWeight: FontWeight.bold)),
                     TextSpan(text: "\nMeat = Vyann  \nPotato = Pòm de tè"
                         "\nTomato = Tomat \nOnion = Zonyon"
                         "\nFish = Pwason \nChicken = Poul"
                         "\nRice = Diri \nBread = Pen"
                         "\nSalt = Sèl \nOil = Lwil"
                         "\nBean = Pwa \nCorn = Mayi"
                         "\nSugar = Sik \nSoup = Soup"
                         "\nEgg = Ze \nPepper = Piman"
                         "\nSalad = Salad \nPork = Kochon"
                         "\nHoney = Siwo myèl\nCake = Gato"
                         "\nApple = Pòm \nOrange = Zoranj"
                         "\nBanana = Fig \nWater = Dlo"
                         "\nLemon = Sitwon \nIce = Glas"
                         "\nGrape = Rezen \nMilk = Lèt"
                         "\nDrink = Bwason \nCheese = Fwomaj"
                         "\nCoffee = Kafe \nTea = Te"
                         "\nMoney = Lajan \nWine = Diven"
                         "\nBeer = Byè \nSweet potato = Patat"
                         "\nJuice = Ji\n\n "
                         "Fòme yon fraz ak chak mo sa yo.\n\n"
                         "Egzanp: Food\n\n"
                         "*The Food is cold.\n\n "
                         "Beer\n"
                         "*I don\'t like drinking beer.\n\n "),
                     TextSpan(text: "Adjectives = Kèk adjektif\n\n", style: TextStyle(fontWeight: FontWeight.bold)),
                     TextSpan(text: "Sour = Si\n"
                         "*This lemon is sour. = \n"
                         "Sitron sa a si. = \n\n"
                         "Sweet = Dous\n "
                         "*The juice is too sweet.\n"
                         "Ji a two dous.\n\n"
                         "- Adjectif yo se mo ki atribye ak yon non pou modifye li oubyen pou dekri li."
                         "\n\nFried = Fri\n"
                         "Red = Wouj\n"
                         "Dirty = Sal\n"
                         "Good = bon\n"
                         "Bad = Pa bon\n"
                         "Big = Gwo\n\n"
                         "- Pou fòme pliryèl, yon mo Anglè, nou mete s aprè mo a.\n"
                         "Egzanp.\n\n"
                         "A dog = dogs\n"
                         "A cat = cats\n\n "),
                     TextSpan(text: "Colors = Koulè yo\n\n", style: TextStyle(fontWeight: FontWeight.bold)),
                     TextSpan(text: "Red = Wouj\n"
                         "Yellow = Jon\n"
                         "Blue = Ble\n"
                         "Black = Nwa\n"
                         "White = Blan\n"
                         "Pink = Woz\n"
                         "Gray = Gri\n"
                         "Grey = Gri\n"
                         "Purple = Mov\n"
                         "Orange = Oranj\n\n"),
                     TextSpan(text: "Numbers = Nimewo yo\n\n", style: TextStyle(fontWeight: FontWeight.bold)),
                     TextSpan(text: "One = Youn\n"
                         "Two = De\n"
                         "Three = twa\n"
                         "Four = kat\n"
                         "Five = Senk\n"
                         "Six = Sis\n"
                         "Seven = Sèt\n"
                         "Eight = Ywit\n"
                         "Nine = Nèf\n"
                         "Ten = Dis\n"
                         "Eleven = Onz\n"
                         "Twelve = Douz\n"
                         "Thirteen = Trèz\n"
                         "Fourteen = Katòz\n"
                         "Fifteen = Kenz\n"
                         "Sixteen = Sèz\n"
                         "Seventeen = Disèt\n"
                         "Eighteen = Dizuit\n"
                         "Nineteen = Diznèf\n"
                         "Twenty = Ven\n"
                         "Thirty = Trant\n"
                         "Forty = Karant\n"
                         "Fifty = Senkant\n"
                         "Sixty = Swasant\n"
                         "Seventy = Swasann dis\n"
                         "Eighty = Katreven\n"
                         "Ninety = Katreven dis\n"
                         "One Hundred = San\n\n"),
                     TextSpan(text: "The Days = Jou Yo\n\n", style: TextStyle(fontWeight: FontWeight.bold)),
                     TextSpan(text: "Monday = Lendi\n"
                         "Tuesday = Madi\n"
                         "Wednesday = Mekrèdi\n"
                         "Thursday = Jedi\n"
                         "Friday = Vandredi\n"
                         "Saturday = Samdi\n"
                         "Sunday = Dimanch\n\n"),
                     TextSpan(text: "The Months = Mwa Yo\n\n", style: TextStyle(fontWeight: FontWeight.bold)),
                     TextSpan(text: "January = Janvye\n"
                         "February = Fevriye\n"
                         "March = Mas\n"
                         "April = Avril\n"
                         "May = Me\n"
                         "June = Jen\n"
                         "July = Jiyè\n"
                         "August = Out\n"
                         "September = Septanb\n"
                         "October = Oktob\n"
                         "November = Novamb\n"
                         "December = Desanb\n"),

                   ],

                   ),
                   ),
                    SizedBox(height: 40),
                  ],
                ),
              )
          ),
        )
    );
  }
}

