
import 'package:flutter/material.dart';
import 'package:flutter_all_widgets/Button_All.dart';
import 'package:flutter_all_widgets/Navigator_and_Theme.dart';
import 'package:flutter_all_widgets/Scaffold_Column_Row_Dialog_bottom_sheet_Snackbar.dart';
import 'package:flutter_all_widgets/TextField_Container_Padding.dart';
import 'package:flutter_all_widgets/Text_Center_Image_Icon.dart';
import 'package:flutter_all_widgets/Cupertino_widget.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "Text_Center_Image_Icon" : (context)=>Text_Center_IMG_Icon(),
        "Colum_Row":(context)=>Col_Row(),
        "TextField_Container_Padding" : (context)=> TextField_Container_Padding(),
        "Button" : (context)=> Button_all(),
        "NT": (context)=>Nav_them(),
        "cupertino": (context)=>Cupertino(),


      },
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // custom Colour : 0xFF trpor color code 6 dgit er hexa code
        // backgroundColor: Color(0xFF3F91D0FF),
        backgroundColor: Colors.pink,
        title: Text("All Widgets Button"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Container(
            height: 40,
            color: Colors.orange,
            child: Center(child: Text("Module 6"))
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>TCTI()));
              Navigator.pushNamed(context, "Text_Center_Image_Icon");
            },
                child: Text("Text_Center_Image_Icon")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "Colum_Row");
            },
                child: Text("Column_Row_Dialog_bottom sheet_Snackbar")),
          ),
          Container(
              height: 40,
              color: Colors.orange,
              child: Center(child: Text("Module 7"))
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "TextField_Container_Padding");
            },
                child: Text("TextField_Container_Padding")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "Button");
            },
                child: Text("All_Button")),
          ),
          Container(
              height: 40,
              color: Colors.orange,
              child: Center(child: Text("Module 8"))
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "NT");
            },
                child: Text("Navigator || Theme")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "cupertino");
            },
                child: Text("Cupertino")),
          ),


        ],
      ),

    );
  }
}
