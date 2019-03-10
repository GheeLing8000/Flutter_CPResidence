import 'package:flutter/material.dart';
import 'package:flutter_starter/main.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';



class LodgingsDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Container(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Icon(
              Icons.home,
              size: 150.0,
              color: Colors.black12
          ),
          new Text('Lodgings details content')
        ],
      )
  );
}
