import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class Statusbar extends StatelessWidget {
  const Statusbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      color: Colors.white,
      height: 60,
      margin: const EdgeInsets.only(bottom: 5,top: 5),
      child: ListView(
        
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 5),
        children: [
          RoomButton(),
          Avatar(displayimage: vishnu,displayindicator: true,),
          Avatar(displayimage: abhi,displayindicator: true,),
          Avatar(displayimage: nived,displayindicator: true,),
          Avatar(displayimage: gouthm,displayindicator: true,),
          Avatar(displayimage: sree,displayindicator: true,),
          Avatar(displayimage: abhi,displayindicator: true,),
          Avatar(displayimage: sree,displayindicator: true,),
          Avatar(displayimage: gouthm,displayindicator: true,),

        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget RoomButton() {
    return Container(
      padding: const EdgeInsets.only(left: 10,right: 5,),
     child: OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
          shape: const StadiumBorder(),
          side: const BorderSide(color: Colors.purple)),
      onPressed: () {
        debugPrint("d");
      },
      icon: const Icon(
        Icons.video_call,
        color: Colors.purple,
      ),
      label: const Text("create \nroom"),
    ),
    );
  }
}
