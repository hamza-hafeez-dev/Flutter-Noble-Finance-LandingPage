import 'package:flutter/material.dart';

class Herosection extends StatefulWidget {
  const Herosection({super.key});

  @override
  State<Herosection> createState() => _HerosectionState();
}

class _HerosectionState extends State<Herosection>
    with TickerProviderStateMixin {
  late AnimationController Rotatecontroller;
  late AnimationController Fadecontroller;

  late Animation<double> animation;
  late Animation<double> herotextFadeAnimation;

  @override
  void initState() {
    super.initState();

    Rotatecontroller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );
    animation = Tween<double>(begin: 0, end: 1).animate(Rotatecontroller);

    Fadecontroller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
    );
    herotextFadeAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(Fadecontroller);

    Rotatecontroller.forward();
    Rotatecontroller.repeat();
    Fadecontroller.forward();
  }

  @override
  void dispose() {
    Rotatecontroller.dispose();
    Fadecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    // final width = MediaQuery.sizeOf(context).width;
    return Container(
      height: height * 0.8,
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0xffA0F0B8)),
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: .center,
                crossAxisAlignment: .start,
                children: [
                  FadeTransition(
                    opacity: herotextFadeAnimation,
                    child: Text(
                      'Financial Clarity You\nCan Trust',
                      style: TextStyle(fontSize: 65, color: Color(0xff284820)),
                    ),
                  ),

                  SizedBox(height: height * 0.03),
                  Text(
                    ' Trust finacial guidence of every stage of the life and busniess since 1987 ',
                    style: TextStyle(fontSize: 16, color: Color(0xff284820)),
                  ),

                  SizedBox(height: height * 0.07),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff284820),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Connect with our expert',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: RotationTransition(
                turns: animation,

                child: SizedBox(
                  height: height * 0.6,
                  child: Image.asset('assests/images/globeimage.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
