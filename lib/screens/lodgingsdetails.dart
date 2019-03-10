import 'package:flutter/material.dart';

class LodgingsDetails extends StatelessWidget {

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
                    'PRIVATE ROOM + SHARED SPACES',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Apartment',
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
                Text(
                  'Accomodations: 16',
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
                Text(
                  'Accomodations: 16',
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
                Text(
                  'Check out: 11 AM',
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
                Text(
                  'Bathrooms: 2',
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
                Text(
                  'Check in: Anytime after 3PM',
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
                Text(
                  'bedrooms: 4',
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
                Text(
                  'Room type: Private Room + Shared Spaces',
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
                Text(
                  'Beds: 4',
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
                Text(
                  'Property type: Apartment',
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0, top:10.0),
                  child: Text(
                    'Price:  SGD1,700/month',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Text(
                    'Cancellation',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Text(
                    'Strict',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Safety Features',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  '> Smoke detector',
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
                Text(
                  '> Fire extinguisher',
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
                Text(
                  '> Safety card',
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
                Text(
                  '> First aid kit',
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
                Text(
                  '> Carbon monoxide detector',
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'FLEXIBLE BED ARRANGEMENT'),
          _buildButtonColumn(color, Icons.near_me, 'COMPLIMENTARY 1000MBPS WIFI'),
          _buildButtonColumn(color, Icons.share, 'DEDICATED CUSTOMER CARE'),
        ],
      ),
    );
    Widget buttonSectionSecondRow = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call,'TAILOR SERVICE(ON REQUEST)'),
          _buildButtonColumn(color, Icons.near_me,'FULL FURNISHING & AIR COND'),
          _buildButtonColumn(color, Icons.share,'FULLY EQUIPPED KITCHEN'),
        ],
      ),
    );
    Widget buttonSectionThirdRow = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call,'  MAINTENANCE & REPAIRS    '),
          _buildButtonColumn(color, Icons.near_me,'    LOCAL  TV CHANNELS  '),
          _buildButtonColumn(color, Icons.share,'   AIRPORT PICK-UP ( ADD ON )'),
        ],
      ),
    );
    Widget textSectionNearbyPlacesTitle = Container(
        padding: const EdgeInsets.all(32.0),
        child: Text(
           ' Nearby Places of Interest',
          softWrap: true,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        'The Centrepoint is a popular shopping destination with both local shoppers and vistors from abroad.  '
            'Located prominently at Orchard Road, the Centrepoint features a good mix of well-known retailers '
            'and a wide choice of qulaity merchandise.The Centrepoint won a silver in the Orchard Rd Best     '
            'Building organised by Orchard Road Business Association in 2009.It set a new Singapore record for'
            'Tallest Christmas Tree Made of CUpcakes(Singapore Book of Records) on 13 Nov 2009 and Tallest    '
            'chocolate Sculpture( Guiness World REcords and Singapore Book of Records) on 2 Dec 2008 .         ',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Lodgings Details',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lodgings Details'),
        ),
        body: ListView(
          children: [
            Image.asset('assets/lodgingsdetailspic.png',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            buttonSectionSecondRow,
            buttonSectionThirdRow,
            textSectionNearbyPlacesTitle,
            textSection,
            Image.asset('assets/nearbyplacesone.png',
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




