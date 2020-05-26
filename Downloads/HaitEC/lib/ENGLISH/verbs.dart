import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class verbs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<verbs> {

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    return
      Scaffold(
        appBar: AppBar(
          title: Text("English"),
          backgroundColor: Colors.teal,
        ),

        body: ListView(
          scrollDirection: Axis.vertical,
          physics: AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          children: <Widget>[
        Container(
        child: Center(
          child:

          Column(
          children: <Widget>[
                  Text(
                  "TO BE",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 25.0,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  CARD("PRESENT\n", "I am\n", "You are\n", "He/She/It is\n", "We are\n", "You are\n", "They are",
                      ),

                  CARD("PAST\n", "I was\n", "You were\n", "He/She/It was\n", "We were\n", "You were\n", "They were",
                      ),

                CARD("FUTURE\n", "I will be\n", "You will be\n", "He will be\n", "We will be\n", "You will be\n", "They will be",
                    ),

              ],
            ),
            Text(
              "TO HAVE",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 25.0,
                color: Colors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CARD("PRESENT\n", "I have\n", "You have\n", "He/She/It has\n", "We have\n", "You have\n", "They have",
                    ),

                CARD("PAST\n", "I had\n", "You had\n", "He/She/It had\n", "We had\n", "You had\n", "They had",
                    ),

                CARD("FUTURE\n", "I will have\n", "You will have\n", "He will have\n", "We will have\n", "You will have\n", "They will have",
                    ),

              ],
            ),
            Text(
              "TO DO",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 25.0,
                color: Colors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CARD("PRESENT\n", "I do\n", "You do\n", "He/She/It does\n", "We do\n", "You do\n", "They do",
                    ),

                CARD("PAST\n", "I did\n", "You did\n", "He/She/It did\n", "We did\n", "You did\n", "They did",
                    ),

                CARD("FUTURE\n", "I will do\n", "You will do\n", "He will do\n", "We will do\n", "You will do\n", "They will do",
                    ),

              ],
            ),
            Text(
              "TO SAY",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 25.0,
                color: Colors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CARD("PRESENT\n", "I say\n", "You say\n", "He/She/It says\n", "We say\n", "You say\n", "They say",
                    ),

                CARD("PAST\n", "I said\n", "You said\n", "He/She/It said\n", "We said\n", "You said\n", "They said",
                    ),

                CARD("FUTURE\n", "I will say\n", "You will say\n", "He will say\n", "We will say\n", "You will say\n", "They will say",
                    ),

              ],
            ),
            Text(
              "TO TELL",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 25.0,
                color: Colors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CARD("PRESENT\n", "I tell\n", "You tell\n", "He/She/It tells\n", "We tell\n", "You tell\n", "They tell"),

                CARD("PAST\n", "I told\n", "You told\n", "He/She told\n", "We told\n", "You told\n", "They told",
                    ),

                CARD("FUTURE\n", "I will tell\n", "You will tell\n", "He will tell\n", "We will tell\n", "You will tell\n", "They will tell",
                    ),

              ],
            ),
            Text(
              "TO TALK",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 25.0,
                color: Colors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CARD("PRESENT\n", "I talk\n", "You talk\n", "He/She talks\n", "We talk\n", "You talk\n", "They talk",
                    ),

                CARD("PAST\n", "I talked\n", "You talked\n", "He/She talked\n", "We talked\n", "You talked\n", "They talked",
                    ),

                CARD("FUTURE\n", "I will talk\n", "You will talk\n", "He will talk\n", "We will talk\n", "You will talk\n", "They will talk",
                    ),

              ],
            ),
            Text(
              "TO LIVE",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 25.0,
                color: Colors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CARD("PRESENT\n", "I live\n", "You live\n", "He/She/It lives\n", "We live\n", "You live\n", "They live",
                    ),

                CARD("PAST\n", "I lived\n", "You lived\n", "He/She/It lived\n", "We lived\n", "You lived\n", "They lived",
                    ),

                CARD("FUTURE\n", "I will live\n", "You will live\n", "He will live\n", "We will live\n", "You will live\n", "They will live",
                    ),

              ],
            ),
            Text(
              "TO SPEAK",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 25.0,
                color: Colors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CARD("PRESENT\n", "I speak\n", "You speak\n", "He/She speaks\n", "We speak\n", "You speak\n", "They speak"),

                CARD("PAST\n", "I spoke\n", "You spoke\n", "He/She spoke\n", "We spoke\n", "You spoke\n", "They spoke"),

                CARD("FUTURE\n", "I will speak\n", "You will speak\n", "He will speak\n", "We will speak\n", "You will speak\n", "They will speak"),

              ],
            ),

          ],
        )
    )
    ),
            SizedBox(height: 40),
    ],

      ),
    );
  }
}

class CARD extends StatelessWidget {
  final String tense, a, b, c, d, e, f;

  CARD(this.tense, this.a, this.b, this.c, this.d, this.e, this.f);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil.instance.setWidth(350),
      height: ScreenUtil.instance.setHeight(750),
      child: Card(
          color: Colors.white,
          child:  Container(
            alignment: Alignment.center,
            padding: new EdgeInsets.all(0.0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(tense),
                Text(a),
                Text(b),
                Text(c),
                Text(d),
                Text(e),
                Text(f),
              ],
            ),
          ),
          ),
    );
  }
}
