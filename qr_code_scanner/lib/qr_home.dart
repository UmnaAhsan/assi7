import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/generate.dart';
import 'package:qr_code_scanner/scan.dart';

class qrhome extends StatefulWidget {
  const qrhome({super.key});

  @override
  State<qrhome> createState() => _qrhomeState();
}

class _qrhomeState extends State<qrhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          ElevatedButton(onPressed: (){
         Get.to(scan());
          }, child: Padding(
            padding: const EdgeInsets.all(5),
            child: Text("Scan QR Code",style: TextStyle(fontSize: 20,color: Colors.purple),),
          )),
          SizedBox(height: 15,),
           ElevatedButton(onPressed: (){
           Get.to(generate());
          }, child: Padding(
            padding: const EdgeInsets.all(5),
            child: Text("Generate QR Code",style: TextStyle(fontSize: 20,color: Colors.purple),),
          )),
        ],),
      ),
    );
  }
}