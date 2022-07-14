 

 
 
  import 'package:flutter/material.dart';

Widget footersection({
  required String displaytextcomment,
  required String displaytextshared,
  required String displaytextlikes,
})


 {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Row(
              children: [
                Container(
                  // margin: const EdgeInsets.all(0),
                  width: 15,
                  height: 15,
                  decoration: const BoxDecoration(
                      color: Colors.blue, shape: BoxShape.circle),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 2),
                        child: Icon(
                          Icons.thumb_up,
                          color: Colors.white,
                          size: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                displaytext(label: displaytextlikes),
              ],
            ),
          ),
          SizedBox(
            child: Row(
              children: [
                displaytext(label: displaytextcomment),
                const SizedBox(
                  width: 2,
                ),
                displaytext(label: "Comments"),
                const SizedBox(
                  width: 20,
                ),
                displaytext(label:displaytextshared),
                const SizedBox(
                  width: 2,
                ),
                displaytext(label: "shared")
              ],
            ),
          ),
        ],
      ),
    );
  }
  
  Widget displaytext({required String label}) {
    return Text(
      label,
      style: const TextStyle(color: Colors.grey),
    );
  }