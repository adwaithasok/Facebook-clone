import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListTile
    
    (
      
        onTap: () {
          debugPrint("ok");
        },
        
        tileColor: Colors.white,
        leading: Avatar(displayimage: vishnu,displayindicator: false,),
        title: SizedBox(
          
          width: 20,
          height: 40,
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[300],
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(color: Colors.white)),
                hintText: "whats own your mind ?",
                contentPadding: const EdgeInsets.only(left: 25),
                suffixIcon: const Icon(
                  Icons.photo,
                  size: 30,
                  color: Colors.black,
                )),
          ),
        ),
      
    );
  }
}
