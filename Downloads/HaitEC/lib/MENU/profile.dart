import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Profil'),
      ),
      body: ListView(
          scrollDirection: Axis.vertical,
          physics: AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.only(top: 25.0),
          children: <Widget>[
      Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 90.0,
                backgroundImage: AssetImage('images/me.jpg'),
              ),
            ),
            Center(
              child: Text(
                'Willio Jeanvilma',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 30.0,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(child: Text('Android & iOS Developer')),
            SizedBox(
              height: 10,
            ),
            Text(
              'About me',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 20.0,
                color: Colors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'My name is Willio Jeanvilma, CEO of HaitEC. I am an iOS and Android Developer. '
                  'I was born and raised in Saint-Marc, Haiti. '
                  'I went to Union des Normaliens and Presbyteral de Fleurenceau. '
                  'I am a Computer Science major and I enjoy coding. I currently live in New jersey, USA. ',
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Skills',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 20.0,
                color: Colors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Flutter | Dart | Java | JavaScript | HTML | CSS |'
                  '\n\nMySQL | C | Linux | Python | Git | GitHub |',
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Contact me',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 20.0,
                color: Colors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'jeanvilmawillio@gmail.com',
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '+1 848 469 4216 (whatsapp only)',
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Image.asset('images/ig.png',
                    height: ScreenUtil.instance.setHeight(90),
                    width: ScreenUtil.instance.setWidth(90), color: Colors.teal),
                SizedBox(
                  width: 10,
                ),
                GestureDetector (
                  onTap: (){
                    launch('https://www.instagram.com/williojeanvilma');
                  },
                  child: Text(
                    'Willio Jeanvilma (click here)', style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.teal[900]),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
     ]
      )
    );
  }
}
