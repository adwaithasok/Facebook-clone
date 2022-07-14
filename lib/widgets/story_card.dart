import 'package:facebook/widgets/circular_button.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/avatar.dart';

class Storycard extends StatelessWidget {
  final String labeltext;
  final String story;
  final String avatar;
  final bool createStoryStatus;
  final bool textalign;

  // ignore: use_key_in_widget_constructors
  const Storycard({
    required this.labeltext,
    required this.story,
    required this.avatar,
    this.createStoryStatus = false,
    this.textalign = false
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 5, top: 5),
        child: Container(
            margin: const EdgeInsets.all(5),
            // color: Colors.amber,
            width: 140,
            // margin: const EdgeInsets.only(
            //   left: 5,
            //   right: 5,
            //   top: 10,
            //   bottom: 10,
            // ),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(story),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15)),
            child: Stack(
              children: [
                Positioned(
                    left: 1,
                    top: 1,
                    child: createStoryStatus
                        ? Padding(
                            padding: const EdgeInsets.only(top: 140, left: 37),
                            child: Circularbutton(
                              buttonIcon: Icons.add_circle,
                              buttoncolor: Colors.blue,
                              buttonAction: () {
                                debugPrint("ed");
                              },
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(left: 5, top: 5),
                            child: Avatar(
                              displayimage: avatar,
                              displayindicator: false,
                              displayborder: true,
                            ),
                          )),
                Padding(
                    padding: const EdgeInsets.only(bottom: 12, left: 5),
                    child: textalign ? Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: Text(
                          labeltext,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        )
                        )
                        :Align(
                        alignment: FractionalOffset.bottomLeft,
                        child: Text(
                          labeltext,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        )
                        )
                        ),
              ],
            )));
  }
}
