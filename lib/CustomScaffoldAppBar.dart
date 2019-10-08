import 'package:flutter/material.dart';
class CustomScaffoldAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final double height;
  final Color titleColor;
  final double elevation;
  CustomScaffoldAppBar(this.title, {
    this.height = 50.0,
    this.titleColor = Colors.black,
    this.elevation = 0.0,
    Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return new AppBar(
          leading: InkWell(
            child:Icon(
              Icons.arrow_back_ios,
              size: 20.0
            ),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          title: Text(this.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: titleColor)
          ),
          backgroundColor:Colors.white,
          elevation: elevation,
          iconTheme: new IconThemeData(color: Colors.black),
        );
  }

  @override
  Size get preferredSize => new Size.fromHeight(height);
}