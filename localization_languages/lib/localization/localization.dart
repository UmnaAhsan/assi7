
import 'package:flutter_localization/flutter_localization.dart';

List<MapLocale> LOCALS = [
  MapLocale("en", LocalData.EN),
  MapLocale("en", LocalData.DE),
  MapLocale("en", LocalData.ES),
];
mixin LocalData{
  static const String title = 'title';
  static const String body = 'body';

  static const Map<String, dynamic> EN = {
    title : "Localization",
    body:  "Welcome to this localization Flutter Application"
  };
  
  static const Map<String, dynamic> DE = {
    title : "Lokalisierung",
    body:  "Willlommen bei dieser lokalisierten flutter-"
  };

   static const Map<String, dynamic> ES = {
    title : "Localización",
    body:  "Bienvenida a esto Localización Aleteo aplicación",
  };
}