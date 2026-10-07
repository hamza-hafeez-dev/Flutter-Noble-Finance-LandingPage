import 'package:flutter/material.dart';

class BenefitsSection extends StatefulWidget {
  const BenefitsSection({super.key});

  @override
  State<BenefitsSection> createState() => _BenefitsSectionState();
}

class _BenefitsSectionState extends State<BenefitsSection> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    final List<Map<String, dynamic>> benefits = [
      {
        'icon': Icons.work,
        'title': 'For Freelancers',
        'subtitle': 'Simplicity & Control',
        'description': 'Stay in charge of your income with seamless\nexpense tracking, automated deductions, and smart tax\nstrategies—so you can focuson doing what you love.',
      },
      {
        'icon': Icons.family_restroom,
        'title': 'For Families',
        'subtitle': 'Stability & Security',
        'description': 'From budgeting tools to tax-saving insights,\nwe help you planfor the future, maximize refunds,\nand keep your household financesrunning smoothly.',
      },
      {
        'icon': Icons.business,
        'title': 'For Small\nBusinesses',
        'subtitle': 'Growth & Efficiency',
        'description': 'Effortless bookkeeping, payroll solutions,\nand expert-backed tax support—so\nyou can spendless time on finances and more\ntime scaling your business.',
      },
      {
        'icon': Icons.rocket_launch,
        'title': 'For Startups',
        'subtitle': 'Build & Grow',
        'description': 'Get the financial foundation your startup\nneeds with smart planning,cash-flow\ntracking, and guidance that helps youmgrow with confidence.',
      },
      {
        'icon': Icons.trending_up,
        'title': 'For Investors',
        'subtitle': 'Plan & Protect',
        'description': 'Make informed financial decisions\nwith organizedrecords, tax strategies,\nand insights designed to\nhelp protect and grow your wealth.',
      },
    ];

    final Color darkGreen = const Color(0xff284820);
    return Container(
      height: height * 0.9,
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0xffF8F8F8)),
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: .start,
              children: [
                Expanded(
                  child: Text(
                    "Smart Finance for\neveryone",
                    style: TextStyle(
                      color: darkGreen,
                      fontSize: 50,
                      fontWeight: FontWeight.w400,
                      height: 1.1,
                    ),
                  ),
                ),

                // Description
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8, left: 30),
                    child: Text(
                      "At Noble Finance, we believe that financial confidence should be accessible to "
                      "everyone—whether you're a solo entrepreneur, managing a growing family, or "
                      "running a small business.",
                      style: TextStyle(
                        color: darkGreen,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 1.25,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: height * 0.1),
            Row(
              mainAxisAlignment: .center,
              crossAxisAlignment: .start,
              children: [
                Expanded(
                  child: SizedBox(
                    height: height * 0.5,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: benefits.length,

                      itemBuilder: (context, index) {
                        final item = benefits[index];
                        return BenefitsCard(
                          darkgreen: darkGreen,
                          icon: item['icon'],
                          title: item['title'],
                          subtitle: item['subtitle'],
                          description: item['description'],
                        );
                      },
                    ),
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

class BenefitsCard extends StatelessWidget {
  final Color darkgreen;
  final IconData icon;
  final String title;
  final String subtitle;
  final String description;

  const BenefitsCard({
    super.key,
    required this.darkgreen,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        children: [
          Container(
            height: height * 0.5,
            width: width * 0.001,
            decoration: BoxDecoration(color: Color(0xff284820)),
          ),
          SizedBox(width: width * 0.03),
          Column(
            crossAxisAlignment: .start,
            children: [
              Icon(icon, size: 25, color: darkgreen),

              SizedBox(height: height * 0.03),
              Text(
                title,
                style: TextStyle(
                  fontSize: 22,
                  color: darkgreen,
                  fontWeight: .w400,
                  height: 1.05,
                ),
              ),

              SizedBox(height: height * 0.03),
              Text(
                subtitle,
                style: TextStyle(
                  color: darkgreen,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),

              SizedBox(height: height * 0.03),
              Text(
                description,
                style: TextStyle(
                  color: darkgreen,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  height: 1.1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
