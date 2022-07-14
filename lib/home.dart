import 'package:facebook/assets.dart';
import 'package:facebook/story_section.dart';
import 'package:facebook/widgets/buttonsection.dart';
import 'package:facebook/widgets/footer.dart';
import 'package:facebook/widgets/postcard.dart';
import 'package:facebook/widgets/status_indicator.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/status_section.dart';
import 'package:facebook/widgets/headerbutton_section.dart';
import 'package:facebook/widgets/drawer_header.dart';
import 'package:facebook/widgets/three_buttons.dart';
// ignore: unused_import
import 'package:facebook/widgets/circular_button.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        endDrawer: Drawer(
            // ignore: avoid_unnecessary_containers
            child: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              children: const [MyHeaderDrawer()],
            ),
          ),
        )),

//
//
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "facebook",
            style: TextStyle(
                color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          actions: [
            Circularbutton(
              buttonIcon: Icons.search,
              buttoncolor: Colors.black,
              buttonAction: () {
                debugPrint("love");
              },
            ),
            Builder(builder: (context) {
              return IconButton(
                onPressed: () => Scaffold.of(context).openEndDrawer(),
                icon: const Icon(Icons.menu),
                color: Colors.blue,
              );
            })
          ],
        ),
        body: ListView(
          children: [
            const headerbuttonsection(),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            const StatusSection(),
            HeaderButtonSection(
              buttonone: headerbutton(
                bgcolor: Colors.white,
                  buttonText: "feeling",
                  buttonIcon: Icons.emoji_emotions_outlined,
                  buttonAction: () {
                    debugPrint("d");
                  },
                  buttonColor: Colors.yellow),
              buttontwo: headerbutton(
                 bgcolor: Colors.white,
                  buttonText: "Video",
                  buttonIcon: Icons.video_call,
                  buttonAction: () {
                    debugPrint("g");
                  },
                  buttonColor: Colors.red),
              buttonthree: headerbutton(
                 bgcolor: Colors.white,
                  buttonText: "location",
                  buttonIcon: Icons.location_pin,
                  buttonAction: () {
                    debugPrint("g");
                  },
                  buttonColor: Colors.red),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            const Statusbar(),
            Divider(
              thickness: 5,
              color: Colors.grey[300],
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Storysection(),
            ),
            Divider(
              thickness: 5,
              color: Colors.grey[300],
            ),
            Postcard(
              avatar: vishnu,
              name: "Vishnupriya",
              requiredtime: "5 hrs",
              displaybluetick: true,
              titlesections:
                  "My mother told me to be a lady. And for her, that meant be your own person, be independent.",
              postimage: vishnu,
            ),
            footersection(
              displaytextcomment: "50k",
              displaytextlikes: "101k",
              displaytextshared: "558k",
            ),
            HeaderButtonSection(
            buttonone: headerbutton(
               bgcolor:  const  Color.fromARGB(255, 233, 233, 233),
                buttonText: "101k",
                buttonIcon: Icons.thumb_up_alt_outlined,
                buttonAction: () {
                  debugPrint("d");
                  const BoxDecoration(color: Colors.red);
                },
                buttonColor: Colors.black26),
            buttontwo: headerbutton(
               bgcolor: const Color.fromARGB(255, 233, 233, 233),
                buttonText: "50k",
                buttonIcon: Icons.comment_outlined,
                buttonAction: () {
                  debugPrint("g");
                },
                buttonColor: Colors.black26),
            buttonthree: headerbutton(
               bgcolor: const  Color.fromARGB(255, 233, 233, 233),
                buttonText: "558k",
                buttonIcon: Icons.share_rounded,
                buttonAction: () {
                  debugPrint("g");
                },
                buttonColor: Colors.black26),
          ),
            Divider(
              thickness: 5,
              color: Colors.grey[300],
            ),
            Postcard(
              avatar: sree,
              name: "Adwaith asok",
              requiredtime: "5 hrs",
              displaybluetick: true,
              titlesections:
                  "The future belongs to those who believe in the beauty of their dreams.",
              postimage: sree,
            ),
            footersection(
              displaytextcomment: "10k",
              displaytextlikes: "1k",
              displaytextshared: "500k",
            ),
            HeaderButtonSection(
            buttonone: headerbutton(
               bgcolor:  const Color.fromARGB(255, 233, 233, 233),
                buttonText: "1k",
                buttonIcon: Icons.thumb_up_alt_outlined,
                buttonAction: () {
                  debugPrint("d");
                  const BoxDecoration(color: Colors.red);
                },
                buttonColor: Colors.black26),
            buttontwo: headerbutton(
               bgcolor:   const Color.fromARGB(255, 233, 233, 233),
                buttonText: "10k",
                buttonIcon: Icons.comment_outlined,
                buttonAction: () {
                  debugPrint("g");
                },
                buttonColor: Colors.black26),
            buttonthree: headerbutton(
               bgcolor: const Color.fromARGB(255, 233, 233, 233),
                buttonText: "500k",
                buttonIcon: Icons.share_rounded,
                buttonAction: () {
                  debugPrint("g");
                },
                buttonColor: Colors.black26),
          ),
          
          ],
        ),
      ),
    );
  }
}
