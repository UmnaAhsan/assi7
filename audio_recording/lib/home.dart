import 'dart:io';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';
import 'package:path/path.dart' as p;

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {


final AudioRecorder audioRecorder = AudioRecorder();
final AudioPlayer audioPlayer = AudioPlayer();

String? recordingPath;
bool isRecording = false , isPlaying = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
   floatingActionButton: _recordingButton(),
   body: _buildUI()
    );
  }

Widget _buildUI(){
  return SizedBox(
    width: MediaQuery.sizeOf(context).width,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      if(recordingPath != null) 
      MaterialButton(
        onPressed: ()async{
            if(audioPlayer.playing){
              audioPlayer.stop();
              setState(() {
                isPlaying = false;
              });
            }else{
               await audioPlayer.setFilePath(recordingPath!);
               audioPlayer.play();
               setState(() {
                 isPlaying = true;
               });
            }
        },
        color: Theme.of(context).colorScheme.primary,
        child: Text(isPlaying 
        ? "Stop Playing Recording" : "Start Playing Recording",
        style: TextStyle(color: Colors.white),
        ),
        ),
      if(recordingPath == null)
      Text(
        "No Recording Found, :("
      )
    ],),
  );
}


Widget _recordingButton(){
  return FloatingActionButton(onPressed: ()async{
    if(isRecording){
     String? filePath = await audioRecorder.stop();
     if (filePath != null) {
      setState(() {
        isRecording = false;
        recordingPath = filePath;
      });
     }
    }else{
      if(await audioRecorder.hasPermission()){
        final Directory appDocumentDir = await getApplicationDocumentsDirectory();
        final String filePath = p.join(appDocumentDir.path, "recording.wav");
        await audioRecorder.start(RecordConfig(),path: filePath,);
        setState(() {
          isRecording = true;
          recordingPath = null;
        });
      }
    }

  },child: Icon(
    isRecording ? Icons.stop : Icons.mic),);
}

}