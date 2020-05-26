import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class about extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('About'),
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
                        backgroundImage: AssetImage('images/log1024.png'),
                      ),
                    ),
                    Center(child: Text('Android & iOS')),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'About HaitEC',
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
                            "HaitEC se yon aplikasyon pou telefòn ki montre tout moun, spesyalman Ayisyen yo, "
                            "Anglè, Espanyòl ak Java ki se yon langaj pwogramasyon, nan lang kreyòl. "
                            "HaitEC ekri nan lang kreyòl Ayisyen an, sa vle di l ap fasil pou w li ak Konprann. "
                            "Nou genyen tradiksyon, pwononsyasyon, diksyonè, tès ak jwèt k ap ede nou aprann pale lang yo byen rapid."
                            "\n\nAntre nan gwoup telegram nou an pou ka pratike ak etidyan nou yo! Klike nan lyen anba a.\n",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 20.0,
                      ),
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
