import 'package:flutter/material.dart';

class FooterSection extends StatefulWidget {
  const FooterSection({super.key});

  @override
  State<FooterSection> createState() => _FooterSectionState();
}

class _FooterSectionState extends State<FooterSection> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      height: height * 0.6,
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0xff284820)),
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Noble Finances',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: .bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: width * 0.4),
                Text(
                  'Serice',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                SizedBox(width: width * 0.01),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Book an Appointment',
                    style: TextStyle(fontSize: 12, color: Color(0xff284820)),
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              crossAxisAlignment: .start,
              mainAxisAlignment: .start,
              children: [
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      'Financial Clarity You Can Trust',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: .bold,
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      'Trust finacial guidence of every stage of the life and busniess since 1987 ',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  '(c) 2026 HamzaHafeez.dev',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                SizedBox(width: width * 0.3),
              ],
            ),
            SizedBox(height: height * 0.02),
          ],
        ),
      ),
    );
  }
}
