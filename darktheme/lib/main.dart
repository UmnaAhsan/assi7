import 'package:darktheme/provider/provider.dart';
import 'package:darktheme/view/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => UiProvider()..init(),
        
      
      child: Consumer<UiProvider>(
        builder: (context, UiProvider  notifier, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Dark Theme',
            themeMode: notifier.isDark? ThemeMode.dark : ThemeMode.light,
            darkTheme: notifier.isDark? notifier.darkTheme : notifier.lightTheme,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: home(),
          );
        }
      ),
    );
   
  }
}
