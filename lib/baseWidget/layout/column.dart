import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home: new ColumnWidget()));

class ColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max, //有效，外层Colum高度为整个屏幕
          children: <Widget>[
//            Container(
//              color: Colors.red,
//              child: Column(
//                mainAxisSize: MainAxisSize.max,//无效，内层Colum高度为实际高度
//                children: <Widget>[
//                  Text("hello world "),
//                  Text("I am Jack "),
//                ],
//              ),
//            ),
            Expanded(
              child: Container(
                color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, //垂直方向居中对齐
                  children: <Widget>[
                    Text("hello world "),
                    Text("I am Jack "),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}