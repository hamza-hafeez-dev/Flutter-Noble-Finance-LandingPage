import 'package:flutter/material.dart';

class ExpertSection extends StatefulWidget {
  const ExpertSection({super.key});

  @override
  State<ExpertSection> createState() => _ExpertSectionState();
}

class _ExpertSectionState extends State<ExpertSection> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Container(
      height: height * 0.7,
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0xffF8F8F8)),
      child: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        children: [
          Text(
            '    We belive that tax filing should be\nSeamless,accurate, and stress-free. Get\n    started with Noble Finance today',
            style: TextStyle(fontSize: 40, color: Color(0xff284820)),
          ),

          SizedBox(height: height * 0.1),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xff284820)),
            child: Text(
              'Connect With Our Expert',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
          SizedBox(height: height * 0.1),
        ],
      ),
    );
  }
}
