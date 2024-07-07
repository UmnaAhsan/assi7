import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:push_notifications/firebase_options.dart';
import 'package:push_notifications/home.dart';
import 'package:push_notifications/push_noti.dart';

final navigatorKey = GlobalKey<NavigatorState>();

//function to listen the background changes
Future _firebaseBackgroundMessage(RemoteMessage message)async{
  if(message.notification != null){
    print("Some notification Recived");
  }
}


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message){
  if(message.notification != null){
    print('Background Notification Tapped');
    navigatorKey.currentState!.pushNamed("/message", arguments: message);
  }
});
  
  PushNotifications.init();
  if(!kIsWeb){
    PushNotifications.localNotiInit();
  }
  FirebaseMessaging.onBackgroundMessage(_firebaseBackgroundMessage);


  FirebaseMessaging.onMessage.listen((RemoteMessage message){
    String payloadData = jsonEncode(message.data);
    if(message.notification != null){
      PushNotifications.showSimpleNotification(
        title: message.notification!.title!,
        body: message.notification!.body!,
        payload: payloadData
      );
    }
  });

  final RemoteMessage? message = 
  await FirebaseMessaging.instance.getInitialMessage();

  if(message != null){
    print("Launched from terminated state");
    Future.delayed(Duration(seconds: 1), (){
      navigatorKey.currentState!.pushNamed("/message", arguments:  message);
    });
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:home()
      )
    );
  }
}
