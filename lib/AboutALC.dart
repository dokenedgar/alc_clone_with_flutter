import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class AboutALC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
/*
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WebView example'),
        backgroundColor: Colors.indigo,
      ),
      body: WebView(
        initialUrl: 'https://www.aun.edu.ng',
        javascriptMode: JavascriptMode.unrestricted,
      ),

     //body: ,
    );
*/

    return new WebviewScaffold(
      url: 'https://www.google.com',
      appBar: new AppBar(
        title: Text('Webview Plugin'),
        backgroundColor: Colors.indigo,
      ),
      hidden: true,
      withJavascript: true,
      withLocalStorage: true,
    );



  }
}
