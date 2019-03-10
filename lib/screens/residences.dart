import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

class Residences extends StatelessWidget {
  var showCard = '';

  @override
  Widget build(BuildContext context) =>
      new Scaffold(
        //App Bar
        appBar: new AppBar(
          title: new Text(
            'Residences',
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
        body: Center(child: showCard != null ? _buildCard() : _buildStack()),
      
      );
}
// #docregion Card
  Widget _buildCard() => SizedBox(
  height: 500.0,
  child: Card(
    child: Column(
      children: [
        ListTile(
          title: Text('Lodgings Activity',
              style: TextStyle(fontWeight: FontWeight.w700)),
          subtitle: Text(''),
          leading: Icon(
            Icons.restaurant_menu,
            color: Colors.blue[500],
          ),
        ),
        ListTile(
          title: Text('Corporate Activity',
              style: TextStyle(fontWeight: FontWeight.w500)),
          subtitle: Text(''),
          leading: Icon(
            Icons.restaurant_menu,
            color: Colors.blue[500],
          ),
        ),
        ListTile(
          title: Text('Student Exchange Activity',
              style: TextStyle(fontWeight: FontWeight.w500)),
          subtitle: Text(''),
          leading: Icon(
            Icons.restaurant_menu,
            color: Colors.blue[500],
          ),
        ),
        ListTile(
          title: Text('Medical Activity',
              style: TextStyle(fontWeight: FontWeight.w500)),
          subtitle: Text(''),
          leading: Icon(
            Icons.restaurant_menu,
            color: Colors.blue[500],
          ),
        ),
        Divider(),
        ListTile(
          title: Text('(Co-Work Space Activity',
              style: TextStyle(fontWeight: FontWeight.w700)),
          leading: Icon(
            Icons.contact_phone,
            color: Colors.blue[500],
          ),
        ),
        ListTile(
          title: Text('Cuppage Plaza'),
          leading: Icon(
            Icons.contact_mail,
            color: Colors.blue[500],
          ),
        ),
      ],
    ),
  ),
);
// #enddocregion Card
// #docregion Stack
  Widget _buildStack() => Stack(
  alignment: const Alignment(0.6, 0.6),
  children: [
    CircleAvatar(
      backgroundImage: AssetImage('images/pic.jpg'),
      radius: 100.0,
    ),
    Container(
      decoration: BoxDecoration(
        color: Colors.black45,
      ),
      child: Text(
        'Mia B',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  ],
);
// #enddocregion Stack






