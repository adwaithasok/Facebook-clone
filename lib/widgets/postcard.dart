import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/bluetick.dart';
import 'package:flutter/material.dart';

class Postcard extends StatelessWidget {
  final String avatar;
  final String name;
  final String requiredtime;
  final String titlesections;
  final String postimage;
  final bool displaybluetick;

  // ignore: use_key_in_widget_constructors
  const Postcard(
      {required this.avatar,
      required this.name,
      required this.requiredtime,
      required this.titlesections,
      required this.postimage,
      this.displaybluetick = false});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        children: [
          Postcardheader(),
          titlesection(),
          Widgetimagesection(),
          // footersection(),
          // HeaderButtonSection(
          //   buttonone: headerbutton(
          //       buttonText: "1k",
          //       buttonIcon: Icons.thumb_up_alt_outlined,
          //       buttonAction: () {
          //         debugPrint("d");
          //         const BoxDecoration(color: Colors.red);
          //       },
          //       buttonColor: Colors.black26),
          //   buttontwo: headerbutton(
          //       buttonText: "10k",
          //       buttonIcon: Icons.comment_outlined,
          //       buttonAction: () {
          //         debugPrint("g");
          //       },
          //       buttonColor: Colors.black26),
          //   buttonthree: headerbutton(
          //       buttonText: "500k",
          //       buttonIcon: Icons.share_rounded,
          //       buttonAction: () {
          //         debugPrint("g");
          //       },
          //       buttonColor: Colors.black26),
          // ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widgetimagesection() {
    // ignore: avoid_unnecessary_containers
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 15),
      child: Container(
        margin: const EdgeInsets.only(left: 0, right: 0),
        child: Image.asset(postimage),
      ),
    );
  }

  // Widget footersection() {
  //   return Container(
  //     margin: const EdgeInsets.only(left: 10, right: 10),
  //     height: 40,
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         SizedBox(
  //           child: Row(
  //             children: [
  //               Container(
  //                 // margin: const EdgeInsets.all(0),
  //                 width: 15,
  //                 height: 15,
  //                 decoration: const BoxDecoration(
  //                     color: Colors.blue, shape: BoxShape.circle),
  //                 child: Row(
  //                   children: const [
  //                     Padding(
  //                       padding: EdgeInsets.only(left: 2),
  //                       child: Icon(
  //                         Icons.thumb_up,
  //                         color: Colors.white,
  //                         size: 10,
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //               displaytext(label: "1k"),
  //             ],
  //           ),
  //         ),
  //         SizedBox(
  //           child: Row(
  //             children: [
  //               displaytext(label: "10k "),
  //               const SizedBox(
  //                 width: 2,
  //               ),
  //               displaytext(label: "Comments"),
  //               const SizedBox(
  //                 width: 20,
  //               ),
  //               displaytext(label: "500k"),
  //               const SizedBox(
  //                 width: 2,
  //               ),
  //               displaytext(label: "Shared")
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Widget displaytext({required String label}) {
  //   return Text(
  //     label,
  //     style: const TextStyle(color: Colors.grey),
  //   );
  // }

  Widget titlesection() {
    // ignore: avoid_unnecessary_containers
    return Padding(
      padding: const EdgeInsets.only(bottom: 5, left: 10, right: 10),
      child: Container(
        margin: const EdgeInsets.only(left: 5),
        child: Text(titlesections),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget Postcardheader() {
    return ListTile(
        leading: Avatar(
          displayimage: avatar,
          displayindicator: false,
        ),
        title: Row(
          children: [
            Text(
              name,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              width: 5,
            ),
            displaybluetick ? const Bluetick() : const SizedBox(),
          ],
        ),
        subtitle: Row(
          children: [
            Text(
              requiredtime,
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Icon(
              Icons.public,
              color: Colors.grey,
              size: 20,
            ),
          ],
        ),
        trailing: IconButton(
          onPressed: () {
            debugPrint("dd");
          },
          icon: const Icon(Icons.more_horiz),
        ));
  }
}
