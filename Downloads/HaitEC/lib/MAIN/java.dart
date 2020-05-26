import 'package:first_app/JAVA/challenge.dart';
import 'package:first_app/JAVA/challenge_solution.dart';
import 'package:first_app/JAVA/dat_ak_le.dart';
import 'package:first_app/JAVA/plis_pratik.dart';
import 'package:first_app/JAVA/teste_konesans.dart'; import 'package:first_app/goTo.dart';
import 'package:flutter/material.dart'; import 'package:first_app/JAVA/entwodiksyon.dart';
import 'package:first_app/JAVA/varyab_pratik.dart'; import 'package:first_app/JAVA/varyab.dart';
import 'package:first_app/JAVA/operate_lojik.dart'; import 'package:first_app/JAVA/array_pratik.dart';
import 'package:first_app/JAVA/operasyon.dart'; import 'package:first_app/JAVA/bagay_ou_dwe_konnen.dart';
import 'package:first_app/JAVA/operasyon_pratik.dart'; import 'package:first_app/JAVA/plis_pratik.dart';
import 'package:first_app/JAVA/fonksyon_math.dart';   import 'package:first_app/JAVA/lis_metod.dart';
import 'package:first_app/JAVA/fonksyon_math_pratik.dart'; import 'package:first_app/JAVA/etid3.dart';
import 'package:first_app/JAVA/string.dart'; import 'package:first_app/JAVA/etid2.dart';
import 'package:first_app/JAVA/string_pratik.dart'; import 'package:first_app/JAVA/etid1.dart';
import 'package:first_app/JAVA/loop.dart'; import 'package:first_app/JAVA/loop_pratik.dart';
import 'package:first_app/JAVA/method.dart'; import 'package:first_app/JAVA/array.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class java extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);

    return Scaffold(

        appBar: AppBar( title: Text("Java"), backgroundColor: Colors.teal,
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
                    builder: (BuildContext context) => varyab(),),);},
              child: goTo('2. VARYAB'),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => varyab_pratik(),),);},
              child: goTo('3. EGZÈSIS SOU VARYAB'),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => operate_lojik(),),);},
              child: goTo('4. OPERATÈ LOJIKAL AK KONDISYON'),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => operasyon(),),);},
              child: goTo('5. OPERASYON'),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => operasyon_pratik(),),);},
              child: goTo('6. EGZÈSIS SOU OPERASYON'),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => fonksyon_math(),),);},
              child: goTo('7. FONKSYON MATEMATIK'),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => fonksyon_math_pratik(),),);},
              child: goTo('8. EGZÈSIS SOU FONKSYON MATEMATIK'),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => string(),),);},
              child: goTo('9. STRING'),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => string_pratik(),),);},
              child: goTo('10. EGZÈSIS SOU STRING'),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => loop(),),);},
              child: goTo('11. LOOP'),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => loop_pratik(),),);},
              child: goTo('12. EGZÈSIS SOU LOOP'),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => method(),),);},
              child: goTo('13. METHOD'),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => array(),),);},
              child: goTo('14. ARRAY SINGLE DIMENSION'),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => array_pratik(),),);},
              child: goTo('15. EGZÈSIS SOU ARRAY'),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => bagay_ou_dwe_konnen(),),);},
              child: goTo('16. BAGAY OU DWE KONNEN'),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => plis_pratik(),),);},
              child: goTo('17. PLIS PRATIK'),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => challenge(),),);},
              child: goTo('18. CHALLENGE'),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => challenge_solution(),),);},
              child: goTo('19. CHALLENGE SOLUTION'),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => dat_ak_le(),),);},
              child: goTo('20. DAT AK LÈ'),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => lis_metod(),),);},
              child: goTo('21. LIS METÒD NAN JAVA'),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => etid1(),),);},
              child: goTo('22. ETIDYE KA #1'),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => etid2(),),);},
              child: goTo('23. ETIDYE KA #2'),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => etid3(),),);},
              child: goTo('24. ETIDYE KA #3'),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => teste_konesans(),),);},
              child: goTo('25. TESTE KONESANS OU'),
            ),
          ],

          ),
        ),
    );
  }
}

