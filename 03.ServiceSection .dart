import 'package:flutter/material.dart';

class ServicesSection extends StatefulWidget {
  const ServicesSection({super.key});

  @override
  State<ServicesSection> createState() => _ServicesSectionState();
}

class _ServicesSectionState extends State<ServicesSection> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return Container(
      height: height * 0.6,
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0xffF8F8F8)),
      child: Column(
        mainAxisAlignment: .center,
        children: [
          Text(
            'Service',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff284820),
              fontWeight: .bold,
            ),
          ),

          SizedBox(height: height * 0.05),
          Text(
            'Let us handle the number,',
            style: TextStyle(fontSize: 45, color: Color(0xff284820)),
          ),
          Text(
            'so you can handle your success',
            style: TextStyle(fontSize: 45, color: Color(0xff284820)),
          ),

          SizedBox(height: height * 0.03),
          Text(
            'Serving individuals ans small business since 1987',
            style: TextStyle(fontSize: 15, color: Color(0xff284820)),
          ),

          SizedBox(height: height * 0.03),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xff284820)),
            onPressed: () {},
            child: Text(
              'Schedule a call',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
