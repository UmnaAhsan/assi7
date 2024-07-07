import 'package:finger_print_scan/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';

class fingerauth extends StatefulWidget {
  const fingerauth({super.key});

  @override
  State<fingerauth> createState() => _fingerauthState();
}

class _fingerauthState extends State<fingerauth> {

final LocalAuthentication auth = LocalAuthentication();

checkAuth()async{
  bool isAvailable;
  isAvailable=await auth.canCheckBiometrics;
  print(isAvailable);
  if(isAvailable){
    
    bool result=await auth.authenticate(
      localizedReason: 'Scan your fingerprint to proceed',
      options: AuthenticationOptions(biometricOnly: true,)
    );
    if(result){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
    }
     else{
      print("Permission Denied");
     }

  }else{
    print("No biometric sensor detected");
  } 
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(children: [
        SizedBox(height: 80,),
        Center(child:
         Text("LOGIN",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.black),)),
         SizedBox(height: 50,),
         Container(height: 160,width:350,
           child: Image.network("https://t4.ftcdn.net/jpg/02/53/88/11/360_F_253881133_IYEIf0Hocwfv2lvjKlcHtaeHBxo5N4ZV.jpg",
           fit: BoxFit.cover,),
         ),
         SizedBox(height: 30,),
         Text("Fingerprint Auth",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
         Padding(padding: EdgeInsets.symmetric(horizontal: 28,vertical: 5),
         child: Text("Authenticate using fingerprint to"
         "proceed in application",style: TextStyle(color: Colors.grey),),),
         SizedBox(height: 06,),
         ElevatedButton(onPressed: (){
            Get.bottomSheet(
             Container(
              height: 300,width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                //  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Align(alignment: Alignment.topLeft,
                    child: Text("Authentication required",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                  ),
                   Align(alignment: Alignment.topLeft,
                     child: Text("Verify identity",
                                       style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black)),
                   ),
                   Align(alignment: Alignment.topLeft,
                     child: Text("Scan your fingerprint to proceed",
                                       style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black)),
                   ),
                  SizedBox(height: 10,),
                  Container(height: 180,width: 200,child:
                   Image.network("https://t4.ftcdn.net/jpg/02/53/88/11/360_F_253881133_IYEIf0Hocwfv2lvjKlcHtaeHBxo5N4ZV.jpg",fit: BoxFit.cover,),),
                   InkWell(onTap: (){
                    checkAuth();
                   },
                    child: Align(alignment: Alignment.bottomLeft,
                      child: Text("USE PATTERN", style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black))))
                ],),
              ),
             ),
            enableDrag: false,
            isDismissible: false,
            backgroundColor: Colors.white
           
            );
           // checkAuth();
         }, 
           child: Text("Authentication",
           style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue)),
         )
            ],),
      ),
    );
  }
}