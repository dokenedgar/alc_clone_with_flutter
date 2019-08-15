import 'package:flutter/material.dart';

class SecondProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            getProfilePicture(),
            Text(
              'Doken Edgar',
              style: TextStyle(fontSize: 30.0, color: Colors.indigo),
            ),
            Divider(),
            getRowText('Track:', 'Android'),
            getRowText('Country:', 'Nigeria'),
            getRowText('Phone Number:', '08162159452'),
            getRowText('Email:', 'dokenedgarjr@gmail.com'),

          ],
        ),
      ),
    );
  }

  Widget getProfilePicture() {
    AssetImage assetImage = AssetImage('images/headShot.png');
    Image image = Image(
      image: assetImage,
    );
    return Container(
      child: image,
    );
  }

  Widget getRowText(String textTitle, String value) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      child: Row(
        children: <Widget>[
          Text(
            textTitle,
            style: TextStyle(fontSize: 20.0, color: Colors.indigo),
          ),
          Spacer(),
          Text(
            value,
            style: TextStyle(fontSize: 20.0, color: Colors.indigo),
          ),
        ],
      )
    );
  }
}