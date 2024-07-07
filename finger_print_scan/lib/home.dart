import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text("Home Page",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
         Text("Authenticate using fingerprint to"
         "proceed in application",style: TextStyle(color: Colors.grey),),
      ],),
    );
  }
}