import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'profile.dart';
import 'SecondProfile.dart';
import 'AboutALC.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ALC 4 Phase 1"),
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Center(
                child: Text(
                  'ALC Challenge',
                  style: TextStyle(
                    fontSize: 40.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 125.0),
                child: getRaisedButtoon('My Profile', context),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: getRaisedButtoon('Another Profile', context),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: getRaisedButtoon('About ALC', context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget heading() {
    return Text('ALC Challenge');
  }

  Widget getRaisedButtoon(String button_title, BuildContext context) {
    return RaisedButton(
      color: Colors.indigo,
      textColor: Colors.white,
      child: Text(button_title),
      onPressed: () {
        if (button_title == 'My Profile') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Profile()));
        } else if (button_title == 'Another Profile') {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SecondProfile()));
        } else if (button_title == 'About ALC') {

          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AboutALC())
          );

//          _launchURL();
        }
      },
    );
  }


  _launchURL() async {
    const url = 'https://www.andela.com';
    if( await canLaunch(url)) {
      await launch(url, forceWebView: true, enableJavaScript: true);
    }
    else {
      throw 'Could not launch $url';
    }
  }

}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}
