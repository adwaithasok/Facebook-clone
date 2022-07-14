import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayimage;
  final bool displayindicator;
  final bool displayborder;
// ignore: use_key_in_widget_constructors
  const Avatar({required this.displayimage, required this.displayindicator,this.displayborder = false});

  @override
  Widget build(BuildContext context) {
    // Widget statusIndicator;

    // if (displayindicator == true) {
    //   statusIndicator = Positioned(
    //       bottom: 4,
    //       right: 3,
    //       child: Container(
    //         width: 12,
    //         height: 12,
    //         decoration: BoxDecoration(
    //           shape: BoxShape.circle,
    //           color: Colors.lightGreen,
    //           border: Border.all(color: Colors.white, width: 2),
    //         ),
    //       ));
    // } else {
    //   statusIndicator = const SizedBox();
    // }
    return Stack(
      children: [
        Container(
          
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayborder ? Border.all(
              color: Colors.blueAccent,
              width: 2,
            )
            : null
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              displayimage,
              width: 50,
              height: 50,
            ),
          ),
        ),
        displayindicator == true
            ? Positioned(
                bottom: 4,
                right: 3,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.lightGreen,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
