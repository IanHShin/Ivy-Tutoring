import 'package:flutter/material.dart';

class lis_metod extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return  Scaffold(

        appBar: AppBar( title: Text("Java"), backgroundColor: Colors.teal,
        ),

        body:
        SingleChildScrollView(
          child:  Container( padding: EdgeInsets.all(1.0),
              child:  Center(
                child:  Column(
                  children: <Widget>[
                    Text("BAGAY OU DWE KONNEN", style: TextStyle(fontSize: 30, color: Colors.amberAccent,),),

                      Text("Strings:\n\n"
                      "toLowerCase()\n\n"
                      "toUpperCase()\n\n"
                      "equals()\n\n"
                      "equalsIgnoreCase()\n\n"
                      "trim()\n\n"
                      "substring()\n\n"
                      "charAt()\n\n"
                      "length()\n\n"
                      "concat()\n\n"
                      "vendsWith()\n\n"
                      "isEmpty()\n\n"
                      "hashCode()\n\n"
                      "startsWith()\n\n"
                      "toCharArray()\n\n"
                      "split()\n\n"
                      "*Numbers: \n\n\n"
                      "compareTo()\n\n"
                      "equals()\n\n"
                      "random()\n\n"
                      "abs()\n\n"
                      "round()\n\n"
                      "min()\n\n"
                      "max()\n\n"
                      "Math.sin()\n\n"
                      "Math.cos()\n\n"
                      "hashCode()\n\n"
                      "shortValue()\n\n"
                      "toString()\n\n"
                      "isNaN()\n\n\n"
                      "*Characters: a, b, Z\n\n"
                      "isLetter()\n\n"
                      "isDigit()\n\n"
                      "isLowerCase()\n\n"
                      "isUpperCase()\n\n\n"
                      "*Date:\n\n"
                      "getDate()\n\n"
                      "getHours()\n\n"
                      "getMinutes()\n\n"
                      "getSeconds()\n\n"
                      "getMonth()\n\n"
                      "getYear()\n\n"
                      "getDay()\n\n", textAlign: TextAlign.center, style: TextStyle(fontSize: 25)),

                    ],

                ),
              )
          ),
        )
    );
  }
}