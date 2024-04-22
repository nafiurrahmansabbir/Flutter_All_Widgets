import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'aspect_ratio_Expanded_FractionallySizeBox.dart';

class All extends StatelessWidget {
  const All({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,

      ),
      body: ListView(
        children: [
          Card(
            // elevation: 07,
            color: Colors.amberAccent,
            child: ListTile(
              title: Center(child: Text("Module 9"),),
              subtitle: Text(""),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>axfs()));

            },
                child: Text("Aspect Ratio | Expanded | FractionallySizedBox")
            ),
          ),

        ],
      ),
    );
  }
}

