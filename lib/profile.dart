import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              getProfilePicture(),
              Text(
                'Doken Edgar',
                style: TextStyle(fontSize: 30.0, color: Colors.indigo),
              ),
              Divider(),
              getText('Track: Android'),
              getText('Country: Nigeria'),
              getText('Email: dokenedgarjr@gmail.com'),
              getText('Phone Number: 08162159452'),
            ],
          ),
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

  Widget getText(String textTitle) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Text(
        textTitle,
        style: TextStyle(fontSize: 20.0, color: Colors.indigo),
      ),
    );
  }
}
