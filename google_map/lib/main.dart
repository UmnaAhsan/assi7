import 'package:flutter/material.dart';
import 'package:google_map/google.page.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home:Scaffold(
      body:gmap()
     )
    );
  }
}
