import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// Module 6 class 2
// Text_Center_Image_Icon
class Text_Center_IMG_Icon extends StatelessWidget {
  const Text_Center_IMG_Icon({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TCTI(),
    );
  }
}

class TCTI extends StatelessWidget {
  const TCTI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text("Text_Center_Image_Icon"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        // Eida Hoilo Text:
        // child: Text(
        //   "Hellow World .   Hellow World .Hellow World .   Hellow World .Hellow World .   Hellow World .Hellow World .   Hellow World .",
        //   textAlign: TextAlign.center,
        //   maxLines: 2,
        //   style: TextStyle(
        //     fontSize: 24,
        //     fontWeight: FontWeight.w600, //bold hoilo
        //     backgroundColor: Colors.red,
        //     color: Colors.white70,
        //     overflow: TextOverflow.ellipsis,
        //   ),
        // ),


        // Icons
        // child: Icon(Icons.android,size: 90, color: Colors.green,),

      //   Image :
      //   IMG nilam Internet theke
      //   child: Image.network("https://images.pexels.com/photos/20414837/pexels-photo-20414837/free-photo-of-a-person-sitting-on-a-chair-under-a-tree.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
        child: Image.asset('images/panda.jpg',width: 300,height: 300,fit: BoxFit.cover,), //local theke pic nilam.
      ),
    );
  }
}

