import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  final Widget  buttonone;
  final Widget  buttontwo;
  final Widget  buttonthree;

  // ignore: use_key_in_widget_constructors
  const HeaderButtonSection({
    required this.buttonone,
    required this.buttontwo,
    required this.buttonthree,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Widget verticalDivider =
        const VerticalDivider(thickness: 1, color: Colors.grey);
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        margin: const EdgeInsets.all(0),
        height: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonone,
            const VerticalDivider(),
            // const VerticalDivider(
            //   thickness: .20,
            //   color: Colors.grey,
            // ),
            buttontwo,
            const VerticalDivider(),
            buttonthree,
            // const VerticalDivider(
            //   thickness: .20,
            //   color: Colors.grey,
            // ),
          ],
        ),
      ),
    );
  }
}
