import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class gmap extends StatefulWidget {
  const gmap({super.key});

  @override
  State<gmap> createState() => _gmapState();
}

class _gmapState extends State<gmap> {
   LatLng mylatlong=LatLng(26.850000, 80.949997);
  String address='Karachi';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: mylatlong,
          zoom: 12),
          markers: {
           Marker(
            infoWindow: InfoWindow(title: address),
            position: mylatlong,
            draggable: true,          
            markerId: MarkerId('1'),
            onDragEnd: (value){
              print(value);
            }
            )
          },

          // onTap: (value){
          //   se
          // }
          )
    );
  }
}