import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}p(

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Locale('en','US'),
      fallbackLocale: Locale('en','US'),
      tra

       theme: ThemeData.light(),
       darkTheme: ThemeData.dark(),

       debugShowCheckedModeBanner: false,

    );
     
    
  }
}
