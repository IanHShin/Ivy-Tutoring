import 'package:flutter/material.dart';

class synonyms_of_very extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("English"),
          backgroundColor: Colors.teal,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          physics: AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          children: <Widget>[
            new Container(
              child: new Container(
                padding: EdgeInsets.all(10.0),
                child: new Column(
                  children: <Widget>[
                    new Text(
                      "INSTEAD OF VERY",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 30.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        new Container(
                            padding: EdgeInsets.only(bottom: 15.0),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                      "Very good \n\n"
                                      "Very bad\n\n"
                                      "Very beautiful \n\n"
                                      "Very big \n\n"
                                      "Very boring \n\n"
                                      "Very noisy  \n\n"
                                      "Very poor \n\n"
                                      "Very cheap \n\n"
                                      "Very clean \n\n"
                                      "Very short \n\n"
                                      "Very difficult \n\n"
                                      "Very dry \n\n"
                                      "very quick \n\n"
                                      "Very smart  \n\n"
                                      "Very upset \n\n"
                                      "Very cold \n\n"
                                      "Very strong \n\n"
                                      "Very huge \n\n"
                                      "Very calm \n\n"
                                      "Very ugly \n\n"
                                      "Very small \n\n"
                                      "Very funny \n\n"
                                      "Very quiet \n\n"
                                      "Very rich \n\n"
                                      "Very expensive \n\n"
                                      "Very dirty \n\n"
                                      "Very tall \n\n"
                                      "Very easy \n\n"
                                      "Very wet \n\n"
                                      "Very slow \n\n"
                                      "Very dear \n\n"
                                      "Very deep \n\n"
                                      "Very empty \n\n"
                                      "Very excited \n\n"
                                      "Very fancy \n\n"
                                      "Very fat \n\n"
                                      "Very friendly \n\n"
                                      "Very glad \n\n"
                                      "Very great \n\n"
                                      "Very heavy \n\n"
                                      "Very hungry \n\n"
                                      "Very hurt\n\n"
                                      "Very large\n\n"
                                      "Very lazy\n\n"
                                      "Very long\n\n"
                                      "Very loose\n\n"
                                      "Very accurate\n\n"
                                      "Very afraid\n\n"
                                      "Very clever\n",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            )),
                        new Container(
                            padding: EdgeInsets.only(bottom: 15.0),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                      "Excellent \n\n"
                                      "Awful \n\n"
                                      "Gorgeous \n\n"
                                      "Massive \n\n"
                                      "Dull \n\n"
                                      "Deafening \n\n"
                                      "Destitute \n\n"
                                      "Stingy \n\n"
                                      "Spotless \n\n"
                                      "Brief \n\n"
                                      "Arduous \n\n"
                                      "Arid \n\n"
                                      "Rapid \n\n"
                                      "Intelligent \n\n"
                                      "Distraught \n\n"
                                      "Freezing \n\n"
                                      "Forceful\n\n"
                                      "Colossal \n\n"
                                      "Serene \n\n"
                                      "Hideous \n\n"
                                      "Petite \n\n"
                                      "Hilarious \n\n"
                                      "Hushed \n\n"
                                      "Wealthy \n\n"
                                      "Costly \n\n"
                                      "Filthy \n\n"
                                      "Towering \n\n"
                                      "Effortless \n\n"
                                      "Soaked \n\n"
                                      "Sluggish \n\n"
                                      "Cherished \n\n"
                                      "Profound \n\n"
                                      "Desolate \n\n"
                                      "Thrilled \n\n"
                                      "Lavish \n\n"
                                      "Obese \n\n"
                                      "Amiable \n\n"
                                      "Overjoyed \n\n"
                                      "Terrific \n\n"
                                      "Leaden \n\n"
                                      "Starving \n\n"
                                      "Battered\n\n"
                                      "Huge\n\n"
                                      "Indolent\n\n"
                                      "Extensive\n\n"
                                      "Slack\n\n"
                                      "Exact\n\n"
                                      "Fearful\n\n"
                                      "Intelligent\n",
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
          ],
        ));
  }
}
