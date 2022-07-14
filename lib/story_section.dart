import 'package:facebook/assets.dart';
import 'package:facebook/widgets/story_card.dart';
import 'package:flutter/material.dart';
// import 'package:facebook/assets.dart';
class Storysection extends StatelessWidget {
  const Storysection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Storycard(
              labeltext: "add your story",
              avatar: vishnu,
              story: vishnu,
              createStoryStatus: true,
              textalign: true ,
            ),
          ),

          Storycard(
            labeltext: "Abhiav Surlie",
            avatar: abhi,
            story: abhis,
            createStoryStatus: false ,
          ),

          Storycard(
            labeltext: "Nived rajeesh",
            avatar: nived,
            story: niveds,
            createStoryStatus: false ,
          ),
Storycard(
            labeltext: "Goutham chandran",
            avatar: gouthm,
            story: nandus,
            createStoryStatus: false ,
          ),

          Storycard(
            labeltext: "Adwaith asok",
            avatar: sree,
            story: srees,
            createStoryStatus: false ,
            
          ),


        ],
      ),
      
    );
  }
}