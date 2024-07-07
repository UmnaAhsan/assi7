import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';

class scan extends StatefulWidget {
  const scan({super.key});

  @override
  State<scan> createState() => _scanState();
}

class _scanState extends State<scan> {
String scannedResult='';
startscan()async{
var result;
try{
  result=await FlutterBarcodeScanner.scanBarcode(
    'fffff',
    'Cancel',
    true,
    ScanMode.QR);
}on PlatformException catch(e){
  result = 'Failed to get platform version.';
  Get.snackbar('Error occured', e.code);
}catch(e){
  Get.snackbar('Error occured', e.toString());
}
if (!mounted)return;
setState(() {
  scannedResult=result;
});

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Center(child: Text("Scanned Value - $scannedResult",)),
        Center(
          child: ElevatedButton(onPressed: (){
               startscan();
          }, child: Text("Start Scan",style: TextStyle(fontSize: 20),)),
        )
      ],)
    );
  }
}