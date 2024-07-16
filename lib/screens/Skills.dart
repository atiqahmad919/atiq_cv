import 'package:flutter/material.dart';

import '../utils/constants.dart';

class SkillsScreen extends StatelessWidget {
  final List<String> skills = [
    'Flutter Development',
    'Dart Programming',
    'Firebase integration',
    'SQLite integration',
    'Custom Animations',
    'UI/UX Design',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kTertiaryColor,
      // appBar: AppBar(title: Text('Skills')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: skills.length,
        itemBuilder: (context, index) {
          return SkillCard(skill: skills[index]);
        },
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  final String skill;

  SkillCard({required this.skill});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 2,
      child: ListTile(
        title: Text(skill),
      ),
    );
  }
}
