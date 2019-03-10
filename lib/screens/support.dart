import 'package:flutter/material.dart';

class Support extends StatelessWidget {
  //@override
  //Widget build(BuildContext context) {
    @override
    Widget build(BuildContext context) =>
        new Scaffold(

          //App Bar
          appBar: new AppBar(
            title: new Text(
              'Support',
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

          //Content of tabs
          body: new ListView(
            children: <Widget>[
              new ListTile(
                leading: const Icon(Icons.location_on),
                title: const Text('Our Address'),
                subtitle: const Text('76 Orchard Road, Singapore 238844'),
              ),
              new ListTile(
                leading: const Icon(Icons.phone),
                title: const Text('Our Phone'),
                subtitle: const Text('+65 6735 1911'),
                trailing: const Icon(Icons.check_circle, color: Colors.green,),
              ),
              new ListTile(
                leading: const Icon(Icons.email),
                title: const Text('Our Contact Email'),
                subtitle: const Text('hello@cpresidences.com'),
                //mainAxisAlignment: MainAxisAlignment.center,
                //children: <Widget>[
                //new Text('About support space')
                //],
              ),
              const Divider(
                height: 1.0,
              ),
              new ListTile(
                leading: const Icon(Icons.person),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: " Full Name",
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(Icons.phone),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Phone",
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(Icons.email),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Email",
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(Icons.home),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Apartment",
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(Icons.calendar_today),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Check-in Date",
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(Icons.calendar_today),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Check-out Date",
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(Icons.message),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Messages",
                  ),
                ),
              ),
            ],
          ),
        );

}
