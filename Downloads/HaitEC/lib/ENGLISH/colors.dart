import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';

void main() => runApp(colors());

class colors extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    FlutterPluginTts.setLanguage("en-US");
    FlutterPluginTts.setSpeechRate(0.4);

    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);

    return Scaffold(
      appBar: AppBar(title: Text("English"), backgroundColor: Colors.teal),

      body: SingleChildScrollView( child:
      Container(
        child: Column(
          children: <Widget>[
            color("BLUE", Colors.blue, "RED", Colors.red),
            color("BLACK", Colors.black, "GREY", Colors.grey),
            color("PINK", Colors.pink, "YELLOW", Colors.yellow),
            color("AMBER", Colors.amber, "TEAL", Colors.teal),
            color("GREEN", Colors.green, "BROWN", Colors.brown),
            color("INDIGO", Colors.indigo, "LIME", Colors.lime),
                color("ORANGE", Colors.orange, "PURPLE", Colors.purple),
            SizedBox(height: 40),
          ],
        ),
      ),
      ),
    );
  }

}
class color extends StatelessWidget{
  String col1, col2;
  Color _color1, _color2;
  color(this.col1, this._color1, this.col2, this._color2);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Container(height: ScreenUtil.instance.setHeight(500),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Column( children: <Widget>[
          GestureDetector(
            child: Image.asset("images/redball.png", color: _color1, height:
            ScreenUtil.instance.setHeight(350),),
            onTap: (){
              FlutterPluginTts.speak(col1);
            },),
          Text(this.col1, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
        ],
        ),
        Column( children: <Widget>[
          GestureDetector(child:
          Image.asset("images/redball.png", color: _color2, height:
          ScreenUtil.instance.setHeight(350),),
            onTap: (){
              FlutterPluginTts.speak(col2);
            },),
          Text(col2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
        ],

        ),

      ],
    ),
    );
  }}