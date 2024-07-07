import 'package:darktheme/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Settings"),),
      body:Consumer(
        builder: (context, UiProvider notifier, child) {
          return Column(children: [
            ListTile(
              leading: Icon(Icons.dark_mode),
              title: Text("Dark Theme"),
              trailing: Switch(
          value:  notifier.isDark, 
          onChanged: (value)=>notifier.changeTheme()),
            )
          ],);
        }
      )
    );
  }
}