import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: FirstScreen(),);
  }
}
class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool  isSwitched = true;
  bool AndroidSwitched = true;
  bool IosSwitched  = true;
  bool AdaptiveSwitched = true;
  bool ImageSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Switch state: isSwitched"),
        Switch(value: isSwitched,
            activeColor: Colors.deepOrangeAccent,
            activeTrackColor: Colors.deepOrangeAccent,
            activeThumbImage: NetworkImage("https://cdn.pixabay.com/photo/2017/07/07/12/34/lime-2481358_1280.jpg"),
            onChanged: (bool newvalue)
        {
          setState(() {
            isSwitched=newvalue;
          }
          );
        }
        ),
        Column(
          children: [
            Text("Android Switched")
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        Switch(value: AndroidSwitched,
            activeColor: Colors.orangeAccent,
            activeTrackColor: Colors.lightBlueAccent,
            onChanged: (bool value){
          setState(() {
            AndroidSwitched=value;

          }
          );
        }
        ),
        Column(
          children: [
            Text("Ios Switched")
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        Switch(value: IosSwitched,
            activeColor: Colors.black,
            activeTrackColor: Colors.pinkAccent,
            onChanged: (bool value2){
          setState(() {
            IosSwitched=value2;
          });
        }
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Adaptive Switch"),
          ],
        ),
        Switch(value: AdaptiveSwitched,
            activeColor: Colors.red,
            activeTrackColor: Colors.orange,
            onChanged: (bool value3){
          setState(() {
            AdaptiveSwitched=value3;
          });
        }
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Image Switch")
          ],
        ),
        Switch(value: ImageSwitched,
            activeTrackColor: Colors.black12,
            activeThumbImage: NetworkImage("https://cdn.pixabay.com/photo/2016/08/22/10/17/emoticon-1611647_1280.png[ 66+      "),
            onChanged: (bool value4){
          setState(() {
            ImageSwitched=value4;
          });
        })
        
      ],
    ),
    );
  }
}

