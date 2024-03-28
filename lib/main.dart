import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_all_widgets/Button_All.dart';
import 'package:flutter_all_widgets/Scaffold_Column_Row_Dialog_bottom_sheet_Snackbar.dart';
import 'package:flutter_all_widgets/TextField_Container_Padding.dart';
import 'package:flutter_all_widgets/Text_Center_Image_Icon.dart';

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

        ],
      ),

    );
  }
}
