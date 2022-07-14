import 'package:flutter/material.dart';

// ignore: camel_case_types
class headerbuttonsection extends StatelessWidget {
  const headerbuttonsection({Key? key}) : super(key: key);

  Widget headerbutton(
      {required IconData buttonIcon,
      required void Function() buttonFunction,
      required Color buttonColor}) {
    return IconButton(
      onPressed: buttonFunction,
      icon: Icon(buttonIcon),
      iconSize: 30,
      color: buttonColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        headerbutton(
            buttonIcon: Icons.home,
            buttonColor: Colors.blue,
            buttonFunction: () {
              debugPrint("b2");
            }),
        headerbutton(
            buttonIcon: Icons.person_outlined,
            buttonColor: Colors.black54,
            buttonFunction: () {
              debugPrint("b3");
            }),
        headerbutton(
            buttonIcon: Icons.message_outlined,
            buttonColor: Colors.black54,
            buttonFunction: () {
              debugPrint("b4");
            }),
        headerbutton(
            buttonIcon: Icons.tv,
            buttonColor: Colors.black54,
            buttonFunction: () {
              debugPrint("b5");
            }),
        headerbutton(
            buttonIcon: Icons.notifications,
            buttonColor: Colors.black54,
            buttonFunction: () {
              debugPrint("b6");
            }),
        headerbutton(
            buttonIcon: Icons.supervised_user_circle_sharp,
            buttonColor: Colors.black54,
            buttonFunction: () {
              debugPrint("b7");
            }),
        
        





        // IconButton(
        //     onPressed: () {
        //       ("h");
        //     },
        //     icon: const Icon(Icons.access_alarm_rounded),  
        //     color: Colors.red,
            
        //     )
      ]),
    );
  }
}
