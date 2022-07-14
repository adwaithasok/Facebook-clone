import 'package:flutter/material.dart';

 Widget headerbutton({
    required String buttonText,
    required IconData buttonIcon,
    required  Function() buttonAction,
    required Color buttonColor,
    required Color bgcolor,
     
  }) {
    return Container(
      margin: const EdgeInsets.all(2),
     height: 40,
     width: 119,
      decoration: BoxDecoration(
        color: bgcolor,
          // color:const Color.fromARGB(255, 245, 242, 242),
          borderRadius: BorderRadius.circular(50),
         ),

      child: TextButton.icon(
        
        // style: TextButton.styleFrom(backgroundColor: Color.fromARGB(255, 245, 242, 242),
        
        // ),
        
        onPressed: buttonAction,
        icon: Icon(
          buttonIcon,
          color: buttonColor,
        ),
        label: Container(
          margin: const EdgeInsets.all(3),
          child: Text(buttonText,style: const TextStyle(color: Colors.black),)),
      ),
    );
  }