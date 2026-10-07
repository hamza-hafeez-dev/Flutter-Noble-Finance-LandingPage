import 'package:flutter/material.dart';

class LandingImage extends StatefulWidget {
  const LandingImage({super.key});

  @override
  State<LandingImage> createState() => _LandingImageState();
}

class _LandingImageState extends State<LandingImage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Container(
      height: height * 0.85,
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0xffF8F8F8)),
      child: SizedBox(
        child: Image.asset(
          'assests/images/landingimage.png',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
