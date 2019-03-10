import 'package:flutter/material.dart';

class CoWorkSpace extends StatelessWidget {
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
          new Text('Co-Work Space tab content')
        ],
      )
  );
}