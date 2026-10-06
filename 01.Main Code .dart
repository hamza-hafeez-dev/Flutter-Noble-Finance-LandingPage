import 'package:flutter/material.dart';
import 'package:flutter_accounting_services/benefitssections.dart';
import 'package:flutter_accounting_services/ctasection.dart';
import 'package:flutter_accounting_services/expertsection.dart';
import 'package:flutter_accounting_services/footer.dart';
import 'package:flutter_accounting_services/herosection.dart';
import 'package:flutter_accounting_services/servicesection.dart';
import 'package:flutter_accounting_services/servicesectioncards.dart';
import 'package:flutter_accounting_services/testiimage.dart';
import 'package:flutter_accounting_services/testimonialssection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Friendly Accounting Services',
      debugShowCheckedModeBanner: false,
      home: const MyLandingPage(),
    );
  }
}

class MyLandingPage extends StatefulWidget {
  const MyLandingPage({super.key});

  @override
  State<MyLandingPage> createState() => _MyLandingPageState();
}

class _MyLandingPageState extends State<MyLandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: const Color(0xffA0F0B8),
          title: const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Noble Finances',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xff284820),
                fontWeight: FontWeight.bold, // Syntax theek kar diya
              ),
            ),
          ),
          actions: [
            const Text(
              'Services',
              style: TextStyle(fontSize: 16, color: Color(0xff284820)),
            ),
            const SizedBox(width: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff284820),
              ),
              onPressed: () {},
              child: const Text(
                'book an Appointment',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(width: 50),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .stretch,
          children: [
            Herosection(),
            ServicesSection(),
            ServiceCard(),
            TestimoniialSection(),
            LandingImage(),
            BenefitsSection(),
            CTAsection(),
            ExpertSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
