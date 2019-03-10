import 'package:flutter/material.dart';

class MedicalActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      new Scaffold(

        //App Bar
        appBar: new AppBar(
          title: new Text(
            'Medical Activity',
            style: new TextStyle(
              fontSize: Theme
                  .of(context)
                  .platform == TargetPlatform.iOS ? 17.0 : 20.0,
            ),
          ),
          elevation: Theme
              .of(context)
              .platform == TargetPlatform.iOS ? 0.0 : 4.0,
        ),

        body: Text('Medical Activities Content'),
      );

}