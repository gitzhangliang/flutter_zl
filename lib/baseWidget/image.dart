import 'package:flutter/material.dart';
//void main() => runApp(new MaterialApp(home: new Image.asset(
//  "images/more.png",
//  width: 100.0,
//)));

void main() => runApp(new MaterialApp(home: new ImageWidget()));

class ImageWidget extends StatelessWidget{
  String icons = "";
  ImageWidget(){
    icons += "\uE914";
// error: &#xE000; or 0xE000 or E000
    icons += " \uE000";
// fingerprint: &#xE90D; or 0xE90D or E90D
    icons += " \uE90D";
  }

// accessible: &#xE914; or 0xE914 or E914

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("image"),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new Image.asset(
              "images/more.png",
              width: 100.0,
            ),
            Image(
              image: NetworkImage(
                  "http://172.16.227.39:8888/register/getVerifyCode/123"),
//              width: 100.0,
//              color: Colors.blue,
//              colorBlendMode: BlendMode.difference,
            ),
            Text(icons,
              style: TextStyle(
                  fontFamily: "MaterialIcons",
                  fontSize: 24.0,
                  color: Colors.green
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.accessible,color: Colors.green,),
                Icon(Icons.error,color: Colors.green,),
                Icon(Icons.fingerprint,color: Colors.green,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
