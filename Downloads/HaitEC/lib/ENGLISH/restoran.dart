import 'package:flutter/material.dart';

class restoran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("English"),
          backgroundColor: Colors.teal,
        ),
        body: SingleChildScrollView(
          child: new Container(
              padding: EdgeInsets.all(8.0),
              child: new Center(
                child: new Column(
                  children: <Widget>[
                    new Text(
                      "NAN YON RESTORAN\n",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 30.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.only(left: 15.0, right: 15.0),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Image.asset(
                            'images/cake.png',
                            height: 80,
                            width: 80,
                          ),
                          Image.asset(
                            'images/fish.png',
                            height: 80,
                            width: 80,
                          ),
                        ],
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.only(
                          left: 30.0, right: 30.0, bottom: 15.0),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            "Cake",
                            style: TextStyle(fontSize: 20),
                          ),
                          new Text("Fish", style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.only(left: 15.0, right: 15.0),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Image.asset(
                            'images/pepper.png',
                            height: 80,
                            width: 80,
                          ),
                          Image.asset(
                            'images/egg.png',
                            height: 80,
                            width: 80,
                          ),
                        ],
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.only(
                          left: 30.0, right: 30.0, bottom: 15.0),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            "Pepper",
                            style: TextStyle(fontSize: 20),
                          ),
                          new Text("Egg", style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                    Divider(),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          style: TextStyle(fontSize: 25, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                                text: "* Can I see the menu? = "
                                    "Mwen ka wè meni an?\n\n"
                                    "* May I take your order? = "
                                    "Mwen ka pran kòmand ou a?\n\n"
                                    "* Yes, can I have some chicken sandwich? = "
                                    "Wi, èske mwen ka jwenn yon sandwich ak poul?\n\n"
                                    "* What would you like to drink? = "
                                    "Kisa ou ta renmen bwè?\n\n"
                                    "* Some water please. = "
                                    "Yon ti dlo svp.\n\n"
                                    "* Would you like something for dessert? = "
                                    "Ou ta renmen yon bagay pou\'w fè desè?\n\n"
                                    "* Yes, I want the cake. = "
                                    "Wi, m bezwen gato.\n\n"
                                    "* I need a table for two, please. = "
                                    "mwen bezwen yon tab pou 2 moun, svp.\n\n"
                                    "* I want the same thing. = "
                                    "Map vle menm bagay la.\n\n"
                                    "* The rest is for you. = "
                                    "Rès la pou ou.\n\n"
                                    "* Do you have wine? = "
                                    "Ou gen diven?\n\n"
                                    "* What\'s today\'s special? = "
                                    "Kisa ki nan spesyal jodya?\n\n"
                                    "* Keep the change = "
                                    "Kenbe monnen an!\n\n"
                                    "* Anything else? =\n"
                                    "Anyen ankò?\n\n"
                                    "* I need a glass of red wine Please. = "
                                    "Mwen bezwen yon vè diven wouj svp.\n\n"
                                    "* I would like the check, please. = "
                                    "Mwen bezwen adisyon an svp.\n\n"
                                    "Wine = Diven\n"
                                    "Cake = Gato\n"
                                    "Order = Kòmand\n"
                                    "Chicken = Vyann poul\n"
                                    "Water = Dlo\n"
                                    "Dessert = Desè\n"
                                    "table = Tab\n"
                                    "Drink = Bwason\n"
                                    "To drink = Bwè\n"
                                    "To eat = Manje\n\n"),
                          ]),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              )),
        ));
  }
}
