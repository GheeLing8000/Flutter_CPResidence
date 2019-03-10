import 'package:flutter/material.dart';
import 'package:flutter_starter/screens/lodgings.dart' as _lodgingsPage;

class Residences extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Container(
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[


        new Icon(
            Icons.settings,
            size: 150.0,
            color: Colors.black12
        ),
        new Text('Residences tab content')
      ],
    ),
    //Content of tabs


  );
}

