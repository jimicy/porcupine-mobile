import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class LoginScreenTopImage extends StatelessWidget {
  const LoginScreenTopImage({
    Key? key,
  }) : super(key: key);

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
              child: SvgPicture.asset("assets/icons/porcupine.svg"),
            ),
            const Spacer(),
          ],
        ),
        SizedBox(height: defaultPadding),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: SvgPicture.asset("assets/icons/porcupine_text.svg"),
            ),
            const Spacer(),
          ],
        ),
        Text(
          "Stay informed, stay protected",
          style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white),
        ),
        SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}
