import 'package:flutter/material.dart';

class TestimoniialSection extends StatefulWidget {
  const TestimoniialSection({super.key});

  @override
  State<TestimoniialSection> createState() => _TestimoniialSectionState();
}

class _TestimoniialSectionState extends State<TestimoniialSection> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Container(
      height: height * 0.9,
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0xffF8F8F8)),
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text(
              'Hear Form Our Happy Clients',
              style: TextStyle(fontSize: 50, color: Color(0xff284820)),
            ),
            SizedBox(height: height * 0.1),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: .center,
                    children: [
                      SizedBox(
                        height: height * 0.18,
                        child: Image.asset(
                          'assests/images/testimoniyalcard.png',
                        ),
                      ),
                      SizedBox(height: height * 0.03),
                      Container(
                        height: height * 0.001,
                        width: width * 0.18,
                        decoration: BoxDecoration(color: Color(0xff284820)),
                      ),
                      SizedBox(height: height * 0.01),
                      Text(
                        'Commercial Photographer',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff284820),
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      Text(
                        'ontraio, Canada',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff284820),
                        ),
                      ),
                      SizedBox(height: height * 0.06),
                      Container(
                        height: height * 0.001,
                        width: width * 0.18,
                        decoration: BoxDecoration(color: Color(0xff284820)),
                      ),
                      SizedBox(height: height * 0.02),
                      Text(
                        'Stylist',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff284820),
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      Text(
                        'Austin, texas',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff284820),
                        ),
                      ),
                      SizedBox(height: height * 0.1),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: .start,
                    crossAxisAlignment: .start,
                    children: [
                      Container(
                        height: height * 0.52,
                        width: width * 0.0005,
                        decoration: BoxDecoration(color: Color(0xff284820)),
                      ),
                      SizedBox(width: width * 0.03),
                      Column(
                        children: [
                          Text(
                            '\"Managing my taxes as freelancer used to \n be overwhelming, but Nodel Finance made it\n effortless\"',
                            style: TextStyle(
                              fontSize: 25,
                              color: Color(0xff284820),
                            ),
                          ),
                          SizedBox(height: height * 0.07),
                          SizedBox(
                            height: height * 0.059,
                            child: Image.asset(
                              'assests/images/profiletestmoniyal.png',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
