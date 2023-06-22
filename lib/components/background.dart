import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
    this.topRightImage = "assets/icons/bg-red-dot.svg",
    this.topLeftImage = "assets/icons/bg-blue-dot.svg",
    this.bottomMiddleImage = "assets/icons/bg-green-dot.svg",
    this.bottomRightImage = "assets/icons/bg-blue-dot.svg",
  }) : super(key: key);

  final String topLeftImage, topRightImage, bottomMiddleImage, bottomRightImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(131, 116, 165, 1),
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: -270,
              right: -170,
              child: SvgPicture.asset(
                topRightImage,
                height: 500,
              ),
            ),
            Positioned(
              top: -150,
              left: -50,
              child: SvgPicture.asset(
                topLeftImage,
                width: 300,
              ),
            ),
            Positioned(
              bottom: -280,
              right: -10,
              child: SvgPicture.asset(bottomMiddleImage, width: 400),
            ),
            Positioned(
              bottom: -30,
              right: -100,
              child: SvgPicture.asset(bottomRightImage, width: 200),
            ),
            SafeArea(child: child),
          ],
        ),
      ),
    );
  }
}
