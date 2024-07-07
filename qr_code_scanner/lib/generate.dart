import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class generate extends StatefulWidget {
  const generate({super.key});

  @override
  State<generate> createState() => _generateState();
}

class _generateState extends State<generate> {
TextEditingController value=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [

            value.text.isEmpty ? Container():QrImageView(
              data: value.text,
            version: QrVersions.auto,
            size: 200.0,
            embeddedImage: NetworkImage(""),
            ),




          TextField(
             controller: value,
             decoration: InputDecoration(hintText: 'Enter value to generate code'),
              ),
            Center(child: ElevatedButton(onPressed: (){
              setState(() {
                
              });
            }, child:Text("Generate QR Code",style: TextStyle(fontSize: 20,color: Colors.purple),),))
          
        ],)
    );
  }
}