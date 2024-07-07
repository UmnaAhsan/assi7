import 'package:flutter/material.dart';
import 'package:webview/webview.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(appBar: AppBar(title: Text("Webview"),),
        body: WebView
        )
    );
  }
}
