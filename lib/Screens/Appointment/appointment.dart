import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class Appointment extends StatelessWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: defaultPadding * 2),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: Image.asset("assets/images/you_are_all_set.png"),
            ),
            const Spacer(),
          ],
        ),
        SizedBox(height: defaultPadding * 2),
        const Text(
          "You are All Set!",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
        ),
        SizedBox(height: defaultPadding * 2),
        Divider(thickness: 1),
        SizedBox(height: defaultPadding),
        Text(
          "Your Test Code",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(height: defaultPadding),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(150, 48),
            backgroundColor: Color.fromRGBO(218, 230, 142, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.0),
            ),
          ),
          child: const Text(
            "8NT5DW",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          onPressed: () {},
        ),
        Container(
          padding: EdgeInsets.all(defaultPadding * 2),
          child: Column(children: [
            Text(
              "Porcupine strives for protecting your privacy and keeping the test experience private.",
              style: TextStyle(color: Color.fromRGBO(131, 116, 165, 1)),
            ),
            SizedBox(height: defaultPadding),
            Text(
              "Remember to show the test code when visit the clinical providers, no other personal information is required during the test",
              style: TextStyle(color: Color.fromRGBO(131, 116, 165, 1)),
            ),
          ]),
        ),
        SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}
