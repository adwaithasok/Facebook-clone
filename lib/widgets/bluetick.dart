import 'package:flutter/material.dart';

class Bluetick extends StatelessWidget {
  const Bluetick({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 15,
      decoration: const BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle
      ),
      child: 
        const Icon(Icons.check_box,color: Colors.white,size: 1,)
      
    );
  }
}
