import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home: new StackWidget()));

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ConstrainedBox(
        constraints: BoxConstraints.expand(),
//          child: Stack(
//            alignment:Alignment.center , //指定未定位或部分定位widget的对齐方式
//            children: <Widget>[
//              Container(child: Text("Hello world",style: TextStyle(color: Colors.white)),
//                color: Colors.red,
//              ),
//              Positioned(
//                left: 18.0,
//                child: Text("I am Jack"),
//              ),
//              Positioned(
//                top: 18.0,
//                child: Text("Your friend"),
//              )
//            ],
//          ),
        child: Stack(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "图片验证码"),
            ),
            Positioned(
              right: 30.0,
              child: Image(
                image: NetworkImage(
                  "http://172.16.227.39:8888/register/getVerifyCode/123",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
