import 'package:flutter/material.dart';

class direct_speech extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar( title: Text("English"), backgroundColor: Colors.teal,
        ),

        body:
        SingleChildScrollView(
          child: new Container( padding: EdgeInsets.only(top: 10.0, right: 5, left: 5),
              child: new Center(
                child: new Column(
                  children: <Widget>[

                    Text(
                      "Direct and Indirect Speech\n",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 25.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "- Direct Speech:\n\n"
                          ".\n"
                          ".\n"

                          "- Indirect speech:\n"
                          ".\n"
                          "...........................................................",
                      style: TextStyle(
                        fontSize: 25,

                      ),),
                    SizedBox(height: 40),
                  ],
                ),
              )
          ),
        )
    );
  }
}
