import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Navigator_and_Theme extends StatelessWidget {
  const Navigator_and_Theme({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Nav_them(),
    );
  }
}

class Nav_them extends StatelessWidget {
  const Nav_them({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade50,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Navigator And Theme"),
        // custom Colour : 0xFF trpor color code 6 dgit er hexa code
        // backgroundColor: Color(0xFF054779FF),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                Navigator.push
                  (context,
                    MaterialPageRoute(builder: (context){
                  return Home();
                }
                )
                );
              },
                  child: Text("Home")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (contex)=>Setting(username: "Uye Uye Uye",)));

              }, child: Text("Setting")),
            ),
          ],
        ),
      ),

    );
  }
}



class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      appBar: AppBar(

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is Home Page",),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Back")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Setting(username: "Uye Uye",)));

              }, child: Text("Setting")),
            ),
          ],
        ),
      ),

    );
  }
}

class Setting extends StatelessWidget {
  const Setting({super.key,required this.username});
  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      appBar: AppBar(

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is Setting Page",),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Back")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Home()), (route) => false);
              }, child: Text("PushAndRemoveUntil")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(username),
              ),
            ),
          ],
        ),
      ),

    );
  }
}

