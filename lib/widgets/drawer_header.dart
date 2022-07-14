import 'package:flutter/material.dart';

 

class MyHeaderDrawer extends StatelessWidget{
  const MyHeaderDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/avatars/vish_nu.jpg',),
              ),
            ),
          ),
          const Text(
            "Vishnupriya adwaith",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "vishnuadwaith@gmail.com",
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}