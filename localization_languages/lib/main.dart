import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:localization_languages/localization/localization.dart';
import 'package:localization_languages/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

final FlutterLocalization localization = FlutterLocalization.instance;

@override
  void initState() {
   configurelocalization();
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     supportedLocales: localization.supportedLocales,
     localizationsDelegates: localization.localizationsDelegates,
     home: home(),
    );
  }

 void configurelocalization(){
    localization..init(mapLocales: LOCALS, initLanguageCode: "de");
    localization.onTranslatedLanguage = onTranslatedLanguage;
  }

  void onTranslatedLanguage(Locale? locale){
    setState(() {
      
    });
   }
}
