import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class PushNotifications{
  static final _firebaseMessaging = FirebaseMessaging.instance;
  static final FlutterLocalNotificationsPlugin 
      _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  // request notification permission
 static Future init()async{
  await _firebaseMessaging.requestPermission(
    alert: true,
    announcement: true,
    badge:  true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  if(kIsWeb){
  final token = await _firebaseMessaging.getToken(vapidKey: "BLrxd6OgbR-AQcNuZRLf4c4lZln35ut4vnAdrKi4gK0b1aKzvYYGr50vkNJ8qNGxU0r_v0Hkeh365S9Dk-2FxYE");
  print("device on web token: $token");
 }
 else{
  final token = await _firebaseMessaging.getToken();
  print("device on web token: $token");
 }
 }

 static Future localNotiInit()async{

 }

  String title;
  String? body;
  String dataTitle;
  String? dataBody;

   //get the device fcm token
  // final token = await _firebaseMessaging.getToken();
  // print("device token: $token");
    
}