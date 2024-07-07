import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:localization_languages/localization/localization.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(LocalData.title.getString(context),),),
    );
  }
}