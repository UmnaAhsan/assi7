import 'package:flutter/material.dart';
///import 'package:easy_localization/easy_localization.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
 // const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}




// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   //const MyApp({super.key});
// final FlutterLocalization localization = FlutterLocalization.instance;

// @override
//   void initState() {
//    configurelocalization();
//     super.initState();
//   }

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
     
//     );
//   }

  void configurelocalization(){
    localization..init(mapLocales: [], initLanguageCode: "en";
    localization.onTranslatedLanguage = onTranslatedLanguage;
    );

  }
  void onTranslatedLanguage(Locale? locale){
    setState(() {
      
    });
   }
// }

//class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
              Center(child: Text('Hi Guys',style: TextStyle(fontSize: 25),)),
                    Center(child: Text('from zaynab',style: TextStyle(fontSize: 25),)),
                          Center(child: Text('please subscribe',style: TextStyle(fontSize: 25),)),
                          SizedBox(height: 20,),
                          ElevatedButton(onPressed: (){

                          }, child: Text("Change to spanish")),
                           ElevatedButton(onPressed: (){

                          }, child: Text("Change to spanish"))
        ],)
      ),
    );
  }
}