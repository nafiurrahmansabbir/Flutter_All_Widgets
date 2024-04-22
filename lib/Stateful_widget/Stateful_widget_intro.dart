import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stateful_Widget_intro extends StatelessWidget {
  const Stateful_Widget_intro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
// class Home extends StatelessWidget {
//    Home({super.key});
//
//    int counter=0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//       ),
//       body: Center(
//         child: Text(counter.toString(), style: TextStyle(
//           fontSize: 48
//         ),)
//       ),
//
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           counter++;
//         },
//         child: Icon(Icons.add),
//
//       ),
//     );
//   }
// }

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.red,

      ),
      body: Center(
        child: Text(counter.toString(), style: TextStyle(
          fontSize: 48
        ),)
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              counter++;
              setState(() {

              });
            },
            child: Icon(Icons.add),

          ),
          SizedBox(width: 15,),
          FloatingActionButton(
            onPressed: () {
              if(counter!=0){
                counter--;
              }
              setState(() {

              });
            },
            child: Icon(Icons.remove),

          ),
        ],
      )

    );
  }
}
