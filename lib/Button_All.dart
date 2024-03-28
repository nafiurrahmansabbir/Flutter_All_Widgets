import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Button_all extends StatelessWidget {
  const Button_all({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BT(),
    );
  }
}

class BT extends StatelessWidget {
  const BT({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("All Button"),
        centerTitle: true,
      ),
      // body: ListView(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(15.0),
      //       child: ElevatedButton(onPressed: (){}, child: Text("ElevatedButton")),
      //     ),
      //   ],
      // )
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.red,//text colour
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(
                        width: 2,
                        color: Colors.orange, //side er colour
                      )
                    ),

                    //Text style hbe..
                    textStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700, //bold hbe
                    ),
                    //pading dite pari
                    padding: EdgeInsets.all(16),
                  ),


                  onPressed: (){},
                  child: Text("ElevatedButton")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.greenAccent,
                    textStyle: TextStyle(
                      fontSize: 24,
                      
                    ),
                  ),
                  onPressed: (){}, child: Text("Text Button"),
              ),
            ),
            IconButton(
              style: IconButton.styleFrom(
                foregroundColor: Colors.red,

              ),
                iconSize: 45,

                onPressed: (){}, icon: Icon(Icons.add_call),
            ),
            

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Tap kora sikbo : ",style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),),
                  //long prest,ba onno konopress er jnno gestureDetector lagbe,aida kintu button na.
                  GestureDetector(
                    onDoubleTap: (){print("Double Tap");},
                    onLongPressCancel: (){print("Calcel");},
                    child: Column(
                      children: [
                        Text("Click"),
                        Icon(Icons.add),
                        
                      ],
                    )
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  // Aitau kintu Button Na...long prest,ba onno konopress er jnno gestureDetector lagbe
                  InkWell(
                    splashColor: Colors.orange,
                    radius: 100,
                    borderRadius: BorderRadius.circular(2),
                    onDoubleTap: (){print("Double Tap");},
                      onLongPress: (){},
                    child: Column(
                      children: [
                        Icon(Icons.add),
                        Text("data"),
                        Row(
                          children: [
                            Text("Arekta Upai Ase \n  \" InkWell \"  ",style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),),
                          ],
                        ),
                      ],
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}

