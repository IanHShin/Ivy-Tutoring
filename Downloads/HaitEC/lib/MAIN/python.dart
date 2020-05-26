import 'package:first_app/PYTHON/egzesis.dart'; import 'package:first_app/PYTHON/list_py.dart';
import 'package:first_app/PYTHON/tipdone_py.dart'; import 'package:first_app/PYTHON/list_pratik_py.dart';
import 'package:flutter/material.dart'; import 'package:first_app/PYTHON/string_pratik_py.dart';
import 'package:first_app/PYTHON/entwodisksyon_py.dart'; import 'package:first_app/PYTHON/komanse_py.dart';
import 'package:first_app/PYTHON/strings_py.dart'; import 'package:first_app/PYTHON/turple_pratik_py.dart';
import 'package:first_app/PYTHON/sets_py.dart'; import 'package:first_app/PYTHON/set_pratik_py.dart';
import 'package:first_app/PYTHON/turple_py.dart'; import 'package:first_app/goTo.dart';
import 'package:first_app/PYTHON/dictionary_py.dart'; import 'package:first_app/PYTHON/dictionary_pratik_py.dart';

void main() => runApp(python());

class python extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar( title: Text("Python"), backgroundColor: Colors.teal,
        ),

        body:
        //SingleChildScrollView( child:
         Container( padding: EdgeInsets.all(5) ,child:
         ListView(
           scrollDirection: Axis.vertical,
           physics: AlwaysScrollableScrollPhysics(),
           shrinkWrap: true,
           children:
           [

             GestureDetector(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(
                   builder: (BuildContext context) => entwodiksyon(),),);},
               child: goTo('1. ENTWODIKSYON'),
             ),

             GestureDetector(
               onTap: () {
                 Navigator.push( context, MaterialPageRoute(
                   builder: (BuildContext context) => tipdone_py(),),);},
               child: goTo('2. TIP DONE'),
             ),

             GestureDetector(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(
                   builder: (BuildContext context) => komanse_py(),),);},
               child: goTo('3. KOMANSE'),
             ),

             GestureDetector(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(
                   builder: (BuildContext context) => egzesis(),),);},
               child: goTo('4. PRATIK'),
             ),

             GestureDetector(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(
                   builder: (BuildContext context) => strings_py(),),);},
               child: goTo('5. STRING'),
             ),

             GestureDetector(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(
                   builder: (BuildContext context) => string_pratik_py(),),);},
               child: goTo('6. EGZÈSIS SOU STRINGS'),
             ),

             GestureDetector(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(
                   builder: (BuildContext context) => list_py(),),);},
               child: goTo('7. LIST'),
             ),

             GestureDetector(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(
                   builder: (BuildContext context) => list_pratik_py(),),);},
               child: goTo('8. EGZÈSIS SOU LIST'),
             ),

             GestureDetector(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(
                   builder: (BuildContext context) => turple_py(),),);},
               child: goTo('9. TURPLE'),
             ),

             GestureDetector(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(
                   builder: (BuildContext context) => turple_pratik_py(),),);},
               child: goTo('10. EGZÈSIS SOU TURPLE'),
             ),

             GestureDetector(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(
                   builder: (BuildContext context) => sets(),),);},
               child: goTo('11. SETS'),
             ),

             GestureDetector(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(
                   builder: (BuildContext context) => set_pratik_py(),),);},
               child: goTo('12. EGZÈSIS SOU SETS'),
             ),

             GestureDetector(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(
                   builder: (BuildContext context) => dictionary_py(),),);},
               child: goTo('13. DICTIONARIES'),
             ),

             GestureDetector(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(
                   builder: (BuildContext context) => dictionary_pratik_py(),),);},
               child: goTo('14. EGZÈSIS SOU DICTIONARIES'),
             ),

           ],
         ),
        )
    );
  }
}

