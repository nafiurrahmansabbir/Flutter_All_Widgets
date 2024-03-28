
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// Module 7 class 1

class Col_Row extends StatelessWidget {
  const Col_Row({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myPage(),
    );
  }
}

class myPage extends StatelessWidget {
  const myPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Column_Row_Dialog_bottom sheet_Snackbar',style: TextStyle(
          color: Colors.white70,
        ),),
        leading: Icon(Icons.home,color: Colors.white70,),
        actions: [
          IconButton(onPressed: (){
            //Niche pop pop asbe :
            // ScaffoldMessenger.of(context).showSnackBar(
            //       SnackBar(
            //         content: Text('Money has been transferred'),
            //         backgroundColor: Colors.green,
            //         duration: Duration(seconds: 1),
            //       ),
            //     );


            // this  is valo level er pop op..majhe ashe abar button o  add kra jai
            showDialog(context: context, builder: (context){
              return AlertDialog(
                title: Text('Search'),
                content: Text("Search Option are Disable."),

                // Ok Add
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      // Add your 'Yes' button functionality here
                      Navigator.of(context).pop();
                    },
                    child: Text('OK'),
                  ),
                ],
              );
            });

          }, icon: Icon(Icons.search),color: Colors.white70,),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Hello'),
            Text('World from Sabbir'),
            Text('From'),
            Text('Earth'),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('Greeting from '),
                Text('XoXo'),
                Text('-'),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.date_range),
                        Text('Date'),],
                    ),
                    Text('12-12-12'),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Button2()));
              }, child: Text("All Button 2")),
            ),
          ],
        ),
      ),
      // body: Column(
      //   children: [
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         Text('Row'),
      //         Text('Row')
      //       ],
      //     ),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         Text('Row'),
      //         Text('Row')
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}

class Button2 extends StatelessWidget {
  const Button2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("All Button"),
        centerTitle: true,
      ),
    );
  }
}

