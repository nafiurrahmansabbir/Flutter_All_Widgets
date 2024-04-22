import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class axfs extends StatelessWidget {
  const axfs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),

      // Aspect Ratio
      // body: Container(
      //   width: double.infinity,
      //   height: 300,
      //   color: Colors.redAccent,
      //   alignment: Alignment.center,
      //   child: AspectRatio(
      //     aspectRatio: 16/6,
      //     child: Container(
      //       color: Colors.blueAccent,
      //     ),
      //   ),
      // ),

      // fractionaly size box
      // body: Center(
      //   child: FractionallySizedBox(
      //     widthFactor: 0.6,
      //     heightFactor: 0.3,
      //     child: Container(
      //       color: Colors.red,
      //     ),
      //   ),
      // )

      body: Center(
        child: LayoutBuilder(
          builder: (BuildContext context,BoxConstraints constraints){
            if(constraints.maxWidth>700){
              return Container(height: 400,width: 400,color: Colors.red,);
            }else{
              return Container(height: 400,width: 400,color: Colors.blueAccent,);
            }
          },
        ),
      )

    );
  }
}
