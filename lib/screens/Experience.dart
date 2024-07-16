import 'package:atiq_cv/utils/constants.dart';
import 'package:flutter/material.dart';

class ExperienceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kTertiaryColor,
      // appBar: AppBar(title: Text('Experience')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ExperienceCard(
            company: 'CircleX',
            role: 'Flutter Developer',
            duration: 'Jan 2023 - May 2024',
            description:
                'Worked on various Flutter projects, solving different challenges. Worked on apps for gaming, fitness, Quotes, Islamic prayer times, and other apps for a large company based in Australia',
          ),
          ExperienceCard(
            company: 'Trellis Digital Agency',
            role: 'Flutter Developer',
            duration: 'Jun 2024 - Present',
            description:
                'Currently working on multiple Flutter projects. To mention a few: Fast Delivery Service, a trusted delivery service in the town. CV Builder App, which will allow layman users to build state of the art CVs at the tip of their finger',
          ),
        ],
      ),
    );
  }
}

class ExperienceCard extends StatelessWidget {
  final String company;
  final String role;
  final String duration;
  final String description;

  ExperienceCard(
      {required this.company,
      required this.role,
      required this.duration,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 6,
      child: ListTile(
        title: Text(
          '$role at $company',
          style: style4,
        ),
        subtitle: Text('$duration\n\n$description'),
      ),
    );
  }
}
