import 'package:atiq_cv/utils/constants.dart';
import 'package:flutter/material.dart';

class EducationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kTertiaryColor,
      // appBar: AppBar(title: Text('Education')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          EducationCard(
            institution: 'Virtual University of Pakistan',
            degree: 'MS in Computer Science',
            duration: 'Graduated: Sep 2019',
            description:
                'Focused on software development, algorithms, and data structures.',
          ),
          EducationCard(
            institution: 'Google',
            degree: 'UX/UI Design',
            duration: 'Graduated: Aug 2023',
            description:
                'Focused on Foundations of User Experience (UX) Design, UX Design Process, Wireframes and LowFidelity Prototypes, UX Research and Test Early Concepts, Create High-Fidelity Designs, Prototypes in Figma, Build Dynamic User Interfaces (UI)',
          ),
        ],
      ),
    );
  }
}

class EducationCard extends StatelessWidget {
  final String institution;
  final String degree;
  final String duration;
  final String description;

  EducationCard(
      {required this.institution,
      required this.degree,
      required this.duration,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      child: ListTile(
        title: Text(
          '$degree at $institution',
          style: style4,
        ),
        subtitle: Text('$duration\n\n$description'),
      ),
    );
  }
}
