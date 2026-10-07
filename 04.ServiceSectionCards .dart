import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ServiceCard extends StatefulWidget {
  const ServiceCard({super.key});

  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(color: Color(0xffF8F8F8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: height * 0.05),
          // 1st Card: Slides from Left to Right
          Padding(
            padding: const EdgeInsets.only(right: 230),
            child: CardSection(
              title: 'Tax Preparation &\nFiling',
              description: 'Accurately prepare and file your taxes\nreturn to maximum deduction and ensure\ncompliance',
              image: const AssetImage('assests/images/firstimage.png'),
              slideFromLeft: true, // Slides from Left
            ),
          ),

          SizedBox(height: height * 0.1),
          // 2nd Card: Slides from Right to Left
          Padding(
            padding: const EdgeInsets.only(left: 230),
            child: CardSection(
              title: 'IRS Audit Assistance',
              description: 'Offer expert guidance and representation\nto resolve tax audits & dispute with confidence ',
              image: const AssetImage('assests/images/secondimage.png'),
              slideFromLeft: false, // Slides from Right
            ),
          ),

          SizedBox(height: height * 0.1),
          // 3rd Card: Slides from Left to Right
          Padding(
            padding: const EdgeInsets.only(right: 230),
            child: CardSection(
              title: 'Bookkeeping &          \nAccounting',
              description: ' Maintain Organized financial records and provide clear\n reports to support business growth',
              image: const AssetImage('assests/images/thirdimage.png'),
              slideFromLeft: true, // Slides from Left
            ),
          ),
          SizedBox(height: height * 0.1),
        ],
      ),
    );
  }
}

class CardSection extends StatefulWidget {
  final String title;
  final String description;
  final AssetImage image;
  final bool slideFromLeft; // Determines slide direction

  const CardSection({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    required this.slideFromLeft,
  });

  @override
  State<CardSection> createState() => _CardSectionState();
}

class _CardSectionState extends State<CardSection>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;
  bool _hasAnimated = false; // Ensures animation only triggers once per scroll

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000), // Animation duration
    );

    // If true, starts off-screen to the left (-1.0). If false, starts off-screen to the right (1.0).
    final beginOffset = widget.slideFromLeft
        ? const Offset(-1.0, 0.0)
        : const Offset(1.0, 0.0);

    _slideAnimation = Tween<Offset>(
      begin: beginOffset,
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return VisibilityDetector(
      key: Key(widget.title), // Unique key for each card detection
      onVisibilityChanged: (visibilityInfo) {
        // Trigger animation when at least 20% of the card is visible on screen
        if (visibilityInfo.visibleFraction > 0.2 && !_hasAnimated) {
          _hasAnimated = true;
          _controller.forward();
        }
      },
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: SlideTransition(
          position: _slideAnimation,
          child: Container(
            height: height * 0.5,
            width: width * 0.76,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 197, 245, 211),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    height: height * 0.40,
                    child: Image(image: widget.image),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.title,
                        style: const TextStyle(
                          fontSize: 38,
                          color: Color(0xff284820),
                        ),
                      ),
                      SizedBox(height: height * 0.03),
                      Text(
                        widget.description,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color(0xff284820),
                        ),
                      ),
                      SizedBox(height: height * 0.04),
                      Row(
                        children: [
                          SizedBox(width: width * 0.1),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: const Text(
                              '1099 Taxes',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(width: width * 0.02),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Dependents',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(width: width * 0.02),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Trust Tax',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
