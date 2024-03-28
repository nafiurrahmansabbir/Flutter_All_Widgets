import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// Module 6 class 3
class TextField_Container_Padding extends StatelessWidget {
  const TextField_Container_Padding({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:  false,
      home: TCPD(),
    );
  }
}

class TCPD extends StatelessWidget {
  const TCPD({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TexField & Container"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Enter User Name: ",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600
          ),),
          Padding(
            padding:  EdgeInsets.all(20.0),
            child: TextField(

              // controller diye control korte pari
              // controller: TextEditingController(),


              // enabled: false,
              maxLength: 20,
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
                color: Colors.black87
              ),
              decoration: InputDecoration(
                hintText: 'User Name',
                hintStyle: TextStyle(
                  fontSize: 23,
                ),
                labelText: "User Name",
                // label: Text('ikjhdf'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.redAccent,
                  ),
                  borderRadius: BorderRadius.circular(16),

                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.redAccent,
                  ),
                  borderRadius: BorderRadius.circular(16),

                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.redAccent,
                  ),
                  borderRadius: BorderRadius.circular(16),

                ),

                fillColor: Colors.white,
                filled: true,
                // prefixIcon:
                suffixIcon: Icon(Icons.people_outline_sharp),
                suffixIconColor: Colors.redAccent,
                  // prefixIcon: Icon(Icons.text_fields),
                  // amra suffic icon reu edit korte parbo
                // suffix: Column(
                //   children: [
                //
                //   ],



              ),
            ),
          ),

        //   container
          Container(
            width: 100,
            height: 100,
            // color: Colors.redAccent, //boxDec dile Color baire deua jabe na naile ure jabe
            alignment: Alignment.bottomCenter,
            child: Text("Panda",style: TextStyle(color: Colors.amberAccent,fontWeight:FontWeight.bold),),
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.black87,width: 3),
              // border: Border(
              // el e color dite hbe
              //   top: BorderSide(color: Colors.redAccent,width: 4),
              //   bottom: BorderSide(color: Colors.redAccent,width: 4),
              //   left: BorderSide(color: Colors.redAccent,width: 4),
              //   right: BorderSide(color: Colors.redAccent,width: 4),
              // )

              image: DecorationImage(
                image: AssetImage('images/panda.jpg'),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.greenAccent,
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0,7)
                ),
              ],

            ),

          ),



        ],
      ),
    );
  }
}

