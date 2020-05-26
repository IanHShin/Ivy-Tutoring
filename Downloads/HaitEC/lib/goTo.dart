import 'package:flutter/material.dart';

class goTo extends StatelessWidget{
  final String PageName;
  goTo(this.PageName);
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
          color: Colors.amberAccent,
          child: ListTile(
            title: Text(PageName,
              textAlign: TextAlign.center,
              style: TextStyle( fontSize: 17,),
            ),
          ),
        ),
        Divider(),
      ],
    );
  }
}