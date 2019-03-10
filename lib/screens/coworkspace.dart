import 'package:flutter/material.dart';

class CoWorkSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'CO - WORKING SPACE',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'CUPPAGE PLAZA',
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
                Text(
                  'FROM ONLY SGD 5/h & SGD 15/day',
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0, top:10.0),
                  child: Text(
                    'OUR AMENITIES',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          /*3*/
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.wifi, 'WIFI'),
          _buildButtonColumn(color, Icons.cloud_upload, 'COMPUTER'),
          _buildButtonColumn(color, Icons.print, 'PRINTING'),
          _buildButtonColumn(color, Icons.flash_on, 'PHOTOCOPY'),
          _buildButtonColumn(color, Icons.content_copy, 'FAX'),
        ],
      ),
    );

    Widget textSectionDreamersAndTheTinkerersTitle = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        'FOR THE DREAMERS AND THE TINKERERS',
        softWrap: true,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    Widget textSectionBuzzOfTheCityTitle = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        'UNCOVER THE BUZZ OF THE CITY',
        softWrap: true,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    Widget textSectionCoWorkingOptionsTitle = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        'CO - WORK OPTIONS',
        softWrap: true,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    Widget textSectionOne = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
            'Charting new territories; forging new possibilities.Plunge yourself into our energising collaborative '
            'collaborative workspace at Cuppage Plaza today and meet like-minded makers fervently passionate about '
            'their craft. Uncover the plethora of opportunities that present themselves before you and feed your   '
            'imagination and passion with the boundless creative energy that defines our workspace.'
            'Experience for yourself the thrill of uncovering new possibilities and unexplored territories in an   '
            'immensely conducive environment for little discussions and big plans.',
        softWrap: true,
      ),
    );
    Widget textSectionTwo = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        'Cuppage Plaza is located in the heart of Orchard, the beating pulse of central Singapore, an address '
        'unbeatable in providing any of the amenities and the convenience that you crave. Located amidst the'
            ' biggest and brightest malls in the nation, we are your one-stop solution to fully immersing yourself'
            ' in hyper-productivity.With the wide range of lifestyle and F&B partners, CP will provide you with the'
            ' full suite of amenities and services that you could ever need in driving the completion of your biggest'
            'project yet. ',

        softWrap: true,
      ),
    );
    Widget textSectionThree = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        'From a mere SGD5/hr for a full desk equipped with all the basic essentials that will keep your mind and your machine'
        'hyper-charged and focussed, to SGD15 for a full day’s use of our hotdesks and collaborative space for fruitful'
        'discussions, there are plenty of collaborative work options and preferences that we are able to cater to upon request.'
        'As with your work, our co-working community is also dedicated to charting new possibilities and forging new frontiers. '
        'Enquire today to find out how we can drive your project to completion.',
        softWrap: true,
      ),
    );
    return MaterialApp(
      title: 'Co-Work Space',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Co-Work Space Details'),
        ),
        body: ListView(
          children: [
            titleSection,
            buttonSection,
            textSectionDreamersAndTheTinkerersTitle,
            textSectionOne,
            textSectionBuzzOfTheCityTitle,
            textSectionTwo,
            textSectionCoWorkingOptionsTitle,
            textSectionThree,
            Image.asset('assets/coworkspacemap.png',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

}